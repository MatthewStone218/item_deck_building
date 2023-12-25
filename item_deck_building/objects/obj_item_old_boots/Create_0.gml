/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

data = obj_data_items.item_old_boots;


item_func = function(spd)
{
	return spd*1.3;
}

item_push_function(global.item_effects.spd_mult,item_func)