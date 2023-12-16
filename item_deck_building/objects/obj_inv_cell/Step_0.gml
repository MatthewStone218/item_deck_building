/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(global.inv_count >= num)
{
	if(!mouse_check_button(mb_left))
	{
		clicked = 0;
		drawer.depth = depth-10;
	}
	else
	{
		if(mouse_check_pressed_me(mb_left))
		{
			var _check = 0;
			with(obj_inv_cell){if(clicked == 1){_check = 1;break;}}
		
			if(_check == 0){clicked = 1;}
		}
	}

	if(clicked){drawer.depth = depth-20;}
}










