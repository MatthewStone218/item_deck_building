/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

hp_max = 500;
hp = hp_max;

idle_spr = spr_enemy_dragon_idle;
run_spr = spr_enemy_dragon_run;
atk_spr = spr_enemy_dragon_attack;
get_hit_spr = spr_enemy_dragon_get_hit;
die_spr = spr_enemy_dragon_die;

xspd = 0;
yspd = 0;
grv = 0.7;
xspd_knock = 0;
hit = 0;
attacked = 0;

delay_max = 180;
delay = 0;

function get_hit(dmg)
{
	hp -= dmg;
	hit = 8;
	xspd_knock += sign(x-obj_player.x)*5;
	
	if(sprite_index != atk_spr)
	{
		sprite_index = get_hit_spr;
		image_index = 0;
	}
}




