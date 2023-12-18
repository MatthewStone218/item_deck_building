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







