/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(keyboard_check_pressed(ord("M")))
{
	if(global.state == ST.NORMAL or global.state == ST.COMBET or global.state == ST.REWARD)
	{
		global.map_show = 1-global.map_show;
	}
	

}

if(global.map_show == 1)
{
	if(mouse_check_button_pressed(mb_left))
	{
		clicked = 1;
	}
	
	if(mouse_check_button(mb_left) and clicked)
	{
		xspd = device_mouse_x_to_gui(0)-mouse_x_prev;
	}
	else
	{
		clicked = 0;
		xspd /= 1.2;
	}

	view_x -= xspd;

	if(view_x < 0){view_x = 0;xspd = 0;}
	if(view_x+CM_W > sprite_width){view_x = sprite_width-CM_W;xspd = 0;}


	mouse_x_prev = device_mouse_x_to_gui(0);
}
else
{
	xspd = 0;
	clicked = 0;
}