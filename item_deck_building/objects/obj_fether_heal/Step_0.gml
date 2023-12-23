/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var _enemy = player_get_enemy();

hspeed += lengthdir_x(2,point_direction(x,y,_enemy.x,_enemy.y));
vspeed += lengthdir_y(2,point_direction(x,y,_enemy.x,_enemy.y));

x += lengthdir_x(3,point_direction(x,y,_enemy.x,_enemy.y));
y += lengthdir_y(3,point_direction(x,y,_enemy.x,_enemy.y));

image_angle += angle_speed;












