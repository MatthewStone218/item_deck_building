/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

data = obj_data_items.item_wood_shield_3;

item_func = function(dmg)
{
	return max(dmg-4,0);
}

item_push_function(global.item_effects.def_sum,item_func)