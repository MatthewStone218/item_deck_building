/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

global.exp += 100;

if(global.demo)
{
	call_later(90,time_source_units_frames,function(){instance_create_layer(0,0,"move_ef_2",obj_ef_demo_end)});
}
else
{
	global.floor_level = 0;
	global.game_level = 2;
	call_later(90,time_source_units_frames,function(){instance_create_layer(0,0,"move_ef_2",obj_ef_goto_game_2)});
}











