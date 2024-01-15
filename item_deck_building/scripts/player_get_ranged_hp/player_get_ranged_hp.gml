// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_get_ranged_hp(){
	var hp = 1;
	for(var i = 0; i < array_length(global.item_effects.ranged_hp_sum);i++)
	{
		var func = method(obj_player,global.item_effects.ranged_hp_sum[i]);
		hp = func(hp);
	}
	for(var i = 0; i < array_length(global.item_effects.ranged_hp_mult);i++)
	{
		var func = method(obj_player,global.item_effects.ranged_hp_mult[i]);
		hp = func(hp);
	}
	for(var i = 0; i < array_length(global.item_effects.ranged_hp_sum_post);i++)
	{
		var func = method(obj_player,global.item_effects.ranged_hp_sum_post[i]);
		hp = func(hp);
	}
	for(var i = 0; i < array_length(global.item_effects.ranged_hp_mult_post);i++)
	{
		var func = method(obj_player,global.item_effects.ranged_hp_mult_post[i]);
		hp = func(hp);
	}
	return hp;
}