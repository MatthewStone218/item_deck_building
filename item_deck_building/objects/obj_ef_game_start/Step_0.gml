/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(step == 0)
{
	image_alpha += 0.04;
	if(image_alpha > 1.2)
	{
		room_goto(rm_game);
		global.map_show = 1;
		global.state = ST.MOVING_EVENT;
		global.st_prev = ST.MOVING_EVENT;
		step = 1;
		call_later(120,time_source_units_frames,function()
		{
			with(obj_map.icon_now)
			{
				with(obj_ui_map_icon)
				{
					can_go = 0;
				}
				global.can_goto_next_event = 0;
	
				global.state = ST.MOVING_EVENT;
				global.st_prev = ST.MOVING_EVENT;

				instance_create_layer(0,0,"move_ef",obj_ef_move_event,{type: ev_type});
			}
		});
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









