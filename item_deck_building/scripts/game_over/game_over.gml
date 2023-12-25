// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function game_over(){
	instance_destroy(obj_item);
	with(obj_player)
	{
		instance_create_depth(x,y,-10,obj_player_die);
		instance_destroy();
	}
	room_goto(rm_game_over);
}