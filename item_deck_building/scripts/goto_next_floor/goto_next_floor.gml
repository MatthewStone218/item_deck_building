// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function goto_next_floor(){
	instance_destroy(obj_sol_door_2)
	global.state = ST.MOVING_EVENT;
	global.st_prev = ST.MOVING_EVENT;
	var incy = instance_create_layer(0,0,"move_ef",obj_ef_move_event,{type: choose(EV_TYPE.ENEMY,EV_TYPE.ENEMY,EV_TYPE.ENEMY,EV_TYPE.ENEMY,EV_TYPE.ENEMY,EV_TYPE.ENEMY,EV_TYPE.ENEMY,EV_TYPE.BONFIRE,EV_TYPE.BONFIRE,EV_TYPE.ITEM)});
}