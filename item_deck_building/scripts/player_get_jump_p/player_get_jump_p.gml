// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_get_jump_p(){
	var jump = obj_player.jumpspd;
	for(var i = 0; i < array_length(global.item_effects.jump_sum);i++)
	{
		var func = method(obj_player,global.item_effects.jump_sum[i]);
		jump = func(jump);
	}
	for(var i = 0; i < array_length(global.item_effects.jump_mult);i++)
	{
		var func = method(obj_player,global.item_effects.jump_mult[i]);
		jump = func(jump);
	}
	for(var i = 0; i < array_length(global.item_effects.jump_sum_post);i++)
	{
		var func = method(obj_player,global.item_effects.jump_sum_post[i]);
		jump = func(jump);
	}
	for(var i = 0; i < array_length(global.item_effects.jump_mult_post);i++)
	{
		var func = method(obj_player,global.item_effects.jump_mult_post[i]);
		jump = func(jump);
	}
}