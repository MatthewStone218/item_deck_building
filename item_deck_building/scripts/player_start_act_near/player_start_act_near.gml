// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_start_act_near(_enemy){
	
	for(var i = 0; i < array_length(global.item_effects.near_act_start);i++)
	{
		var func = method(obj_player,global.item_effects.near_act_start[i]);
		func(_enemy);
	}
	
	if(global.item_effects.act_start_near == -1)
	{
		if(place_meeting(x,y+1,obj_sol))
		{
			attacking = 1;
			act = [1,ACT_TYPE.ACTING_NEAR];
			xspd = 0;
			sprite_index = spr_player_attack_1;
			image_index = 0;
			image_speed = min(player_get_asp(),5);
	
			coll_objs = {};
	
			var _dir = sign(_enemy.x-x);
			if(_dir == 1){image_xscale = 1;}else{image_xscale = -1;}
		}
		else
		{
			sprite_index = spr_player_idle;
			image_speed = 1;
		}
	}
	else
	{
		var func = method(obj_player,global.item_effects.act_start_near);
		func(_enemy);
	}
}