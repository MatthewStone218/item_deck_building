// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function mouse_check_pressed_me(mb){
	return (mouse_check_button_pressed(mb) and collision_point(mouse_x,mouse_y,id,0,0));
}