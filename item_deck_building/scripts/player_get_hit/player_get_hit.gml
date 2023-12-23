// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_get_hit(dmg){
	obj_player.xspd_knockback += 12*sign(obj_player.x-x);
	obj_player.xspd -= 5;
	
	var def = 5;
	for(var i = 0; i < array_length(global.item_effects.def_sum);i++)
	{
		var func = method(obj_player,global.item_effects.def_sum[i]);
		dmg = func(dmg);
	}
	for(var i = 0; i < array_length(global.item_effects.def_mult);i++)
	{
		var func = method(obj_player,global.item_effects.def_mult[i]);
		dmg = func(dmg);
	}
	for(var i = 0; i < array_length(global.item_effects.def_sum_post);i++)
	{
		var func = method(obj_player,global.item_effects.def_sum_post[i]);
		dmg = func(dmg);
	}
	for(var i = 0; i < array_length(global.item_effects.def_mult_post);i++)
	{
		var func = method(obj_player,global.item_effects.def_mult_post[i]);
		dmg = func(dmg);
	}
	
	
	
	for(var i = 0; i < array_length(global.item_effects.get_hit_pre);i++)
	{
		var func = method(obj_player,global.item_effects.get_hit_pre[i]);
		func(dmg);
	}
	for(var i = 0; i < array_length(global.item_effects.get_hit);i++)
	{
		var func = method(obj_player,global.item_effects.get_hit[i]);
		func(dmg);
	}
	for(var i = 0; i < array_length(global.item_effects.get_hit_post);i++)
	{
		var func = method(obj_player,global.item_effects.get_hit_post[i]);
		func(dmg);
	}
		
	obj_player.hp -= dmg;
	obj_player.hit = 8;
	obj_ui_hp_1.ef_hit = max(dmg*4,obj_ui_hp_1.ef_hit);
	obj_ui_hp_1.ef_hit_white = max(6,obj_ui_hp_1.ef_hit_white);
	audio_play_sound(snd_hit_1,1,0);
	
	var incy = instance_create_layer(obj_player.x,obj_player.y-100,"effects",obj_ef_dmg);
	incy.text = string_format(dmg,1,0);
}