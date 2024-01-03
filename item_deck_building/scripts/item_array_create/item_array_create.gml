// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function item_array_create(chest_level = 1){
	_item_array = [];
	var count = 0;
	
	if!(reward_duplicated(obj_data_items.item_wizzard_hat))
	{
		_item_array[count,0] = obj_data_items.item_wizzard_hat;
		_item_array[count,1] = ITEM_RATE_LEGEND;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_old_boots))
	{
		_item_array[count,0] = obj_data_items.item_old_boots;
		_item_array[count,1] = ITEM_RATE_NORMAL;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_pendant_asp))
	{
		_item_array[count,0] = obj_data_items.item_pendant_asp;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_blood))
	{
		_item_array[count,0] = obj_data_items.item_blood;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_hp_portion_small))
	{
		_item_array[count,0] = obj_data_items.item_hp_portion_small;
		_item_array[count,1] = 0.2*ITEM_RATE_NORMAL;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_hp_portion_mid))
	{
		_item_array[count,0] = obj_data_items.item_hp_portion_mid;
		_item_array[count,1] = 0.2*ITEM_RATE_RARE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_hp_portion_big))
	{
		_item_array[count,0] = obj_data_items.item_hp_portion_big;
		_item_array[count,1] = 0.2*ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_purple_portion_small))
	{
		_item_array[count,0] = obj_data_items.item_purple_portion_small;
		_item_array[count,1] = 0.2*ITEM_RATE_NORMAL;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_purple_portion_mid))
	{
		_item_array[count,0] = obj_data_items.item_purple_portion_mid;
		_item_array[count,1] = 0.2*ITEM_RATE_RARE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_purple_portion_big))
	{
		_item_array[count,0] = obj_data_items.item_purple_portion_big;
		_item_array[count,1] = 0.2*ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_magic_eye))
	{
		_item_array[count,0] = obj_data_items.item_magic_eye;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_closed_eye))
	{
		_item_array[count,0] = obj_data_items.item_closed_eye;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_cloak_jump_attack_start))
	{
		_item_array[count,0] = obj_data_items.item_cloak_jump_attack_start;
		_item_array[count,1] = ITEM_RATE_NORMAL;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_ring_asp))
	{
		_item_array[count,0] = obj_data_items.item_ring_asp;
		_item_array[count,1] = ITEM_RATE_RARE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_mango_asp))
	{
		_item_array[count,0] = obj_data_items.item_mango_asp;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	
	if!(reward_duplicated(obj_data_items.item_gem_hp))
	{
		_item_array[count,0] = obj_data_items.item_gem_hp;
		_item_array[count,1] = ITEM_RATE_NORMAL;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_ring_hp))
	{
		_item_array[count,0] = obj_data_items.item_ring_hp;
		_item_array[count,1] = ITEM_RATE_RARE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_pendant_hp))
	{
		_item_array[count,0] = obj_data_items.item_pendant_hp;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_jewel_hp))
	{
		_item_array[count,0] = obj_data_items.item_jewel_hp;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_earring_heal))
	{
		_item_array[count,0] = obj_data_items.item_earring_heal;
		_item_array[count,1] = ITEM_RATE_RARE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_ring_heal))
	{
		_item_array[count,0] = obj_data_items.item_ring_heal;
		_item_array[count,1] = ITEM_RATE_RARE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_heart_heal))
	{
		_item_array[count,0] = obj_data_items.item_heart_heal;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_broken_heart_1))
	{
		_item_array[count,0] = obj_data_items.item_broken_heart_1;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_broken_heart_2))
	{
		_item_array[count,0] = obj_data_items.item_broken_heart_2;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_feather_heal))
	{
		_item_array[count,0] = obj_data_items.item_feather_heal;
		_item_array[count,1] = ITEM_RATE_RARE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_hair_heal))
	{
		_item_array[count,0] = obj_data_items.item_hair_heal;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_heart_attack_heal))
	{
		_item_array[count,0] = obj_data_items.item_heart_attack_heal;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_hamma))
	{
		_item_array[count,0] = obj_data_items.item_hamma;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_feather_near_start))
	{
		_item_array[count,0] = obj_data_items.item_feather_near_start;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_feather_far_start))
	{
		_item_array[count,0] = obj_data_items.item_feather_far_start;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_feather_damaged))
	{
		_item_array[count,0] = obj_data_items.item_feather_damaged;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_meteor))
	{
		_item_array[count,0] = obj_data_items.item_meteor;
		_item_array[count,1] = ITEM_RATE_LEGEND;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_windsoul))
	{
		_item_array[count,0] = obj_data_items.item_windsoul;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_sp_damaged))
	{
		_item_array[count,0] = obj_data_items.item_sp_damaged;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_ignore_damage_5sec))
	{
		_item_array[count,0] = obj_data_items.item_ignore_damage_5sec;
		_item_array[count,1] = ITEM_RATE_LEGEND;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_wizzard_portion))
	{
		_item_array[count,0] = obj_data_items.item_wizzard_portion;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_purple_soul))
	{
		_item_array[count,0] = obj_data_items.item_purple_soul;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_shoes_land))
	{
		_item_array[count,0] = obj_data_items.item_shoes_land;
		_item_array[count,1] = ITEM_RATE_LEGEND;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_jump_def))
	{
		_item_array[count,0] = obj_data_items.item_jump_def;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_jump_double))
	{
		_item_array[count,0] = obj_data_items.item_jump_double;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_thorn_armor))
	{
		_item_array[count,0] = obj_data_items.item_thorn_armor;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_iron_shield))
	{
		_item_array[count,0] = obj_data_items.item_iron_shield;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_wood_shield))
	{
		_item_array[count,0] = obj_data_items.item_wood_shield;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_rock))
	{
		_item_array[count,0] = obj_data_items.item_rock;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_fur))
	{
		_item_array[count,0] = obj_data_items.item_fur;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_gold_eye))
	{
		_item_array[count,0] = obj_data_items.item_gold_eye;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_throwing_ax))
	{
		_item_array[count,0] = obj_data_items.item_throwing_ax;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_sword_atk_1))
	{
		_item_array[count,0] = obj_data_items.item_sword_atk_1;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_red_horns))
	{
		_item_array[count,0] = obj_data_items.item_red_horns;
		_item_array[count,1] = ITEM_RATE_UNIQUE;
		_item_array[count,2] = 0;
		count++;
	}
	
	
	return count;//길이 반환.
}