/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_ring_heal;

item_func = function(heal)
{
	return heal*1.15;
}

item_push_function(global.item_effects.heal_mult,item_func);