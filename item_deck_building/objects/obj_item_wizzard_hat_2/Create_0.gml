/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

data = obj_data_items.item_wizzard_hat_2;

item_func = function(ap)
{
	return ap+30;
}

item_push_function(global.item_effects.sp_sum,item_func)