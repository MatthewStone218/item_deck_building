// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_get_act_type(enemy){
	
	if(act[0] == true)
	{
		return act[1];
	}
	else
	{
		if(player_check_can_act_near(enemy))
		{
			return ACT_TYPE.ACT_NEAR;
		}
		else
		{
			return ACT_TYPE.ACT_FAR;
		}
	}
}