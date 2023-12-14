/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
hit = max(hit-1,0);

yspd += grv;

delay = max(0,delay-1);

if(abs(xspd) < 1){xspd = 0;}else{xspd -= sign(xspd);}

xspd_knock *= 0.8;

if(hp > 0)
	{
	if(hit == 0 and sprite_index == spr_enemy_skeleton_warrior_idle)
	{
		if(point_distance(x,y,obj_player.x,obj_player.y) > 200)
		{
			sprite_index = spr_enemy_skeleton_warrior_run;
			image_index = 0;
		}
		else
		{
			image_xscale = sign(obj_player.x-x);
			if(image_xscale == 0){image_xscale = 1;}
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
		if(point_distance(x,y,obj_player.x,obj_player.y) <= 200)
		{
			image_xscale = sign(obj_player.x-x);
			if(image_xscale == 0){image_xscale = 1;}
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
	else if(sprite_index == spr_enemy_skeleton_warrior_attack and attacked == 0)
	{
		if(image_index >= 6 and image_index <= 9)
		{
			mask_index = spr_enemy_skeleton_warrior_attack;
			if(place_meeting(x,y,obj_player))
			{
				attacked = 1;
				player_get_hit(5);
			}
			mask_index = spr_enemy_skeleton_warrior_idle;
		}
	}
}
else
{
	var incy = instance_create_depth(x,y,depth,obj_ef_die);
	incy.sprite_index = spr_enemy_skeleton_warrior_die;
	incy.image_xscale = image_xscale;
	incy.hit = 6;
	instance_destroy();exit;
}

move(xspd_knock+xspd,yspd);
if(place_meeting(x,y,obj_sol)){yspd = 0;}

