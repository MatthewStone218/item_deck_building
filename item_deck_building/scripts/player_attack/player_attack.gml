// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_attack(dmg,enemy){
	if(instance_exists(enemy))
	{
		for(var i = 0; i < array_length(global.item_effects.attack_pre);i++)
		{
			var func = method(obj_player,global.item_effects.attack_pre[i]);
			dmg = func(dmg,enemy);
		}
		for(var i = 0; i < array_length(global.item_effects.attack);i++)
		{
			var func = method(obj_player,global.item_effects.attack[i]);
			dmg = func(dmg,enemy);
		}
		for(var i = 0; i < array_length(global.item_effects.attack_post);i++)
		{
			var func = method(obj_player,global.item_effects.attack_post[i]);
			dmg = func(dmg,enemy);
		}
	
		obj_ui_hp_2.ef_hit = max(dmg*4,obj_ui_hp_2.ef_hit);
		obj_ui_hp_2.ef_hit_white = max(6,obj_ui_hp_2.ef_hit_white);
		with(enemy){get_hit(dmg);}
		audio_play_sound(snd_hit_2,1,0);
		var incy = instance_create_layer(enemy.x,enemy.y-100,"effects",obj_ef_dmg);
		incy.text = string_format(dmg,1,0);
	}
}