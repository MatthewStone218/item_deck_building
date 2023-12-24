/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_ignore_damage_5sec;

time = 0;

item_func = function(dmg)
{
	if(instance_exists(obj_item_ignore_damage_5sec))
	{
		if(global.state == ST.COMBET and obj_item_ignore_damage_5sec.time > 0){return 1;}
		else
		{
			return dmg;
		}
	}
	else
	{
		return dmg;
	}
}

item_push_function(global.item_effects.def_mult_post,item_func);