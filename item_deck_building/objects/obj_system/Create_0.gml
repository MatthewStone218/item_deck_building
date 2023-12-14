/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

global.state = ST.NORMAL;

global.inv_count = 3;
global.level = 1;

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
	
	heal_sum:[],
	heal_mult:[],
	heal_sum_post:[],
	heal_mult_post:[],
	act_heal_pre:[],
	act_heal:[],
	act_heal_post:[],
	
	jump_sum:[],
	jump_mult:[],
	jump_sum_post:[],
	jump_mult_post:[],
	act_jump_pre:[],
	act_jump:[],
	act_jump_post:[],
	
	guard_sum:[],
	guard_mult:[],
	guard_sum_post:[],
	guard_mult_post:[],
	act_guard_pre:[],
	act_guard:[],
	act_guard_post:[],
	
	dodge_sum:[],
	dodge_mult:[],
	dodge_sum_post:[],
	dodge_mult_post:[],
	act_dodge_pre:[],
	act_dodge:[],
	act_dodge_post:[],
	
	act_attack_pre:[],
	act_attack:[],
	act_attack_post:[],
	
	act_check_type:[],
	act_start_near:[],
	act_start_far:[],
	act_near:[],
	act_far:[],
	act_animation_end_near:[],
	act_animation_end_far:[],
	check_enemy:[]
}

enum ST
{
	NORMAL,
	OPTION,
	REWARD
}

enum ACT_TYPE
{
	ACT_NEAR,
	ACT_FAR,
	ACTING_NEAR,
	ACTING_FAR
}






