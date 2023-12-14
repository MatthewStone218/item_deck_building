// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_get_sp(){
	var sp = 0;
	for(var i = 0; i < array_length(global.item_effects.sp_sum);i++)
	{
		var func = method(obj_player,global.item_effects.sp_sum[i]);
		sp = func(sp);
	}
	for(var i = 0; i < array_length(global.item_effects.sp_mult);i++)
	{
		var func = method(obj_player,global.item_effects.sp_mult[i]);
		sp = func(sp);
	}
	for(var i = 0; i < array_length(global.item_effects.sp_sum_post);i++)
	{
		var func = method(obj_player,global.item_effects.sp_sum_post[i]);
		sp = func(sp);
	}
	for(var i = 0; i < array_length(global.item_effects.sp_mult_post);i++)
	{
		var func = method(obj_player,global.item_effects.sp_mult_post[i]);
		sp = func(sp);
	}
	return sp;
}