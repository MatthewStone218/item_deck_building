/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE

if(global.state == ST.UPGRADE)
{
	image_index = mouse_check_me(mb_left);

	if((mouse_check_button_released(mb_left) or gamepad_button_check_released(0,gp_face2) or gamepad_button_check_released(0,gp_face3) or gamepad_button_check_released(0,gp_face4)) and collision_point(mouse_x,mouse_y,id,0,0))
	{
		var function func()
		{
			global.state = global.st_prev;
			audio_play_sound(snd_confirm_2,1,0);
		
			with(obj_ui_reward)
			{
				if(item != -1)
				{
					var incy = instance_create_depth(x,y,depth-1,obj_ef_reward_selected);
					incy.image_alpha = 1;
					incy.spr = item.spr;
					incy.name = item.name;
					incy.state = item.state;
					incy.typist = scribble_typist();;
				}
			}
		}
		call_later(1,time_source_units_frames,func)
	}
}








