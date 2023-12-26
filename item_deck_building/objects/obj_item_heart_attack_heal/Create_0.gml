/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_heart_attack_heal;

item_func = function()
{
	player_heal(2+(0.3*player_get_ap()));
}

item_push_function(global.item_effects.near_act_start,item_func);