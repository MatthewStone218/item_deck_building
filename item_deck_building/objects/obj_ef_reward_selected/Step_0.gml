/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
if(selected == 0){y += 2;}
image_alpha -= 0.02;

if(image_alpha < 0)
{
	instance_destroy();
}

white -= 0.08;
white = max(0,white);





