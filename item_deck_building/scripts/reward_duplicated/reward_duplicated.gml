// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function reward_duplicated(_item){
	with(obj_ui_reward)
	{
		if(item == _item){return 1;}
	}
	return 0;
}