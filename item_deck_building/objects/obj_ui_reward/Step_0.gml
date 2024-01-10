/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
if((global.state == ST.REWARD or global.state == ST.UPGRADE) and item != -1 and !global.map_show)
{
	if(mouse_check_pressed_me(mb_left))
	{
		var check_type = 0;
		var dup_obj = noone;
		with(obj_item)
		{
			if(data.item_type != "normal" and data.item_type == other.item.item_type){check_type = 1;dup_obj = id;break;}
		}
		
		if(check_type == 1)
		{
			with(obj_popup)
			{
				if(text == string_replace(text_load(global.csv_system,"item_type_duplicated"),"item_name",dup_obj.data.name))
				{
					instance_destroy();
				}
			}
			var inst = instance_create_depth(1920/2,1080/2 - 100,depth-10,obj_popup);
			with(inst)
			{
				text = string_replace(text_load(global.csv_system,"item_type_duplicated"),"item_name",dup_obj.data.name)
				text_scale = 4;
				col1 = c_black;
				col2 = c_red;
			}
		}
		else if(global.state == ST.REWARD and global.inv_count <= instance_number(obj_item))
		{
			with(obj_popup)
			{
				if(text == text_load(global.csv_system,"not_enough_space"))
				{
					instance_destroy();
				}
			}
			var inst = instance_create_depth(1920/2,1080/2 - 100,depth-10,obj_popup);
			with(inst)
			{
				text = text_load(global.csv_system,"not_enough_space");
				text_scale = 4;
				col1 = c_black;
				col2 = c_red;
			}
		}
		else
		{
			if(global.state == ST.REWARD)
			{
				global.state = ST.NORMAL;
				global.st_prev = ST.NORMAL;
			
				audio_play_sound(snd_confirm_1,1,0);
			
				call_later(30,time_source_units_frames,function(){
					//goto_next_floor()
					instance_create_layer(0,0,"move_ef",obj_ef_map_reveal);
				});
			
				var incy = instance_create_layer(-500,-500,"Items",item.obj);
		
				//obj_camera_sys.screen_shake = 3;
		
				with(obj_ui_reward)
				{
					if(item != -1)
					{
						var incy = instance_create_depth(x,y,depth-1,obj_ef_reward_selected);
						if(other.id == id)
						{
							var incy2 = instance_create_depth(x,y,depth-2,obj_ef_reward_selected_2);
							incy2.spr = item.spr;
				
							incy.selected = 1;
							incy.white = 1;
						}
						else{incy.image_alpha = 1;}
						incy.spr = item.spr;
						incy.name = item.name;
						incy.state = item.state;
						incy.typist = scribble_typist();;
					}
				}
			}
			else
			{
				global.state = global.st_prev;
			
				audio_play_sound(snd_confirm_1,1,0);
			
				instance_destroy(obj_inv_upgrade.obj);
				var incy = instance_create_layer(-500,-500,"Items",item.obj);
		
				//obj_camera_sys.screen_shake = 3;
		
				with(obj_ui_reward)
				{
					if(item != -1)
					{
						var incy = instance_create_depth(x,y,depth-1,obj_ef_reward_selected);
						if(other.id == id)
						{
							var incy2 = instance_create_depth(x,y,depth-2,obj_ef_reward_selected_2);
							incy2.spr = item.spr;
				
							incy.selected = 1;
							incy.white = 1;
						}
						else{incy.image_alpha = 1;}
						incy.spr = item.spr;
						incy.name = item.name;
						incy.state = item.state;
						incy.typist = scribble_typist();;
					}
				}
			}
		}
	}
}








