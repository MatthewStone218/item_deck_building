/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_black_fruit;

item_func = function()
{
	player_get_hit(1,noone);
}

item_push_function(global.item_effects.near_act_start,item_func);