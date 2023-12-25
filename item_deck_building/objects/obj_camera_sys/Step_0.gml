/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(room == rm_game)
{
	screen_shake = max(0,screen_shake-1);

	if(global.map_show == 1)
	{
		camera_set_view_pos(view_camera[0],obj_map.view_x,0)
	}
	else
	{
		camera_set_view_pos(view_camera[0],random_range(-screen_shake,screen_shake),random_range(-screen_shake,screen_shake))
	}
}











