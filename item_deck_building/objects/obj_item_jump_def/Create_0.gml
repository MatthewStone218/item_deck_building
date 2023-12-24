/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

data = obj_data_items.item_jump_def;

item_func = function(dmg)
{
	var ratio = 1;
	with(obj_player){if(!place_meeting(x,y+1,obj_sol)){ratio = 0.5;}}
	return dmg*ratio;
}

item_push_function(global.item_effects.def_mult,item_func)