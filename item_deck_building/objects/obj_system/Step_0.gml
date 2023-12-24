/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(global.state == ST.COMBET and room == rm_game)
{	
	count_combet_end--;
	
	if(instance_exists(obj_enemy))
	{
		count_combet_end = 60;
	}
	
	if(count_combet_end <= 0)
	{
		set_reward_first();
	}
}

while(global.exp >= global.exp_max)
{
	audio_play_sound(snd_levelup,0,0);
	global.exp -= global.exp_max;
	global.level++;
	global.inv_count++;
	global.exp_max = global.exp_max_arr[global.level];
	
	if(global.level == 3 or global.level == 6 or global.level == 9){global.refresh++;}
	
	instance_create_depth(0,0,0,obj_ef_levelup);
	obj_ui_levelup.image_alpha = 5;
}





