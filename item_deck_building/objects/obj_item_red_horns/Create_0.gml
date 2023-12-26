/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_red_horns;

pow = 1;

item_func_1 = function(dmg)
{
	with(obj_item_red_horns)
	{
		pow *= 1.08;
		break;
	}
	
	return dmg;
}

item_func_2 = function(asp)
{
	if(!instance_exists(obj_item_red_horns)){return asp;}
	else
	{
		return asp*obj_item_red_horns.pow;
	}
}

item_push_function(global.item_effects.attack,item_func_1);
item_push_function(global.item_effects.asp_mult,item_func_2);