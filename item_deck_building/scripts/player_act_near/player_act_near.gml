// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_act_near(_enemy){
	if(global.item_effects.act_near == -1)
	{
		if(image_index >= 6 and image_index <= 9)
		{
			var incy = instance_create_depth(obj_player.x,obj_player.y,0,obj_coll_checker,{image_xscale: obj_player.image_xscale,mask_index: obj_player.sprite_index});
		
			with(obj_enemy)
			{
				if(!variable_struct_exists(other.coll_objs,"_"+string(id)))
				{
					if(place_meeting(x,y,incy))
					{
						other.coll_objs[$"_"+string(id)] = 1;
						player_attack(player_get_ap(),id);
					}
				}
			}
		
			instance_destroy(incy);
		}
	}
	else
	{
		var func = method(obj_player,global.item_effects.act_near);
		func(_enemy);
	}
}