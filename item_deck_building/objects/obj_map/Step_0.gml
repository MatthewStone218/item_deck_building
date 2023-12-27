/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(global.map_show == 1)
{
	if((mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face2) or gamepad_button_check_pressed(0,gp_face3) or gamepad_button_check_pressed(0,gp_face4)))
	{
		clicked = 1;
	}
	
	if((mouse_check_button(mb_left) or gamepad_button_check(0,gp_face2) or gamepad_button_check(0,gp_face3) or gamepad_button_check(0,gp_face4)) and clicked)
	{
		xspd = device_mouse_x_to_gui(0)-mouse_x_prev;
	}
	else
	{
		clicked = 0;
		xspd /= 1.2;
	}

	view_x -= xspd;
	if(gamepad_is_connected(0))
	{
		if(gamepad_button_check(0,gp_shoulderl) or gamepad_button_check(0,gp_shoulderlb)){view_x -= 15;}
		if(gamepad_button_check(0,gp_shoulderr) or gamepad_button_check(0,gp_shoulderrb)){view_x += 15;}
		var _x = gamepad_axis_value(0,gp_axisrh)*13;
		if(abs(_x) > 0.3){view_x += _x;}
	}


	if(view_x < 0){view_x = 0;xspd = 0;}
	if(view_x+CM_W > sprite_width){view_x = sprite_width-CM_W;xspd = 0;}


	mouse_x_prev = device_mouse_x_to_gui(0);
}
else
{
	xspd = 0;
	clicked = 0;
}