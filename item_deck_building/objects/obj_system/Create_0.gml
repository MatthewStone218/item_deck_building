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
	heal_pre:[],
	heal:[],
	heal_post:[],
	
	jump_sum:[],
	jump_mult:[],
	jump_sum_post:[],
	jump_mult_post:[],
	jump_pre:[],
	act_jump:[],
	jump_post:[],
	
	guard_sum:[],
	guard_mult:[],
	guard_sum_post:[],
	guard_mult_post:[],
	guard_pre:[],
	act_guard:[],
	guard_post:[],
	
	dodge_sum:[],
	dodge_mult:[],
	dodge_sum_post:[],
	dodge_mult_post:[],
	dodge_pre:[],
	act_dodge:[],
	dodge_post:[],
	
	attack_pre:[],
	attack:[],
	attack_post:[],
	
	act: -1,
	act_check_type:-1,
	act_start_near:-1,
	act_start_far:-1,
	act_near:-1,
	act_far:-1,
	act_animation_end_near:-1,
	act_animation_end_far:-1,
	check_enemy:-1
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






