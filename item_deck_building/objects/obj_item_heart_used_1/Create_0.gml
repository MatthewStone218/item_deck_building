/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_heart_used_1;

item_func = function()
{
	if(obj_player.hp <= 0)
	{
		player_heal(player_get_hp_max());
		var incy = instance_find(obj_item_heart_used_1,0);
		with(incy)
		{
			instance_destroy();
			instance_create_depth(0,0,0,obj_item_heart_used_2);
		}
	}
}

item_push_function(global.item_effects.die,item_func);