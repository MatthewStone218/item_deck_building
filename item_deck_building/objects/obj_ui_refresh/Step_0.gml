/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE

if(global.state == ST.REWARD or global.st_prev == ST.REWARD)
{
	image_index = mouse_check_me(mb_left);
	if(global.refresh_left <= 0){image_index = 1;}

	if((mouse_check_button_released(mb_left) or gamepad_button_check_released(0,gp_face2) or gamepad_button_check_released(0,gp_face3) or gamepad_button_check_released(0,gp_face4)) and collision_point(mouse_x,mouse_y,id,0,0) and global.refresh_left > 0)
	{
		global.refresh_left--;
		set_reward(global.current_reward_level)
	}
}








