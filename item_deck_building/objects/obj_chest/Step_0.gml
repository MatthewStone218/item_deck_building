/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(mouse_y < y and mouse_check_button_pressed(mb_left))
{
	if(clicked == 0)
	{
		image_speed = 1;
		audio_play_sound(snd_chest_open,1,0);
		
		call_later(60,time_source_units_frames,
		function(){
			set_reward_first(level);
		});
	}
	clicked++;
}













