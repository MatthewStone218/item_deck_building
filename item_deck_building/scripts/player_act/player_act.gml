// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_act(){
	if(global.state == ST.MOVING_EVENT)
	{
		sprite_index = spr_player_run;
		image_speed = 1;
		image_xscale = 1;
		
		xspd += player_get_spd()*2;
		if(abs(xspd) > xspd_max*player_get_spd()*2){xspd = sign(xspd)*2*(player_get_spd()/obj_player.acc);}
		moving_x = 1;
		
		if(bbox_left > room_width and !instance_exists(obj_ef_move_event)){instance_create_layer(0,0,"move_ef",obj_ef_move_event);}
	}
	else if(global.item_effects.act == -1)
	{
		var _enemy = player_get_enemy();

		if(_enemy != noone)
		{
			var _act_type = player_get_act_type(_enemy);
			if(_act_type == ACT_TYPE.ACT_NEAR)
			{
				player_start_act_near(_enemy);
			}
			else if(_act_type == ACT_TYPE.ACTING_NEAR)
			{
				player_act_near(_enemy);
			}
			else if(_act_type == ACT_TYPE.ACT_FAR)
			{
				player_start_act_far(_enemy);
			}
			else if(_act_type == ACT_TYPE.ACTING_FAR)
			{
				player_act_far(_enemy);
			}
		}
		else if(attacking == 0)
		{
			sprite_index = spr_player_idle;
			image_speed = 1;
		}
	
		if(attacking == 0)
		{
			attack_delay_left = max(0,attack_delay_left-1);
		}
	}
	else
	{
		var func = method(obj_player,global.item_effects.act);
		func();
	}
}