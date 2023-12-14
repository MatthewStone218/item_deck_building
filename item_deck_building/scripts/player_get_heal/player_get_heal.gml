// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_get_heal(){
	var heal = 1;
	for(var i = 0; i < array_length(global.item_effects.heal_sum);i++)
	{
		var func = method(obj_player,global.item_effects.heal_sum[i]);
		heal = func(heal);
	}
	for(var i = 0; i < array_length(global.item_effects.heal_mult);i++)
	{
		var func = method(obj_player,global.item_effects.heal_mult[i]);
		heal = func(heal);
	}
	for(var i = 0; i < array_length(global.item_effects.heal_sum_post);i++)
	{
		var func = method(obj_player,global.item_effects.heal_sum_post[i]);
		heal = func(heal);
	}
	for(var i = 0; i < array_length(global.item_effects.heal_mult_post);i++)
	{
		var func = method(obj_player,global.item_effects.heal_mult_post[i]);
		heal = func(heal);
	}
	return heal;
}