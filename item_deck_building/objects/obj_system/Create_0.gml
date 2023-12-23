/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

#macro ITEM_RATE_LEGEND 2*power(5,chest_level-2.4)
#macro ITEM_RATE_UNIQUE 3*power(1.5,chest_level)
#macro ITEM_RATE_RARE 5*power(1.2,chest_level)
#macro ITEM_RATE_NORMAL 15

scribble_font_set_default("ft_normal");

global.state = ST.NORMAL;
global.st_prev = global.state;

global.language = LG.EN;
switch(os_get_region())
{
	case "KR":
		global.language = LG.KR;
	break;
	
	case "JP":
		global.language = LG.JP;
	break;
	
	case "CH":
	case "TW":
	case "HK":
		global.language = LG.CH;
	break;
}

global.csv_items = load_csv("items.csv");
global.csv_events = load_csv("events.csv");
global.csv_system = load_csv("system.csv");

global.inv_count = 3;
global.level = 1;
global.level_max = 17;

count_combet_end = 120;

global.map_show = 0;
global.can_goto_next_event = 0;

global.exp_max_arr =
[
	0,
	10,
	15,
	20,
	30,
	50,
	70,
	100,
	150,
	200,
	250,
	300,
	400,
	500,
	600,
	700,
	800,
	900,
	1000,
	1500,
	2000,
	3000
]

global.exp_max = global.exp_max_arr[global.level];
global.exp = 0;

global.item_effects =
{
	ap_sum:[],
	ap_mult:[],
	ap_sum_post:[],
	ap_mult_post:[],
	
	def_sum:[],
	def_mult:[],
	def_sum_post:[],
	def_mult_post:[],
	
	asp_sum:[],
	asp_mult:[],
	asp_sum_post:[],
	asp_mult_post:[],
	
	sp_sum:[],
	sp_mult:[],
	sp_sum_post:[],
	sp_mult_post:[],
	
	spd_sum:[],
	spd_mult:[],
	spd_sum_post:[],
	spd_mult_post:[],
	
	hp_max_sum:[],
	hp_max_mult:[],
	hp_max_sum_post:[],
	hp_max_mult_post:[],
	
	heal_sum:[],
	heal_mult:[],
	heal_sum_post:[],
	heal_mult_post:[],
	heal_pre:[],
	heal:[],
	heal_post:[],
	
	jump_sum:[],
	jump_mult:[],
	jump_sum_post:[],
	jump_mult_post:[],
	jump_pre:[],
	jump:[],
	jump_post:[],
	
	guard_sum:[],
	guard_mult:[],
	guard_sum_post:[],
	guard_mult_post:[],
	guard_pre:[],
	guard:[],
	guard_post:[],
	
	dodge_sum:[],
	dodge_mult:[],
	dodge_sum_post:[],
	dodge_mult_post:[],
	dodge_pre:[],
	dodge:[],
	dodge_post:[],
	
	attack_pre:[],
	attack:[],
	attack_post:[],
	
	get_hit_pre:[],
	get_hit:[],
	get_hit_post:[],
	
	stage_end:[],
	stage_start:[],
	
	near_act_start:[],
	far_act_start:[],
	near_act_end:[],
	far_act_end:[],
	
	die:[],
	
	act: -1,
	act_check_type:-1,
	act_start_near:-1,
	act_start_far:-1,
	act_near:-1,
	act_far:-1,
	act_dodge:-1,
	act_guard:-1,
	act_animation_end_near:-1,
	act_animation_end_far:-1,
	check_enemy:-1,
	act_jump:-1
}

enum ST
{
	NORMAL,
	COMBET,
	OPTION,
	REWARD,
	DELETE,
	MOVING_EVENT,
	EVENT_BONFIRE,
	EVENT_TREASURE_CHEST
}

enum ACT_TYPE
{
	ACT_NEAR,
	ACT_FAR,
	ACTING_NEAR,
	ACTING_FAR
}

enum EV_TYPE
{
	ENEMY,
	RANDOM,
	ITEM,
	BONFIRE
}

enum LG
{
	KR,
	EN,
	JP,
	CH
}



