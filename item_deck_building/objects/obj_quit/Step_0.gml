/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(gamepad_button_check(0,gp_start))
{
	press++
	if(press > 240){game_end();}
}
else
{
	press = 0;
}













