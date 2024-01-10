/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(global.state != ST.DELETE and global.state != ST.UPGRADE and  global.map_show == 0)
{
	if((mouse_check_button_released(mb_left) or gamepad_button_check_released(0,gp_face2) or gamepad_button_check_released(0,gp_face3) or gamepad_button_check_released(0,gp_face4)) and collision_point(mouse_x,mouse_y,id,0,0))
	{
		var _cell = -1;
		with(obj_inv_cell){if(clicked == 1 and obj_inv.inv[num-1] != -1){_cell = id;break;}}
		
		if(_cell != -1)
		{
			var _items = obj_inv.inv[_cell.num-1].data.upgrade;
			
			if(_items != -1)
			{
				obj = obj_inv.inv[_cell.num-1];
				global.st_prev = global.state;
				global.state = ST.UPGRADE;
				audio_play_sound(snd_confirm_2,1,0)
			
				with(obj_ui_reward)
				{
					typist = scribble_typist();
					typist.in(0.8, 60);
					typist.ease(SCRIBBLE_EASE.ELASTIC, 0, -5, 1, 1, 0, 0.1);

					item = -1;
				}
		
				var _num = 0;
				with(obj_ui_reward)
				{
					if(_num+1 <= array_length(_items))
					{
						item = variable_struct_get(obj_data_items,_items[_num]);
						_num++;
					}
					else
					{
						break;
					}
				}
			}
		}
	}

}

if(mouse_check_me(mb_left))
{
	if(a == 0)
	{
		a = 1;
		audio_play_sound(snd_trashcan_1,1,0);
	}
}
else
{
	if(a == 1)
	{
		a = 0;
		audio_play_sound(snd_trashcan_2,1,0);
	}
}






