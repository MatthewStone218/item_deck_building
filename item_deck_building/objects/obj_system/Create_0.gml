/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

#macro ITEM_RATE_LEGEND 1*power(2,chest_level-2)
#macro ITEM_RATE_UNIQUE 1*power(1.8,chest_level)
#macro ITEM_RATE_RARE 5*power(1.4,chest_level+1)
#macro ITEM_RATE_NORMAL 15

global.debug = true;
global.demo = false;
global.itch_io = false;


if(!audio_is_playing(snd_bgm_1)){audio_play_sound(snd_bgm_1,1,1);}

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

ini_open("save.ini");
	
var _lang = ini_read_real("lang","lang",-1);
global.upgrade_tuto = ini_read_real("upgrade_tuto","upgrade_tuto",1);
	
ini_close();

if(_lang != -1){global.language = _lang;}

global.csv_items = load_csv("items.csv");
global.csv_events = load_csv("events.csv");
global.csv_system = load_csv("system.csv");

global.current_reward_level = 0;
global.refresh = 1;
global.refresh_left = global.refresh;

global.inv_count = 2;
global.level = 1;
global.level_max = 17;

global.upgrade_point = 0;

global.floor_level = 1;

global.game_level = 1;

count_combet_end = 120;

global.map_show = 0;
global.can_goto_next_event = 0;

global.map_created = 0;

global.boss_fight = false;

global.exp_max_arr =
[
	0,
	5,
	10,
	15,
	15,
	20,
	20,
	30,
	30,
	40,
	40,
	50,
	50,
	60,
	60,
	70,
	70,
	80,
	80,
	90,
	90,
	100,
	999999999999999999
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
	
	ranged_hp_sum:[],
	ranged_hp_mult:[],
	ranged_hp_sum_post:[],
	ranged_hp_mult_post:[],
	
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
	
	dash_pre:[],
	dash:[],
	dash_post:[],
	
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
	act_dash:-1,
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
	UPGRADE,
	WAITING,
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
	BONFIRE,
	BOSS_1,
	BOSS_2,
	BOSS_3,
	BOSS_4,
	BOSS_5
}

enum LG
{
	KR,
	EN,
	JP,
	CH
}

if(!variable_global_exists("player_head"))
{
	global.player_head = 6;
}
else
{
	instance_create_depth(0,0,-1000,obj_ef_fake);
	room_goto(rm_game);
	global.map_show = 1;
	global.state = ST.MOVING_EVENT;
	global.st_prev = ST.MOVING_EVENT;
	step = 1;
	call_later(120,time_source_units_frames,function()
	{
		with(obj_map.icon_now)
		{
			with(obj_ui_map_icon)
			{
				can_go = 0;
			}
			global.can_goto_next_event = 0;

			instance_create_layer(0,0,"move_ef",obj_ef_move_event,{type: ev_type});
		}
	});
}

