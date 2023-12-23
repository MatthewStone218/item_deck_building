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
			global.state = ST.REWARD;
			global.st_prev = ST.REWARD;
			with(obj_ui_reward)
			{
				typist = scribble_typist();
				typist.in(0.8, 60);
				typist.ease(SCRIBBLE_EASE.ELASTIC, 0, -5, 1, 1, 0, 0.1);

				item = -1;
			}
		
			item_array_create(level);
		
			var _items = [item_array_pick(),item_array_pick(),item_array_pick()];
		
			var _num = 0;
			with(obj_ui_reward)
			{
				item = _items[_num];
				_num++;
			}
		});
	}
	clicked++;
}













