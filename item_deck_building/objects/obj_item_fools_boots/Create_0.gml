/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니

event_inherited();

data = obj_data_items.item_fools_boots;

item_func = function()
{
	obj_player.xspd += obj_player.image_xscale*40*(player_get_spd()/obj_player.acc);
	with(obj_item_charge_shield)
	{
		colls = {};
	}
}

item_push_function(global.item_effects.near_act_start,item_func);

colls = {};