/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니

event_inherited();

data = obj_data_items.item_cloak_jump_attack_start;

item_func = function()
{
	player_act_jump(player_get_enemy());
}

item_push_function(global.item_effects.near_act_start,item_func);