/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_windsoul_2;

item_func = function(dmg,enemy)
{
	return dmg+dmg*(2*point_distance(x,y,enemy.x,enemy.y)/2202);
}

item_push_function(global.item_effects.attack,item_func);