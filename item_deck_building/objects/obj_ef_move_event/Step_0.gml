/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(step == 0)
{
	image_alpha += 0.08;
	if(image_alpha > 1.5)
	{
		step = 1;
		if(global.game_level == 1)
		{
			room_goto(rm_game);
		}
		else if(global.game_level == 2)
		{
			room_goto(rm_game_2);
		}
		//show_message(type)
		
		for(var i = 0; i < array_length(global.item_effects.stage_end);i++)
		{
			var func = method(obj_player,global.item_effects.stage_end[i]);
			func();
		}
				
		for(var i = 0; i < array_length(global.item_effects.stage_start);i++)
		{
			var func = method(obj_player,global.item_effects.stage_start[i]);
			func();
		}
		
		event_array_create(type);
		var func = event_array_pick();
		call_later(1,time_source_units_frames,func);
		global.map_show = 0;
		global.can_goto_next_event = 0;
		global.floor_level += 1;
		global.boss_fight = false;
	}
}
else
{
	image_alpha -= 0.08;
	if(image_alpha < 0)
	{
		instance_destroy();
	}
}









