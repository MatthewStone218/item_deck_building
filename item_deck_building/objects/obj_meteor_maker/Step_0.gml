/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

_alarm--;
if(_alarm < 0)
{
	_alarm = 50/player_get_asp();
	var enemy = player_get_enemy();
	instance_create_layer(enemy.x-600,enemy.y-600,"enemy",obj_meteor);
}


















