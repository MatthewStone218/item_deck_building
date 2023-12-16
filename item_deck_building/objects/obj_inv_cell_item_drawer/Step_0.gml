/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


if(global.state != ST.DELETE)
{
	x_last = mouse_x;
	y_last = mouse_y;
	if(collision_point(mouse_x,mouse_y,obj_inv_delete,0,0) and mouse_check_button(mb_left))
	{
		scale -= 0.1;
		if(scale < 0.3){scale = 0.3;}
	}
	else
	{
		scale += 0.1;
		if(scale > 1){scale = 1;}
	}
}



