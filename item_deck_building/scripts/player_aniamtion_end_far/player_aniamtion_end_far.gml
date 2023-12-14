// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_aniamtion_end_far(){
	if(global.item_effects.act_animation_end_far == -1)
	{
		act = [0,-1];
		player_act();
	}
	else
	{
		var func = method(obj_player,global.item_effects.act_animation_end_far);
		func();
	}
}