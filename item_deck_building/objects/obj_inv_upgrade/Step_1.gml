/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(global.state != ST.DELETE and global.state != ST.UPGRADE and global.state != ST.REWARD and  global.map_show == 0)
{
	if((mouse_check_button_released(mb_left) or gamepad_button_check_released(0,gp_face2) or gamepad_button_check_released(0,gp_face3) or gamepad_button_check_released(0,gp_face4)) and collision_point(mouse_x,mouse_y,id,0,0))
	{
		var _cell = -1;
		with(obj_inv_cell){if(clicked == 1 and obj_inv.inv[num-1] != -1){_cell = id;break;}}
		
		
		if(_cell != -1)
		{
			if(obj_inv.inv[_cell.num-1].data.up_point > global.upgrade_point)
			{
				with(obj_popup)
				{
					if(text == text_load(global.csv_system,"need_more_up"))
					{
						instance_destroy();
					}
				}
				var inst = instance_create_depth(1920/2,1080/2 - 100,depth-10,obj_popup);
				with(inst)
				{
					text = text_load(global.csv_system,"need_more_up");
					text_scale = 4;
					col1 = c_black;
					col2 = c_red;
				}
			}
			else if(_cell != -1)
			{
				var _items = obj_inv.inv[_cell.num-1].data.upgrade;
				instance_destroy(obj_upgrade_tuto);
				ini_open("save.ini");
				ini_write_real("upgrade_tuto","upgrade_tuto",0);
				ini_close();
				
				audio_play_sound(snd_upgrade_2,1,0)
				
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
						if(num == 0)
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
					with(obj_ui_reward)
					{
						if(num == 1)
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
					with(obj_ui_reward)
					{
						if(num == 2)
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
	}

}

if(mouse_check_me(mb_left))
{
	if(a == 0)
	{
		a = 1;
		audio_play_sound(snd_upgrade,1,0)
	}
}
else
{
	if(a == 1)
	{
		a = 0;
	}
}






