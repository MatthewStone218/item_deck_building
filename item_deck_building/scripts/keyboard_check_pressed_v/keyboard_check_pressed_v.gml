// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function keyboard_check_pressed_v(key){
	return (obj_keyboard_sys.key_press[key] and !obj_keyboard_sys.key_press_prev[key]);
}