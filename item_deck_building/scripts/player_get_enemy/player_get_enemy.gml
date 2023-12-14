// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_get_enemy(){
	if(global.item_effects.check_enemy == -1)
	{
		return instance_nearest(x,y,obj_enemy);
	}
	else
	{
		var func = method(obj_player,global.item_effects.check_enemy);
		func();
	}
}