/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

_alarm--;
var enemy = player_get_enemy();

if(_alarm < 0 and instance_exists(enemy))
{
	for(var i = 0; i < array_length(global.item_effects.far_act_start);i++)
	{
		var func = method(obj_player,global.item_effects.far_act_start[i]);
		func(_enemy);
	}
	_alarm = 60/player_get_asp();
	instance_create_layer(enemy.x-600,enemy.y-600,"enemy",obj_meteor);
}


















