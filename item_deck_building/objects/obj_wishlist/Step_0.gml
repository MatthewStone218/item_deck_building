/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face2) or gamepad_button_check_pressed(0,gp_face3) or gamepad_button_check_pressed(0,gp_face4))
{
	clipboard_set_text("https://discord.gg/UVnpFfy9nG");
	url_open("https://discord.gg/UVnpFfy9nG");

	var inst = instance_create_depth(1920/2,1080/2 - 100,depth-10,obj_popup);
	with(inst)
	{
		text = text_load(global.csv_system,"url_duplicated");
		text_scale = 4;
		col1 = c_black;
		col2 = c_white;
	}
}











