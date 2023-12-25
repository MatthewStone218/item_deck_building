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
		else if(ev_type == EV_TYPE.ITEM)
		{
			_event_array[count,0] = obj_data_events.event_event_treasure_chest.func;
			_event_array[count,1] = 2;
			_event_array[count,2] = 0;
			count++;
		}
		else if(ev_type == EV_TYPE.BOSS_1)
		{
			_event_array[count,0] = obj_data_events.event_enemy_dragon.func;
			_event_array[count,1] = 2;
			_event_array[count,2] = 0;
			count++;
		}
		else
		{
			_event_array[count,0] = obj_data_events.event_enemy_skeleton_warrior.func;
			_event_array[count,1] = 10*event_range(-10,7);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_skeleton_archer.func;
			_event_array[count,1] = 10*event_range(-5,8);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_skeleton_warrior_n_archer_1.func;
			_event_array[count,1] = 10*event_range(3,8);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_skeleton_warrior_n_archer_2.func;
			_event_array[count,1] = 10*event_range(7,13);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_skeleton_warrior_n_archer_3.func;
			_event_array[count,1] = 10*event_range(12,18);
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_slime_blue_1.func;
			_event_array[count,1] = 10*event_range(-10,5);
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_slime_blue_2.func;
			_event_array[count,1] = 10*event_range(-10,9);
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_slime_green_1.func;
			_event_array[count,1] = 10*event_range(-10,4);
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_slime_green_2.func;
			_event_array[count,1] = 10*event_range(-10,7);
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_slime_red_1.func;
			_event_array[count,1] = 10*event_range(0,10);
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_slimes.func;
			_event_array[count,1] = 10*event_range(4,15);
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_mino_1.func;
			_event_array[count,1] = 10*event_range(9,23);
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_mino_2.func;
			_event_array[count,1] = 10*event_range(10,28);
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_enemy_mino_skeleton_archer.func;
			_event_array[count,1] = 10*event_range(10,24);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_slime_ranged.func;
			_event_array[count,1] = 10*event_range(10,20);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_skeleton_warrior_slime_ranged_1.func;
			_event_array[count,1] = 10*event_range(11,25);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_skeleton_warrior_slime_ranged_2.func;
			_event_array[count,1] = 10*event_range(11,25);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_mino_slime_ranged.func;
			_event_array[count,1] = 10*event_range(15,30);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_zombie_1.func;
			_event_array[count,1] = 10*event_range(10,20);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_zombie_2.func;
			_event_array[count,1] = 10*event_range(11,22);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_zombie_slime_ranged_1.func;
			_event_array[count,1] = 10*event_range(12,23);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_zombie_slime_ranged_2.func;
			_event_array[count,1] = 10*event_range(13,24);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_mino_zombie_1.func;
			_event_array[count,1] = 10*event_range(15,27);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_mino_zombie_2.func;
			_event_array[count,1] = 10*event_range(15,30);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_enemy_mino_zombie_slime_ranged.func;
			_event_array[count,1] = 10*event_range(19,30);
			_event_array[count,2] = 0;
			count++;
	
			_event_array[count,0] = obj_data_events.event_event_bonfire.func;
			_event_array[count,1] = 2*(ev_type == EV_TYPE.RANDOM);
			_event_array[count,2] = 0;
			count++;
			
			_event_array[count,0] = obj_data_events.event_event_treasure_chest.func;
			_event_array[count,1] = 2*(ev_type == EV_TYPE.RANDOM);
			_event_array[count,2] = 0;
			count++;
		}
	return count;//길이 반환.
}