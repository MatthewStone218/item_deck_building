/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


item_wizzard_hat = 
{
	spr: spr_item_wizzard_hat,
	name: text_load(global.csv_items,"wizzard_hat_name"),
	state:text_load(global.csv_items,"wizzard_hat_state"),
	obj: obj_item_wizzard_hat,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}

item_old_boots = 
{
	spr: spr_item_old_boots,
	name: text_load(global.csv_items,"old_boots_name"),
	state: text_load(global.csv_items,"old_boots_state"),
	obj: obj_item_old_boots,
	up_point: 2,
	upgrade : ["item_spd_boots","item_atk_boots"],
	item_type: "normal"
}

item_spd_boots = 
{
	spr: spr_item_spd_boots,
	name: text_load(global.csv_items,"spd_boots_name"),
	state: text_load(global.csv_items,"spd_boots_state"),
	obj: obj_item_spd_boots,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}

item_atk_boots = 
{
	spr: spr_item_atk_boots,
	name: text_load(global.csv_items,"atk_boots_name"),
	state: text_load(global.csv_items,"atk_boots_state"),
	obj: obj_item_atk_boots,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}

item_pendant_asp = 
{
	spr: spr_item_pendant_asp,
	name: text_load(global.csv_items,"pendant_asp_name"),
	state: text_load(global.csv_items,"pendant_asp_state"),
	obj: obj_item_pendant_asp,
	up_point: 2,
	upgrade: ["item_mango_asp"],
	item_type: "normal"
}

item_blood = 
{
	spr: spr_item_blood,
	name: text_load(global.csv_items,"blood_name"),
	state: text_load(global.csv_items,"blood_state"),
	obj: obj_item_blood,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}

item_hp_portion_small =
{
	spr: spr_item_hp_portion_small,
	name: text_load(global.csv_items,"hp_portion_small_name"),
	state: text_load(global.csv_items,"hp_portion_small_state"),
	obj: obj_item_hp_portion_small,
	up_point: 1,
	upgrade: ["item_hp_portion_mid"],
	item_type: "normal"
}

item_hp_portion_mid =
{
	spr: spr_item_hp_portion_mid,
	name: text_load(global.csv_items,"hp_portion_mid_name"),
	state: text_load(global.csv_items,"hp_portion_mid_state"),
	obj: obj_item_hp_portion_mid,
	up_point: 2,
	upgrade: ["item_hp_portion_big"],
	item_type: "normal"
}

item_hp_portion_big =
{
	spr: spr_item_hp_portion_big,
	name: text_load(global.csv_items,"hp_portion_big_name"),
	state: text_load(global.csv_items,"hp_portion_big_state"),
	obj: obj_item_hp_portion_big,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}

item_purple_portion_small =
{
	spr: spr_item_purple_portion_small,
	name: text_load(global.csv_items,"purple_portion_small_name"),
	state: text_load(global.csv_items,"purple_portion_small_state"),
	obj: obj_item_purple_portion_small,
	up_point: 1,
	upgrade: ["item_purple_portion_mid"],
	item_type: "normal"
}

item_purple_portion_mid =
{
	spr: spr_item_purple_portion_mid,
	name: text_load(global.csv_items,"purple_portion_mid_name"),
	state: text_load(global.csv_items,"purple_portion_mid_state"),
	obj: obj_item_purple_portion_mid,
	up_point: 2,
	upgrade: ["item_purple_portion_big"],
	item_type: "normal"
}

item_purple_portion_big =
{
	spr: spr_item_purple_portion_big,
	name: text_load(global.csv_items,"purple_portion_big_name"),
	state: text_load(global.csv_items,"purple_portion_big_state"),
	obj: obj_item_purple_portion_big,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}

item_magic_eye =
{
	spr: spr_item_magic_eye,
	name: text_load(global.csv_items,"magic_eye_name"),
	state: text_load(global.csv_items,"magic_eye_state"),
	obj: obj_item_magic_eye,
	up_point: -1,
	upgrade : -1,
	item_type: "setting_target"
}

item_closed_eye =
{
	spr: spr_item_closed_eye,
	name: text_load(global.csv_items,"closed_eye_name"),
	state: text_load(global.csv_items,"closed_eye_state"),
	obj: obj_item_closed_eye,
	up_point: -1,
	upgrade : -1,
	item_type: "setting_act_type"
}

