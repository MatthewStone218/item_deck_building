/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(room != rm_game or global.map_show == 0) and (mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face2) or gamepad_button_check_pressed(0,gp_face3) or gamepad_button_check_pressed(0,gp_face4)) and collision_point(mouse_x,mouse_y,id,0,0)
{
	game_restart();
}











