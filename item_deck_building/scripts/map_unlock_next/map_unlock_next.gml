// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function map_unlock_next(){
	global.can_goto_next_event = 1;
	global.map_show = 1;
	with(obj_map.icon_now)
	{
		for(var i = 0; i < array_length(next_icon); i++)
		{
			next_icon[i].can_go = 1;
		}
	}
}