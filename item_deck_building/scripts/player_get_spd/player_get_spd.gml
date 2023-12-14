// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_get_spd(){
	var spd = obj_player.acc;
	for(var i = 0; i < array_length(global.item_effects.spd_sum);i++)
	{
		var func = method(obj_player,global.item_effects.spd_sum[i]);
		spd = func(spd);
	}
	for(var i = 0; i < array_length(global.item_effects.spd_mult);i++)
	{
		var func = method(obj_player,global.item_effects.spd_mult[i]);
		spd = func(spd);
	}
	for(var i = 0; i < array_length(global.item_effects.spd_sum_post);i++)
	{
		var func = method(obj_player,global.item_effects.spd_sum_post[i]);
		spd = func(spd);
	}
	for(var i = 0; i < array_length(global.item_effects.spd_mult_post);i++)
	{
		var func = method(obj_player,global.item_effects.spd_mult_post[i]);
		spd = func(spd);
	}
	return spd;
}