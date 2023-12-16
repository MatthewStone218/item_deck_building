/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(global.state != ST.DELETE)
{
	if(global.inv_count >= num)
	{
		if(mouse_check_button_released(mb_left) and collision_point(mouse_x,mouse_y,id,0,0))
		{
			var _cell = -1;
			with(obj_inv_cell){if(clicked == 1 and obj_inv.inv[num-1] != -1){_cell = id;break;}}
	
			if(_cell != -1)
			{
				var temp = obj_inv.inv[num-1];
				obj_inv.inv[num-1] = obj_inv.inv[_cell.num-1];
				obj_inv.inv[_cell.num-1] = temp;
			
				if(instance_exists(my_info))
				{
					instance_destroy(my_info);
					my_info = noone;
				}
			
				with(_cell)
				{
					if(instance_exists(my_info))
					{
						instance_destroy(my_info);
						my_info = noone;
					}
				}
			}
		}
	}

}








