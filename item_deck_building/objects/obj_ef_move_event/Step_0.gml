/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(step == 0)
{
	image_alpha += 0.04;
	if(image_alpha > 1.5)
	{
		step = 1;
		room_goto(rm_game);
		//show_message(type)
		event_array_create(type);
		var func = event_array_pick();
		call_later(1,time_source_units_frames,func);
		global.map_show = 0;
		global.can_goto_next_event = 0;
	}
}
else
{
	image_alpha -= 0.04;
	if(image_alpha < 0)
	{
		instance_destroy();
	}
}









