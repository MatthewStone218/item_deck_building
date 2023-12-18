/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(point_distance(x,y,obj_map.icon_now.x,obj_map.icon_now.y) < 5)
{
	x = obj_map.icon_now.x;
	y = obj_map.icon_now.y;
}
else
{
	x += lengthdir_x(5,point_direction(x,y,obj_map.icon_now.x,obj_map.icon_now.y));
	y += lengthdir_y(5,point_direction(x,y,obj_map.icon_now.x,obj_map.icon_now.y));
}











