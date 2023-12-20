/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
hit = max(hit-1,0);

yspd += grv;

delay = max(0,delay-1);

if(abs(xspd) < 1){xspd = 0;}else{xspd -= sign(xspd);}

if(sprite_index == atk_spr)
{
	xspd_knock *= 0.3;
}
else
{
	xspd_knock *= 0.8;
}

if(hp > 0)
	{
	if(hit == 0 and sprite_index == idle_spr)
	{
		if(!place_meeting_mask(x-sign(obj_player.x-x)*20,y,obj_player,atk_spr))
		{
			sprite_index = run_spr;
			image_index = 0;
		}
		else
		{
			image_xscale = sign(obj_player.x-x);
			if(image_xscale == 0){image_xscale = 1;}
			if(delay == 0)
			{
				attacked = 0;
				sprite_index = atk_spr;
				image_index = 0;
				delay = delay_max;
			}
			else
			{
				attacked = 0;
				sprite_index = idle_spr;
				image_index = 0;
			}
		}
	}

	if(sprite_index == run_spr)
	{
		image_xscale = sign(obj_player.x-x);
		if(image_xscale == 0){image_xscale = 1;}
		xspd += 5*sign(obj_player.x-x);
		if(abs(xspd) > 4){xspd = sign(xspd)*4;}
		if(place_meeting_mask(x-sign(obj_player.x-x)*20,y,obj_player,atk_spr))
		{
			image_xscale = sign(obj_player.x-x);
			if(image_xscale == 0){image_xscale = 1;}
			if(delay == 0)
			{
				attacked = 0;
				sprite_index = atk_spr;
				image_index = 0;
				delay = delay_max;
			}
			else
			{
				attacked = 0;
				sprite_index = idle_spr;
				image_index = 0;
			}
		}
	}
	else if(sprite_index == atk_spr and attacked == 0)
	{
		if(image_index >= 10 and image_index <= 15)
		{
			mask_index = atk_spr;
			if(place_meeting(x,y,obj_player))
			{
				attacked = 1;
				player_get_hit(5);
			}
			mask_index = idle_spr;
		}
	}
}
else
{
	var incy = instance_create_depth(x,y,depth,obj_ef_die);
	incy.sprite_index = die_spr;
	incy.image_xscale = image_xscale;
	incy.hit = 6;
	instance_destroy();exit;
}

move(xspd_knock+xspd,yspd);
if(place_meeting(x,y,obj_sol)){yspd = 0;}

