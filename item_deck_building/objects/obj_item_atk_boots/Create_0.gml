/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

data = obj_data_items.item_atk_boots;


item_func = function(spd)
{
	return spd*1.5;
}

item_func2 = function(atk)
{
	with(obj_player)
	{
		return atk+(20*(1-(player_get_spd()/acc)));
	}
}

item_push_function(global.item_effects.spd_mult,item_func)
item_push_function(global.item_effects.ap_sum,item_func)