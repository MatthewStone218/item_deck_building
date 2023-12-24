// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function set_reward(reward_level = 1){
	global.state = ST.REWARD;
	global.st_prev = ST.REWARD;
	global.current_reward_level = reward_level;
	audio_play_sound(snd_confirm_2,1,0)
		
	with(obj_ui_reward)
	{
		typist = scribble_typist();
		typist.in(0.8, 60);
		typist.ease(SCRIBBLE_EASE.ELASTIC, 0, -5, 1, 1, 0, 0.1);

		item = -1;
	}
		
	item_array_create(reward_level);
		
	var _items = [item_array_pick(),item_array_pick(),item_array_pick()];
		
	var _num = 0;
	with(obj_ui_reward)
	{
		item = _items[_num];
		_num++;
	}
}