/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(global.state != ST.DELETE and global.state != ST.UPGRADE and global.map_show == 0)
{
	if((mouse_check_button_released(mb_left) or gamepad_button_check_released(0,gp_face2) or gamepad_button_check_released(0,gp_face3) or gamepad_button_check_released(0,gp_face4)) and collision_point(mouse_x,mouse_y,id,0,0))
	{
		var _cell = -1;
		with(obj_inv_cell){if(clicked == 1 and obj_inv.inv[num-1] != -1){_cell = id;break;}}
	
		if(_cell != -1)
		{
			obj_ui_delete_item.item_num = _cell.num-1;
			global.st_prev = global.state;
			global.state = ST.DELETE;
		}
	}

}

if(global.map_show == 0)
{
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
}





