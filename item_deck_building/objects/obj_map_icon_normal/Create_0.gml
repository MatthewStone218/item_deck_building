/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var obj = obj_ui_map_icon_enemy;
var ran = random(100);

if(ran < 50)
{
	obj = obj_ui_map_icon_enemy;
}
else if(ran < 95)
{
	obj = obj_ui_map_icon_random;
}
else
{
	obj = obj_ui_map_icon_item;
}

var incy = instance_create_depth(x,y,depth,obj);
with(incy)
{
	next_icon = other.next_icon;
}





