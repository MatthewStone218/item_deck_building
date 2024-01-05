/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

data = obj_data_items.item_fools_coat;

item_func1 = function(_enemy)
{
}

item_func2 = function(_enemy)
{
}

item_func3 = function(){};

item_func4 = function(dmg)
{
	return dmg*0.5;
}

item_push_function(global.item_effects.def_mult,item_func4)

global.item_effects.act_start_near = item_func1;
global.item_effects.act_near = item_func2;
global.item_effects.act_animation_end_near = item_func3;