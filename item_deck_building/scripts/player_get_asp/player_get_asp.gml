// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_get_asp(){
	var asp = 1;
	for(var i = 0; i < array_length(global.item_effects.asp_sum);i++)
	{
		var func = method(obj_player,global.item_effects.asp_sum[i]);
		asp = func(asp);
	}
	for(var i = 0; i < array_length(global.item_effects.asp_mult);i++)
	{
		var func = method(obj_player,global.item_effects.asp_mult[i]);
		asp = func(asp);
	}
	for(var i = 0; i < array_length(global.item_effects.asp_sum_post);i++)
	{
		var func = method(obj_player,global.item_effects.asp_sum_post[i]);
		asp = func(asp);
	}
	for(var i = 0; i < array_length(global.item_effects.asp_mult_post);i++)
	{
		var func = method(obj_player,global.item_effects.asp_mult_post[i]);
		asp = func(asp);
	}
	return min(asp,5);
}