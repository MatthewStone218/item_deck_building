// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_act(){
	
	if(global.item_effects.act == -1)
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