item_cloak_jump_attack_start =
{
	spr: spr_item_cloak_jump_start_attack,
	name: text_load(global.csv_items,"cloak_jump_attack_start_name"),
	state: text_load(global.csv_items,"cloak_jump_attack_start_state"),
	obj: obj_item_cloak_jump_attack_start,
	up_point: -1,
	upgrade : -1,
	item_type: "cloak_jump_attack_start"
}


item_ring_asp =
{
	spr: spr_item_ring_asp,
	name: text_load(global.csv_items,"ring_asp_name"),
	state: text_load(global.csv_items,"ring_asp_state"),
	obj: obj_item_ring_asp,
	up_point: 1,
	upgrade: ["item_pendant_asp"],
	item_type: "normal"
}


item_mango_asp =
{
	spr: spr_item_mango_asp,
	name: text_load(global.csv_items,"mango_asp_name"),
	state: text_load(global.csv_items,"mango_asp_state"),
	obj: obj_item_mango_asp,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_gem_hp =
{
	spr: spr_item_gem_hp,
	name: text_load(global.csv_items,"gem_hp_name"),
	state: text_load(global.csv_items,"gem_hp_state"),
	obj: obj_item_gem_hp,
	up_point: 1,
	upgrade: ["item_ring_hp"],
	item_type: "normal"
}


item_ring_hp =
{
	spr: spr_item_ring_hp,
	name: text_load(global.csv_items,"ring_hp_name"),
	state: text_load(global.csv_items,"ring_hp_state"),
	obj: obj_item_ring_hp,
	up_point: 2,
	upgrade: ["item_pendant_hp"],
	item_type: "normal"
}


item_pendant_hp =
{
	spr: spr_item_pendant_hp,
	name: text_load(global.csv_items,"pendant_hp_name"),
	state: text_load(global.csv_items,"pendant_hp_state"),
	obj: obj_item_pendant_hp,
	up_point: 2,
	upgrade: ["item_jewel_hp"],
	item_type: "normal"
}


item_jewel_hp =
{
	spr: spr_item_jewel_hp,
	name: text_load(global.csv_items,"jewel_hp_name"),
	state: text_load(global.csv_items,"jewel_hp_state"),
	obj: obj_item_jewel_hp,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_earring_heal =
{
	spr: spr_item_earring_heal,
	name: text_load(global.csv_items,"earring_heal_name"),
	state: text_load(global.csv_items,"earring_heal_state"),
	obj: obj_item_earring_heal,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_ring_heal =
{
	spr: spr_item_ring_heal,
	name: text_load(global.csv_items,"ring_heal_name"),
	state: text_load(global.csv_items,"ring_heal_state"),
	obj: obj_item_ring_heal,
	up_point: 1,
	upgrade: ["item_heart_heal"],
	item_type: "normal"
}


item_heart_heal =
{
	spr: spr_item_heart_heal,
	name: text_load(global.csv_items,"heart_heal_name"),
	state: text_load(global.csv_items,"heart_heal_state"),
	obj: obj_item_heart_heal,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_broken_heart_1 =
{
	spr: spr_item_broken_heart_1,
	name: text_load(global.csv_items,"broken_heart_name"),
	state: text_load(global.csv_items,"broken_heart_state"),
	obj: obj_item_broken_heart_1,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_broken_heart_2 =
{
	spr: spr_item_broken_heart_2,
	name: text_load(global.csv_items,"broken_heart_name"),
	state: text_load(global.csv_items,"broken_heart_state"),
	obj: obj_item_broken_heart_2,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_heart =
{
	spr: spr_item_heart,
	name: text_load(global.csv_items,"heart_name"),
	state: text_load(global.csv_items,"heart_state"),
	obj: obj_item_heart,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_heart_used_1 =
{
	spr: spr_item_heart_used_1,
	name: text_load(global.csv_items,"heart_used_1_name"),
	state: text_load(global.csv_items,"heart_used_1_state"),
	obj: obj_item_heart_used_1,
	up_point: 3,
	upgrade: ["item_heart"],
	item_type: "normal"
}


item_heart_used_2 =
{
	spr: spr_item_heart_used_2,
	name: text_load(global.csv_items,"heart_used_2_name"),
	state: text_load(global.csv_items,"heart_used_2_state"),
	obj: obj_item_heart_used_2,
	up_point: 3,
	upgrade: ["item_heart_used_1"],
	item_type: "normal"
}


item_heart_used_3 =
{
	spr: spr_item_heart_used_3,
	name: text_load(global.csv_items,"heart_used_3_name"),
	state: text_load(global.csv_items,"heart_used_3_state"),
	obj: obj_item_heart_used_3,
	up_point: 3,
	upgrade: ["item_heart_used_2"],
	item_type: "normal"
}


item_heart_used_4 =
{
	spr: spr_item_heart_used_4,
	name: text_load(global.csv_items,"heart_used_4_name"),
	state: text_load(global.csv_items,"heart_used_4_state"),
	obj: obj_item_heart_used_4,
	up_point: 3,
	upgrade: ["item_heart_used_3"],
	item_type: "normal"
}


item_feather_heal =
{
	spr: spr_item_feather_heal,
	name: text_load(global.csv_items,"feather_heal_name"),
	state: text_load(global.csv_items,"feather_heal_state"),
	obj: obj_item_feather_heal,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_hair_heal =
{
	spr: spr_item_hair_heal,
	name: text_load(global.csv_items,"hair_heal_name"),
	state: text_load(global.csv_items,"hair_heal_state"),
	obj: obj_item_hair_heal,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_heart_attack_heal =
{
	spr: spr_item_heart_attack_heal,
	name: text_load(global.csv_items,"heart_attack_heal_name"),
	state: text_load(global.csv_items,"heart_attack_heal_state"),
	obj: obj_item_heart_attack_heal,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_hamma =
{
	spr: spr_item_hamma,
	name: text_load(global.csv_items,"hamma_name"),
	state: text_load(global.csv_items,"hamma_state"),
	obj: obj_item_hamma,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_windsoul =
{
	spr: spr_item_windsoul,
	name: text_load(global.csv_items,"windsoul_name"),
	state: text_load(global.csv_items,"windsoul_state"),
	obj: obj_item_windsoul,
	up_point: 2,
	upgrade : ["item_windsoul_2"],
	item_type: "normal"
}


item_windsoul_2 =
{
	spr: spr_item_windsoul_2,
	name: text_load(global.csv_items,"windsoul_2_name"),
	state: text_load(global.csv_items,"windsoul_2_state"),
	obj: obj_item_windsoul_2,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_feather_near_start =
{
	spr: spr_item_feather_near_start,
	name: text_load(global.csv_items,"feather_near_start_name"),
	state: text_load(global.csv_items,"feather_near_start_state"),
	obj: obj_item_feather_near_start,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_feather_far_start =
{
	spr: spr_item_feather_far_start,
	name: text_load(global.csv_items,"feather_far_start_name"),
	state: text_load(global.csv_items,"feather_far_start_state"),
	obj: obj_item_feather_far_start,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_feather_damaged =
{
	spr: spr_item_feather_damaged,
	name: text_load(global.csv_items,"feather_damaged_name"),
	state: text_load(global.csv_items,"feather_damaged_state"),
	obj: obj_item_feather_damaged,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_feather_dash =
{
	spr: spr_item_feather_dash,
	name: text_load(global.csv_items,"feather_dash_name"),
	state: text_load(global.csv_items,"feather_dash_state"),
	obj: obj_item_feather_dash,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_meteor =
{
	spr: spr_item_meteor,
	name: text_load(global.csv_items,"meteor_name"),
	state: text_load(global.csv_items,"meteor_state"),
	obj: obj_item_meteor,
	up_point: -1,
	upgrade : -1,
	item_type: "far_action"
}


item_sp_damaged =
{
	spr: spr_item_sp_damaged,
	name: text_load(global.csv_items,"sp_damaged_name"),
	state: text_load(global.csv_items,"sp_damaged_state"),
	obj: obj_item_sp_damaged,
	up_point: 1,
	upgrade : ["item_sp_damaged_2","item_sp_damaged_3"],
	item_type: "normal"
}


item_sp_damaged_2 =
{
	spr: spr_item_sp_damaged,
	name: text_load(global.csv_items,"sp_damaged_2_name"),
	state: text_load(global.csv_items,"sp_damaged_2_state"),
	obj: obj_item_sp_damaged_2,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_sp_damaged_3 =
{
	spr: spr_item_sp_damaged_3,
	name: text_load(global.csv_items,"sp_damaged_3_name"),
	state: text_load(global.csv_items,"sp_damaged_3_state"),
	obj: obj_item_sp_damaged_3,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_ignore_damage_5sec =
{
	spr: spr_item_ignore_damage_5sec,
	name: text_load(global.csv_items,"ignore_damage_5sec_name"),
	state: text_load(global.csv_items,"ignore_damage_5sec_state"),
	obj: obj_item_ignore_damage_5sec,
	up_point: 1,
	upgrade : ["item_ignore_damage_5sec_2"],
	item_type: "item_ignore_damage_5sec"
}


item_ignore_damage_5sec_2 =
{
	spr: spr_item_ignore_damage_5sec,
	name: text_load(global.csv_items,"ignore_damage_5sec_2_name"),
	state: text_load(global.csv_items,"ignore_damage_5sec_2_state"),
	obj: obj_item_ignore_damage_5sec_2,
	up_point: 3,
	upgrade : ["item_ignore_damage_5sec_3"],
	item_type: "item_ignore_damage_5sec"
}


item_ignore_damage_5sec_3 =
{
	spr: spr_item_ignore_damage_5sec,
	name: text_load(global.csv_items,"ignore_damage_5sec_3_name"),
	state: text_load(global.csv_items,"ignore_damage_5sec_3_state"),
	obj: obj_item_ignore_damage_5sec_3,
	up_point: -1,
	upgrade : -1,
	item_type: "item_ignore_damage_5sec"
}


item_wizzard_portion =
{
	spr: spr_item_wizzard_portion,
	name: text_load(global.csv_items,"wizzard_portion_name"),
	state: text_load(global.csv_items,"wizzard_portion_state"),
	obj: obj_item_wizzard_portion,
	up_point: 3,
	upgrade: ["item_wizzard_hat"],
	item_type: "normal"
}


item_purple_soul =
{
	spr: spr_item_purple_soul,
	name: text_load(global.csv_items,"purple_soul_name"),
	state: text_load(global.csv_items,"purple_soul_state"),
	obj: obj_item_purple_soul,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_shoes_land =
{
	spr: spr_item_shoes_land,
	name: text_load(global.csv_items,"shoes_land_name"),
	state: text_load(global.csv_items,"shoes_land_state"),
	obj: obj_item_shoes_land,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_jump_def =
{
	spr: spr_item_jump_def,
	name: text_load(global.csv_items,"jump_def_name"),
	state: text_load(global.csv_items,"jump_def_state"),
	obj: obj_item_jump_def,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_jump_double =
{
	spr: spr_item_jump_double,
	name: text_load(global.csv_items,"jump_double_name"),
	state: text_load(global.csv_items,"jump_double_state"),
	obj: obj_item_jump_double,
	up_point: 4,
	upgrade : "item_shoes_land",
	item_type: "normal"
}


item_thorn_armor =
{
	spr: spr_item_thorn_armor,
	name: text_load(global.csv_items,"thorn_armor_name"),
	state: text_load(global.csv_items,"thorn_armor_state"),
	obj: obj_item_thorn_armor,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_iron_shield =
{
	spr: spr_item_iron_shield,
	name: text_load(global.csv_items,"iron_shield_name"),
	state: text_load(global.csv_items,"iron_shield_state"),
	obj: obj_item_iron_shield,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_wood_shield =
{
	spr: spr_item_wood_shield,
	name: text_load(global.csv_items,"wood_shield_name"),
	state: text_load(global.csv_items,"wood_shield_state"),
	obj: obj_item_wood_shield,
	up_point: 1,
	upgrade : ["item_wood_shield_2"],
	item_type: "normal"
}


item_wood_shield_2 =
{
	spr: spr_item_wood_shield,
	name: text_load(global.csv_items,"wood_shield_2_name"),
	state: text_load(global.csv_items,"wood_shield_2_state"),
	obj: obj_item_wood_shield_2,
	up_point: 2,
	upgrade : ["item_wood_shield_3"],
	item_type: "normal"
}


item_wood_shield_3 =
{
	spr: spr_item_wood_shield,
	name: text_load(global.csv_items,"wood_shield_3_name"),
	state: text_load(global.csv_items,"wood_shield_3_state"),
	obj: obj_item_wood_shield_3,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_rock =
{
	spr: spr_item_rock,
	name: text_load(global.csv_items,"rock_name"),
	state: text_load(global.csv_items,"rock_state"),
	obj: obj_item_rock,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_fur =
{
	spr: spr_item_fur,
	name: text_load(global.csv_items,"fur_name"),
	state: text_load(global.csv_items,"fur_state"),
	obj: obj_item_fur,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_gold_eye =
{
	spr: spr_item_gold_eye,
	name: text_load(global.csv_items,"gold_eye_name"),
	state: text_load(global.csv_items,"gold_eye_state"),
	obj: obj_item_gold_eye,
	up_point: -1,
	upgrade : -1,
	item_type: "setting_act_type"
}


item_throwing_ax =
{
	spr: spr_item_throwing_ax,
	name: text_load(global.csv_items,"throwing_ax_name"),
	state: text_load(global.csv_items,"throwing_ax_state"),
	obj: obj_item_throwing_ax,
	up_point: -1,
	upgrade : -1,
	item_type: "far_action"
}


item_sword_atk_1 =
{
	spr: spr_item_sword_atk_1,
	name: text_load(global.csv_items,"sword_atk_1_name"),
	state: text_load(global.csv_items,"sword_atk_1_state"),
	obj: obj_item_sword_atk_1,
	up_point: 1,
	upgrade : ["item_sword_atk_2"],
	item_type: "normal"
}


item_sword_atk_2 =
{
	spr: spr_item_sword_atk_1,
	name: text_load(global.csv_items,"sword_atk_2_name"),
	state: text_load(global.csv_items,"sword_atk_2_state"),
	obj: obj_item_sword_atk_2,
	up_point: 2,
	upgrade : ["item_sword_atk_3"],
	item_type: "normal"
}


item_sword_atk_3 =
{
	spr: spr_item_sword_atk_1,
	name: text_load(global.csv_items,"sword_atk_3_name"),
	state: text_load(global.csv_items,"sword_atk_3_state"),
	obj: obj_item_sword_atk_3,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_red_horns =
{
	spr: spr_item_red_horns,
	name: text_load(global.csv_items,"red_horns_name"),
	state: text_load(global.csv_items,"red_horns_state"),
	obj: obj_item_red_horns,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_wind_blade =
{
	spr: spr_item_wind_blade,
	name: text_load(global.csv_items,"wind_blade_name"),
	state: text_load(global.csv_items,"wind_blade_state"),
	obj: obj_item_wind_blade,
	up_point: -1,
	upgrade : -1,
	item_type: "wind_blade"
}


item_charge_shield =
{
	spr: spr_item_charge_shield,
	name: text_load(global.csv_items,"charge_shield_name"),
	state: text_load(global.csv_items,"charge_shield_state"),
	obj: obj_item_charge_shield,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_fools_boots =
{
	spr: spr_item_fools_boots,
	name: text_load(global.csv_items,"fools_boots_name"),
	state: text_load(global.csv_items,"fools_boots_state"),
	obj: obj_item_fools_boots,
	up_point: -1,
	upgrade : -1,
	item_type: "fools_boots"
}


item_blackhole =
{
	spr: spr_item_blackhole,
	name: text_load(global.csv_items,"blackhole_name"),
	state: text_load(global.csv_items,"blackhole_state"),
	obj: obj_item_blackhole,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_black_heart =
{
	spr: spr_item_black_heart,
	name: text_load(global.csv_items,"black_heart_name"),
	state: text_load(global.csv_items,"black_heart_state"),
	obj: obj_item_black_heart,
	up_point: -1,
	upgrade : -1,
	item_type: "black_heart"
}


item_black_ring =
{
	spr: spr_item_black_ring,
	name: text_load(global.csv_items,"black_ring_name"),
	state: text_load(global.csv_items,"black_ring_state"),
	obj: obj_item_black_ring,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_black_book =
{
	spr: spr_item_black_book,
	name: text_load(global.csv_items,"black_book_name"),
	state: text_load(global.csv_items,"black_book_state"),
	obj: obj_item_black_book,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_black_fruit =
{
	spr: spr_item_black_fruit,
	name: text_load(global.csv_items,"black_fruit_name"),
	state: text_load(global.csv_items,"black_fruit_state"),
	obj: obj_item_black_fruit,
	up_point: -1,
	upgrade : -1,
	item_type: "normal"
}


item_fools_coat =
{
	spr: spr_item_fools_coat,
	name: text_load(global.csv_items,"fools_coat_name"),
	state: text_load(global.csv_items,"fools_coat_state"),
	obj: obj_item_fools_coat,
	up_point: -1,
	upgrade : -1,
	item_type: "fools_coat"
}














