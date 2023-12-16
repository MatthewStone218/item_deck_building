/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
if(global.state == ST.REWARD and item != -1)
{
	if(mouse_check_pressed_me(mb_left))
	{
		if(global.inv_count <= instance_number(obj_item))
		{
			with(obj_popup)
			{
				if(text == "There is not enough space for an item!\nPlease throw away an item or skip the reward...")
				{
					instance_destroy();
				}
			}
			var inst = instance_create_depth(1920/2,1080/2 - 100,depth-10,obj_popup);
			with(inst)
			{
				text = "There is not enough space for an item!\nPlease throw away an item or skip the reward...";
				text_scale = 4;
				col1 = c_black;
				col2 = c_red;
			}
		}
		else
		{
			global.state = ST.NORMAL;
			var incy = instance_create_layer(-500,-500,"Items",item.obj);
		
			obj_camera_sys.screen_shake = 3;
		
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








