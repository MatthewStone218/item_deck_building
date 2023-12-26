/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_hamma;

item_func = function(ap)
{
	return ap+player_get_hp_max()*0.1;
}

item_push_function(global.item_effects.ap_sum,item_func);