/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_blood;

pow = 0;

item_func_1 = function(dmg)
{
	with(obj_item_blood)
	{
		pow += 5;
	}
	
	return dmg;
}

item_func_2 = function(dmg)
{
	if(!instance_exists(obj_item_blood)){return dmg;}
	else
	{
		return dmg+obj_item_blood.pow;
	}
}

item_push_function(global.item_effects.get_hit,item_func_1);
item_push_function(global.item_effects.ap_sum,item_func_2);