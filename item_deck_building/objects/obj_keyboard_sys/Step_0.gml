/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if((mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face2) or gamepad_button_check_pressed(0,gp_face3) or gamepad_button_check_pressed(0,gp_face4)) and mouse_y < y)
{
	with(obj_keyboard_key){keyboard_key_clean()}
}

//key_press[ord("A")] = true;
//if(keyboard_check(ord("A"))){show_message($"{key_press[ord("A")]}  {key_press_prev[ord("A")]}")}

