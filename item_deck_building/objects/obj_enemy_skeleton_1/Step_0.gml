/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
hit = max(hit-1,0);

yspd += grv;

delay = max(0,delay-1);

if(abs(xspd) < 2){xspd = 0;}else{xspd -= 2*sign(xspd);}

xspd_knock /= 1.2;

if(hit == 0 and sprite_index == spr_enemy_skeleton_warrior_idle)
{
	if(point_distance(x,y,obj_player.x,obj_player.y) > 200)
	{
		sprite_index = spr_enemy_skeleton_warrior_run;
		image_index = 0;
	}
	else
	{
		if(delay == 0)
		{
			attacked = 0;
			sprite_index = spr_enemy_skeleton_warrior_attack;
			image_index = 0;
			delay = delay_max;
		}
		else
		{
			attacked = 0;
			sprite_index = spr_enemy_skeleton_warrior_idle;
			image_index = 0;
		}
	}
}

if(sprite_index == spr_enemy_skeleton_warrior_run)
{
	image_xscale = sign(obj_player.x-x);
	if(image_xscale == 0){image_xscale = 1;}
	xspd += 5*sign(obj_player.x-x);
	if(abs(xspd) > 4){xspd = sign(xspd)*4;}
}
else if(sprite_index == spr_enemy_skeleton_warrior_attack and attacked == 0)
{
	if(image_index >= 8 and image_index <= 12)
	{
		attacked = 1;
		player_get_hit();
	}
}

move(xspd_knock+xspd,yspd);
if(place_meeting(x,y,obj_sol)){yspd = 0;}



