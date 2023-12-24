/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_inherited();

data = obj_data_items.obj_item_meteor;

item_func1 = function(_enemy)
{
	act = [1,ACT_TYPE.ACTING_FAR];
	sprite_index = spr_player_idle;
	image_index = 0;
	image_speed = 1;
	
	var _dir = sign(_enemy.x-x);
	if(_dir == 1){image_xscale = 1;}else{image_xscale = -1;}
	instance_create_depth(obj_player.x,obj_player.y,obj_player.depth-1,obj_meteor_maker);
}
item_func2 = function(_enemy)
{
	if(player_check_can_act_near(_enemy))
	{
		player_start_act_near(_enemy);
		instance_destroy(obj_meteor_maker);
	}
}
item_func3 = function(){};

global.item_effects.act_start_far = item_func1;
global.item_effects.act_far = item_func2;
global.item_effects.act_animation_end_far = item_func3;