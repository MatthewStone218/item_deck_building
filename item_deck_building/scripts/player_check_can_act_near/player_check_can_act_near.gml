// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_check_can_act_near(_enemy){
	return (point_distance(obj_player.x,obj_player.y,_enemy.x,_enemy.y) < 200);
}