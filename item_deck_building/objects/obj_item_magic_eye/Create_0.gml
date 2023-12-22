/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

data = obj_data_items.item_magic_eye;

item_func = function()
{
	return instance_furthest(obj_player.x,obj_player.y,obj_enemy);
}

global.item_effects.check_enemy = item_func;