/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE

if(mouse_check_button(mb_left) and collision_point(mouse_x,mouse_y,id,0,0))
{
	black = min(0.3,black+0.08);
}
else
{
	black = max(0,black-0.08);
	if(mouse_check_button_released(mb_left) and collision_point(mouse_x,mouse_y,id,0,0))
	{
		click();
	}
}

image_blend = make_color_rgb(255-255*black,255-255*black,255-255*black)