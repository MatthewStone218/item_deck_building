// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_get_hp_max(){
	var hp_max = 40;
	for(var i = 0; i < array_length(global.item_effects.hp_max_sum);i++)
	{
		var func = method(obj_player,global.item_effects.hp_max_sum[i]);
		hp_max = func(hp_max);
	}
	for(var i = 0; i < array_length(global.item_effects.hp_max_mult);i++)
	{
		var func = method(obj_player,global.item_effects.hp_max_mult[i]);
		hp_max = func(hp_max);
	}
	for(var i = 0; i < array_length(global.item_effects.hp_max_sum_post);i++)
	{
		var func = method(obj_player,global.item_effects.hp_max_sum_post[i]);
		hp_max = func(hp_max);
	}
	for(var i = 0; i < array_length(global.item_effects.hp_max_mult_post);i++)
	{
		var func = method(obj_player,global.item_effects.hp_max_mult_post[i]);
		hp_max = func(hp_max);
	}
	return hp_max;
}