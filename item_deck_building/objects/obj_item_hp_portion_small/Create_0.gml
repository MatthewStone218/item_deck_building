/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_hp_portion_small;

item_func = function()
{
	player_heal(2);
}

item_push_function(global.item_effects.stage_end,item_func);