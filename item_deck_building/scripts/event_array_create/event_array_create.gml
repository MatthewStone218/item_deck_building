// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function event_array_create(ev_type){
	_event_array = [];
	var count = 0;
		if(ev_type == EV_TYPE.BONFIRE)
		{
			_event_array[count,0] = obj_data_events.event_event_bonfire.func;
			_event_array[count,1] = 2;
			_event_array[count,2] = 0;
			count++;
		}
		else
		{
			_event_array[count,0] = obj_data_events.event_enemy_skeleton_warrior.func;
			_event_array[count,1] = 10;
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_slime_blue_1.func;
			_event_array[count,1] = 2;
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_slime_blue_2.func;
			_event_array[count,1] = 2;
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_slime_green_1.func;
			_event_array[count,1] = 2;
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_slime_green_2.func;
			_event_array[count,1] = 2;
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_slime_red_1.func;
			_event_array[count,1] = 2;
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_slimes.func;
			_event_array[count,1] = 2;
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_event_bonfire.func;
			_event_array[count,1] = 2;
			_event_array[count,2] = 0;
			count++;
		}
	return count;//길이 반환.
}