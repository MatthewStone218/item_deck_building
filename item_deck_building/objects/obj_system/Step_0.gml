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
		global.state = ST.REWARD;
		global.st_prev = ST.REWARD;
		audio_play_sound(snd_confirm_2,1,0)
		
		with(obj_ui_reward)
		{
			typist = scribble_typist();
			typist.in(0.8, 60);
			typist.ease(SCRIBBLE_EASE.ELASTIC, 0, -5, 1, 1, 0, 0.1);

			item = -1;
		}
		
		item_array_create();
		
		var _items = [item_array_pick(),item_array_pick(),item_array_pick()];
		
		var _num = 0;
		with(obj_ui_reward)
		{
			item = _items[_num];
			_num++;
		}
	}
}

while(global.exp >= global.exp_max)
{
	audio_play_sound(snd_levelup,0,0);
	global.exp -= global.exp_max;
	global.level++;
	global.inv_count++;
	global.exp_max = global.exp_max_arr[global.level];
	instance_create_depth(0,0,0,obj_ef_levelup);
	obj_ui_levelup.image_alpha = 7.5;
}





