// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_act_far(_enemy){
	if(global.item_effects.act_far == -1)
	{
		if(player_check_can_act_near(_enemy))
		{
			if(attack_delay_left == 0)
			{
				player_start_act_near(_enemy);
			}
			else
			{
				sprite_index = spr_player_idle;
			}
		}
		else
		{
			if (global.map_show == 0) and ((image_index >= 1 and image_index-image_speed*sprite_get_speed(spr_player_run)/60 < 1) or (image_index >= 5 and image_index-image_speed*sprite_get_speed(spr_player_run)/60 < 5)){audio_play_sound(snd_foot,0,0);}
			var _dir = sign(_enemy.x-x);
			if(_dir == 1){image_xscale = 1;}else{image_xscale = -1;}
			xspd += _dir*player_get_spd();
			if(abs(xspd) > xspd_max*player_get_spd()){xspd = sign(xspd)*(player_get_spd()/obj_player.acc);}
			moving_x = 1;
		}
	}
	else
	{
		var func = method(obj_player,global.item_effects.act_far);
		func(_enemy);
	}
}
