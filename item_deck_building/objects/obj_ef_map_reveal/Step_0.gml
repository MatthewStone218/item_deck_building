/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(step == 0)
{
	image_alpha += 0.08;
	if(image_alpha > 1.2)
	{
		map_unlock_next();
		obj_map.view_x = obj_map_ui_player.x - 700;
		step = 1;
	}
}
else
{
	image_alpha -= 0.08;
	if(image_alpha < 0)
	{
		instance_destroy();
	}
}









