/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


if(global.map_show == 0)
{
	layer_set_visible(layer_get_id("map_tile"),0);
	layer_set_visible(layer_get_id("map_tile2"),0);
	layer_set_visible(layer_get_id("map_tile3"),0);
}
else
{
	layer_set_visible(layer_get_id("map_tile"),1);
	layer_set_visible(layer_get_id("map_tile2"),1);
	layer_set_visible(layer_get_id("map_tile3"),1);
}
















