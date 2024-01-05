/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(!instance_exists(obj_player)){instance_destroy();exit;}
image_angle += 15;

x = obj_player.x+obj_player.image_xscale*100;
y = obj_player.y;

with(obj_enemy)
{
	if(x-other.x < 10)
	{
		x = other.x;
	}
	else
	{
		x += sign(other.x-x)*10;
	}
}
















