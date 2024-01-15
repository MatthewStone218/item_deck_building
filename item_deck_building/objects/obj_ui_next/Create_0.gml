/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

function switch_map()
{
	if(global.state == ST.NORMAL and can_press >= 1 and global.map_show == 0)
	{
		call_later(2,time_source_units_frames,function(){
			global.map_show = 1;
			obj_map.view_x = obj_map_ui_player.x - 700;
			audio_play_sound(snd_confirm_1,1,0)
		});
	}
}

can_press = 0;














