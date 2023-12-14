/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE

xspd_knockback *= 0.8;
hit = max(hit-1,0);
moving_x = 0;
player_act();

if(moving_x == 0)
{
	if(abs(xspd) < xspd_dump){xspd = 0;}else{xspd -= sign(xspd)*xspd_dump;}
}

yspd += grv;

move(xspd+xspd_knockback,yspd);

if(place_meeting(x,y+1,obj_sol)){yspd = 0;}
