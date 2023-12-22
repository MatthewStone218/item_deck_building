/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
clicked = 0;

typist = scribble_typist();
typist.in(1, 60);
typist.ease(SCRIBBLE_EASE.ELASTIC, 0, -2, 1, 1, 0, 0.1);

var ran = random(100);

if(ran < 50)
{
	sprite_index = spr_chest_1;
}
else if(ran < 80)
{
	sprite_index = spr_chest_2;
}
else if(ran < 95)
{
	sprite_index = spr_chest_3;
}
else
{
	sprite_index = spr_chest_4;
}

image_speed = 0;













