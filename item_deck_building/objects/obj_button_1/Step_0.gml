/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE

image_xscale = image_xscale_start;
image_yscale = image_yscale_start;

if((mouse_check_button(mb_left) or gamepad_button_check(0,gp_face2) or gamepad_button_check(0,gp_face3) or gamepad_button_check(0,gp_face4)) and collision_point(mouse_x,mouse_y,id,0,0))
{
	image_scale -= 0.07;
	if(image_scale < 0.8){image_scale = 0.8;}
}
else
{
	image_scale += (1-image_scale)/5;
	if((mouse_check_button_released(mb_left) or gamepad_button_check_released(0,gp_face2) or gamepad_button_check_released(0,gp_face3) or gamepad_button_check_released(0,gp_face4)) and collision_point(mouse_x,mouse_y,id,0,0))
	{
		click();
	}
}

image_xscale = image_xscale_start*image_scale;
image_yscale = image_yscale_start*image_scale;