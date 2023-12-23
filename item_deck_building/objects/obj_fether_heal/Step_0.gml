/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var _enemy = player_get_enemy();

if(!instance_exists(_enemy)){instance_destroy();exit;}

hspeed += lengthdir_x(0.5,point_direction(x,y,_enemy.x,_enemy.y));
vspeed += lengthdir_y(0.5,point_direction(x,y,_enemy.x,_enemy.y));

x += lengthdir_x(1,point_direction(x,y,_enemy.x,_enemy.y));
y += lengthdir_y(1,point_direction(x,y,_enemy.x,_enemy.y));

image_angle += angle_speed;












