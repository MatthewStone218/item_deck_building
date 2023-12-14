// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_get_ap(){
	var ap = 0;
	for(var i = 0; i < array_length(global.item_effects.ap_sum);i++)
	{
		var func = method(obj_player,global.item_effects.ap_sum[i]);
		ap = func(ap);
	}
	for(var i = 0; i < array_length(global.item_effects.ap_mult);i++)
	{
		var func = method(obj_player,global.item_effects.ap_mult[i]);
		ap = func(ap);
	}
	for(var i = 0; i < array_length(global.item_effects.ap_sum_post);i++)
	{
		var func = method(obj_player,global.item_effects.ap_sum_post[i]);
		ap = func(ap);
	}
	for(var i = 0; i < array_length(global.item_effects.ap_mult_post);i++)
	{
		var func = method(obj_player,global.item_effects.ap_mult_post[i]);
		ap = func(ap);
	}
	return ap;
}