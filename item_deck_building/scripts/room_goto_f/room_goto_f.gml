// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function room_goto_f(rm){
	var incy = instance_create_depth(0,0,-1000000,obj_room_changer);
	incy.next_room = rm;
}