/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(sprite_index == spr_enemy_skeleton_warrior_attack or spr_enemy_skeleton_warrior_get_hit)
{
	if(delay == 0)
	{
		attacked = 0;
		sprite_index = spr_enemy_skeleton_warrior_attack;
		image_index = 0;
		delay = delay_max;
	}
	else
	{
		attacked = 0;
		sprite_index = spr_enemy_skeleton_warrior_idle;
		image_index = 0;
	}
}







