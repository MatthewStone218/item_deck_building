// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function item_array_create(){
	_item_array = [];
	var count = 0;
	
	if!(reward_duplicated(obj_data_items.item_wizzard_hat))
	{
		_item_array[count,0] = obj_data_items.item_wizzard_hat;
		_item_array[count,1] = 10;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_old_boots))
	{
		_item_array[count,0] = obj_data_items.item_old_boots;
		_item_array[count,1] = 10;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_pendant_asp))
	{
		_item_array[count,0] = obj_data_items.item_pendant_asp;
		_item_array[count,1] = 10;
		_item_array[count,2] = 0;
		count++;
	}
	
	if!(reward_duplicated(obj_data_items.item_blood))
	{
		_item_array[count,0] = obj_data_items.item_blood;
		_item_array[count,1] = 10;
		_item_array[count,2] = 0;
		count++;
	}
	
	return count;//길이 반환.
}