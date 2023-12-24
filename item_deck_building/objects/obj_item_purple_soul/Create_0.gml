/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_purple_soul;

pow = 0;

item_func_1 = function(dmg)
{
	with(obj_item_purple_soul)
	{
		pow += 3;
	}
	
	return dmg;
}

item_func_2 = function(dmg)
{
	if(!instance_exists(obj_item_purple_soul)){return dmg;}
	else
	{
		return dmg+obj_item_purple_soul.pow;
	}
}

item_push_function(global.item_effects.attack,item_func_1);
item_push_function(global.item_effects.sp_sum,item_func_2);