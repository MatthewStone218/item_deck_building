/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
moving_x = 0;
player_act();

if(moving_x == 0)
{
	if(abs(xspd) < xspd_dump){xspd = 0;}else{xspd -= sign(xspd)*xspd_dump;}
}

yspd += grv

move(xspd,yspd);



if(mouse_check_button(mb_left))
{
	x = mouse_x;
	y = mouse_y;
}	

