/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

_alarm--;
var enemy = player_get_enemy();

if(_alarm < 0 and instance_exists(enemy))
{
	_alarm = 60/player_get_asp();
	var incy = instance_create_layer(obj_player.x,obj_player.y,"player",obj_throwing_ax);
	incy.image_xscale = sign(enemy.x-obj_player.x)*4;
	incy.hspeed = sign(enemy.x-obj_player.x)*10;
	if(incy.hspeed == 0){incy.hspeed = 1;}
	incy.angle_speed = -sign(enemy.x-obj_player.x)*18;
}


















