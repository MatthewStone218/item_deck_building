/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(mouse_y < y and mouse_check_button_pressed(mb_left))
{
	if(clicked == 0)
	{
		audio_play_sound(snd_heal,1,0);
		player_heal(round(player_get_hp_max()/3));
		obj_ui_hp_1.ef_hit_white = 4;
	}
	else if(clicked == 1)
	{
		global.state = ST.NORMAL;
		global.st_prev = ST.NORMAL;
		call_later(30,time_source_units_frames,function(){
			instance_create_layer(0,0,"move_ef",obj_ef_map_reveal);
		});
	}
	clicked++;
}













