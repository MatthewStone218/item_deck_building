/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

data = obj_data_items.item_iron_shield;

item_func = function(dmg)
{
	return dmg*0.85;
}

item_push_function(global.item_effects.def_mult,item_func)