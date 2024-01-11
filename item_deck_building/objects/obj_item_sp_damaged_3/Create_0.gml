/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_sp_damaged_3;

pow = 0;

item_func_1 = function(dmg)
{
	with(obj_enemy)
	{
		player_attack(player_get_sp()*0.5,id);
	}
	
	return dmg;
}

item_push_function(global.item_effects.get_hit_post,item_func_1);