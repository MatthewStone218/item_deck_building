// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_attack(dmg,enemy){
	for(var i = 0; i < array_length(global.item_effects.attack_pre);i++)
	{
		var func = method(obj_player,global.item_effects.attack_pre[i]);
		dmg = func(dmg);
	}
	for(var i = 0; i < array_length(global.item_effects.attack);i++)
	{
		var func = method(obj_player,global.item_effects.attack[i]);
		dmg = func(dmg);
	}
	for(var i = 0; i < array_length(global.item_effects.attack_post);i++)
	{
		var func = method(obj_player,global.item_effects.attack_post[i]);
		dmg = func(dmg);
	}
	
	with(enemy){get_hit(dmg);}
}