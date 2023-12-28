/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if((mouse_check_pressed_me(mb_left) or global.player_head != 6) and !instance_exists(obj_ef_game_start))
{
	if(global.state == ST.NORMAL)
	{
		instance_create_depth(0,0,-10,obj_ef_game_start);
		if !steam_get_achievement("ACHIEVEMENT_START"){steam_set_achievement("ACHIEVEMENT_START");}
	}
}	



















