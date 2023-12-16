/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE

time += 0.07;

if(selected == 0)
{
	y += (ystart+300-y)/10;
}


image_alpha -= 0.04;

if(image_alpha < 0)
{
	instance_destroy();
}

white -= 0.04;
white = max(0,white);





