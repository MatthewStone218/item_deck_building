/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
depth -= 1;
image_xscale = 4;
image_yscale = 4;
speed = 20;
direction = random(360);

image_angle = direction

angle_speed = random(20);

can_hit = 0;

var _enemy = player_get_enemy();
if(instance_exists(_enemy))
{
	direction = 180+point_direction(x,y,_enemy.x,_enemy.y)+random_range(-30,30)
}

alarm[0] = 30;








