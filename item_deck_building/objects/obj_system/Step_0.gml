/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(global.state == ST.COMBET)
{
	count_combet_end--;
	
	if(instance_exists(obj_enemy))
	{
		count_combet_end = 60;
	}
	
	if(count_combet_end <= 0)
	{
		global.state = ST.REWARD;
		with(obj_ui_reward)
		{
			set_reward();
		}
	}
}












