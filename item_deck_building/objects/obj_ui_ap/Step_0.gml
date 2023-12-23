/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

str = text_load(global.csv_system,"ap")+$" {string_format(player_get_ap(),1,0)}";

if(collision_point(mouse_x,mouse_y,id,0,0))
{
	obj_info.str = text_load(global.csv_system,"ap_info");
	obj_info.x = mouse_x;
	obj_info.y = 600;
}














