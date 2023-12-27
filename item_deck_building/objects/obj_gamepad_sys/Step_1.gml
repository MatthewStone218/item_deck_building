/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(gamepad_is_connected(0))
{
	var _x = gamepad_axis_value(0,gp_axislh)*13;
	var _y = gamepad_axis_value(0,gp_axislv)*13;
	if(point_distance(0,0,_x,_y) > 5)
	{
		window_mouse_set(window_mouse_get_x()+_x,window_mouse_get_y()+_y)
	}
}


















