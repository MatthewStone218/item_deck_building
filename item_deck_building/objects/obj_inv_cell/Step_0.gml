/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(global.state != ST.DELETE)
{
	if(global.inv_count >= num)
	{
		if(!mouse_check_button(mb_left))
		{
			clicked = 0;
			drawer.depth = depth-10;
		}
		else
		{
			if(mouse_check_pressed_me(mb_left))
			{
				var _check = 0;
				with(obj_inv_cell){if(clicked == 1){_check = 1;break;}}
			
				if(_check == 0){clicked = 1;}
			}
		}

		if(clicked){drawer.depth = depth-20;}
	
		if(collision_point(mouse_x,mouse_y,id,0,0))
		{
			var _check = 0;
			with(obj_inv_cell){if(clicked == 1 and obj_inv.inv[num-1] != -1){_check = 1;}}
		
			if(!instance_exists(obj_ui_item_info) and obj_inv.inv[num-1] != -1 and _check == 0)
			{
				my_info = instance_create_depth(global.state == ST.REWARD ? x : 300,500,depth-500,obj_ui_item_info);
				my_info.item = obj_inv.inv[num-1].data;
			}
		}
		else if(instance_exists(my_info))
		{
			instance_destroy(my_info);
			my_info = noone;
		}
	}
}









