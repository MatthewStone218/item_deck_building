/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_feather_heal;

item_func = function()
{
	if(instance_exists(obj_enemy))
	{
		instance_create_layer(obj_player.x,obj_player.y,"player",obj_fether_heal);
	}
}

item_push_function(global.item_effects.heal,item_func);