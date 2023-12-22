/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

hp = 0;

for(var i = 0; i < instance_number(obj_enemy); i++)
{
	var incy = instance_find(obj_enemy,i);
	hp += incy.hp;
}

ef_hit /= 1.2;
ef_hit_white = max(0,ef_hit_white-1.5);

if(sign(hp_spd) != hp-hp_yellow){hp_spd = 0;}

hp_spd += sign(hp-hp_yellow)*0.13;

if(abs(hp_spd) > hp_spd_max){hp_spd = sign(hp_spd)*hp_spd_max;}
if(abs(hp-hp_yellow) < hp_spd){hp_spd = 0;hp_yellow = hp}

hp_yellow += hp_spd;

if(collision_point(mouse_x,mouse_y,id,0,0) and visible == 1 and image_alpha == 1) and (global.state == ST.COMBET or global.st_prev == ST.COMBET or global.state == ST.MOVING_EVENT)
{
	obj_info.str = text_load(global.csv_system,"hp")+$" {hp} / {hp_max}";
	obj_info.x = mouse_x;
	obj_info.y = 255;
}






