// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_act_far(_enemy){
	if(global.item_effects.act_far == -1)
	{
		if(player_check_can_act_near(_enemy))
		{
			player_start_act_near(_enemy);
		}
		else
		{
			var _dir = sign(_enemy.x-x);
			if(_dir == 1){image_xscale = 1;}else{image_xscale = -1;}
			xspd += _dir*acc*player_get_spd();
			if(abs(xspd) > xspd_max*player_get_spd()){xspd = sign(xspd)*xspd_max*player_get_spd();}
			moving_x = 1;
		}
	}
	else
	{
		var func = method(obj_player,global.item_effects.act_far);
		func(_enemy);
	}
}
