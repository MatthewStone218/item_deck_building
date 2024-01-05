/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.item_black_ring;

item_func = function()
{
	if(instance_exists(obj_player) and instance_exists(obj_enemy))
	{
		var enemy = noone;
		var dis = 999999;
		with(obj_enemy)
		{
			if(point_distance(x,y,obj_player.x,obj_player.y) < dis)
			{
				dis = point_distance(x,y,obj_player.x,obj_player.y);
				enemy = id;
			}
		}
		
		player_attack(5,enemy);
	}
}

item_push_function(global.item_effects.get_hit,item_func);