/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_pendant_throw_hp;

item_func = function(hp)
{
	return hp + 2;
}

item_push_function(global.item_effects.ranged_hp_sum,item_func)