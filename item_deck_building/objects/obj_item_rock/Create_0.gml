/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

data = obj_data_items.item_rock;

item_func1 = function(asp)
{
	return asp*0.5;
}
item_func2 = function(atk)
{
	return atk*2.25;
}

item_push_function(global.item_effects.asp_mult,item_func1)
item_push_function(global.item_effects.ap_mult,item_func2)