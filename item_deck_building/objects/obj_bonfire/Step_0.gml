/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(mouse_y < y and (mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face2) or gamepad_button_check_pressed(0,gp_face3) or gamepad_button_check_pressed(0,gp_face4)))
{
	if(clicked == 0)
	{
		audio_play_sound(snd_heal,1,0);
		player_heal(round(player_get_hp_max()/3));
		obj_ui_hp_1.ef_hit_white = 4;
		
		global.state = ST.NORMAL;
		global.st_prev = ST.NORMAL;
		
		map_unlock_next();
		clicked++;
	}
}













