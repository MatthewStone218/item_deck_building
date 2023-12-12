/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(step == 1)
{
	image_alpha += 0.08;
	if(image_alpha > 1.2){room_goto(next_room);step = 2;}
}
else
{
	image_alpha -= 0.08;
	if(image_alpha <= 0){instance_destroy();}
}

x = CM_X;
y = CM_Y;