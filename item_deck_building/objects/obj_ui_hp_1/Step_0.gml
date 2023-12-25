/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

ef_hit /= 1.2;
ef_hit_white = max(0,ef_hit_white-1.5);

if(sign(hp_spd) != obj.hp-hp_yellow){hp_spd = 0;}

hp_spd += sign(obj.hp-hp_yellow)*0.13*(obj.hp_max/20);

if(abs(hp_spd) > hp_spd_max*(obj.hp_max/20)){hp_spd = sign(hp_spd)*hp_spd_max*(obj.hp_max/20);}
if(abs(obj.hp-hp_yellow) < hp_spd){hp_spd = 0;hp_yellow = obj.hp}

hp_yellow += hp_spd;

if(collision_point(mouse_x,mouse_y,id,0,0) and visible == 1 and image_alpha == 1)
{
	obj_info.str = text_load(global.csv_system,"hp")+$" {string_format(obj.hp,1,0)} / {string_format(player_get_hp_max(),1,0)}";
	obj_info.x = mouse_x;
	obj_info.y = 255;
}







