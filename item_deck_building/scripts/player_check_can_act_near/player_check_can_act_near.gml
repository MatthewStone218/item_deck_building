// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_check_can_act_near(_enemy){
	if(global.item_effects.act_check_type == -1)
	{
		return (place_meeting_mask(x,y,_enemy,spr_player_attack_1));
	}
	else
	{
		var func = method(obj_player,global.item_effects.act_check_type);
		return func();
	}
}