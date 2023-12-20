/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(sprite_index == spr_enemy_slime_attack or sprite_index == spr_enemy_slime_get_hit)
{
	image_xscale = sign(obj_player.x-x);
	if(image_xscale == 0){image_xscale = 1;}
	if(delay == 0 and place_meeting_mask(x-sign(obj_player.x-x)*20,y,obj_player,spr_enemy_slime_attack))
	{
		attacked = 0;
		sprite_index = spr_enemy_slime_attack;
		image_index = 0;
		delay = delay_max;
	}
	else
	{
		attacked = 0;
		sprite_index = spr_enemy_slime_idle;
		image_index = 0;
	}
}



