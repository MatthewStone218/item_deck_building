/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_gem_hp;

item_func = function(hp_max)
{
	return hp_max+10;
}

item_push_function(global.item_effects.hp_max_sum,item_func);