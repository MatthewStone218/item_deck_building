/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(mouse_check_pressed_me(mb_left))
{
	global.language = lang;
	with(obj_flag){image_blend = c_gray;}
	image_blend = c_white;
	with(obj_data_items){event_perform(ev_create,0)}
}















