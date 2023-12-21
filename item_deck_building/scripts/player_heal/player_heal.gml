// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_heal(heal){
	for(var i = 0; i < array_length(global.item_effects.heal_pre);i++)
	{
		var func = method(obj_player,global.item_effects.heal_pre[i]);
		heal = func(heal);
	}
	for(var i = 0; i < array_length(global.item_effects.heal);i++)
	{
		var func = method(obj_player,global.item_effects.heal[i]);
		heal = func(heal);
	}
	for(var i = 0; i < array_length(global.item_effects.heal_post);i++)
	{
		var func = method(obj_player,global.item_effects.heal_post[i]);
		heal = func(heal);
	}
	
	obj_player.hp = min(obj_player.hp_max,obj_player.hp+heal);
}