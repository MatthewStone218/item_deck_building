/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(instance_exists(obj_item_broken_heart_2))
{
	var incy = instance_find(obj_item_broken_heart_2,0);
	instance_destroy(incy);
	instance_destroy();
	instance_create_depth(0,0,0,obj_item_heart);
}
















