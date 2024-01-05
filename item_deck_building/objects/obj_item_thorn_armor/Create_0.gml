/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

data = obj_data_items.item_thorn_armor;

item_func = function(dmg,enemy)
{
	if(instance_exists(enemy))
	{
		player_attack(player_get_hp_max()*0.12,enemy)
		return dmg;
	}
}

item_push_function(global.item_effects.get_hit,item_func)