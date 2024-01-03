 /// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(step == 0)
{
	image_alpha += 0.04;
	if(image_alpha > 1.2)
	{
		global.map_show = 1;
		global.state = ST.MOVING_EVENT;
		global.st_prev = ST.MOVING_EVENT;
		step = 1;
		
		with(all)
		{
			persistent = false;
		}
		persistent = 1;
		obj_system.persistent = 1;
		obj_data_events.persistent = 1;
		obj_data_items.persistent = 1;
		obj_inv_cell_item_drawer.persistent = 1;
		obj_inv.persistent = 1;
		obj_camera_sys.persistent = 1;
		obj_gamepad_sys.persistent = 1;
		with(obj_item){persistent = 1;}
		room_goto(rm_game_2);
		
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









