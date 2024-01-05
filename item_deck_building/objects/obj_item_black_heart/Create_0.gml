/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_black_heart;
global.black_heart_used = 0;

item_func = function()
{
	if(variable_global_exists("black_heart_used") and global.black_heart_used == 0)
	{
		global.black_heart_used = 1;
		player_get_hit(1,noone);
	}
}

item_func_2 = function()
{
	global.black_heart_used = 0;
}

item_push_function(global.item_effects.get_hit,item_func);
item_push_function(global.item_effects.get_hit_post,item_func_2);