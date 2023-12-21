/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE

if(global.state == ST.COMBET or global.st_prev == ST.COMBET or global.state == ST.MOVING_EVENT)
{
	draw_sprite_ext(sprite_index,2,x,y,image_xscale,1,0,c_white,1);

	draw_sprite_ext(sprite_index,1,x,y,image_xscale,1,0,c_black,1);

	if(ef_hit_white > 0)
	{
		shader_set(shd_white);
		if(hp_yellow < hp)
		{
			draw_sprite_part_ext(sprite_index,1,15,0,(hp_yellow/hp_max)*852,sprite_height,x-16,y,image_xscale,1,c_green,1);
		}
		else
		{
			draw_sprite_part_ext(sprite_index,1,15,0,(hp_yellow/hp_max)*852,sprite_height,x-16,y,image_xscale,1,c_red,1);
		}
		draw_sprite_part_ext(sprite_index,1,15,0,(hp/hp_max)*852,sprite_height,x-16,y,image_xscale,1,c_white,1);
		shader_reset();
	}
	else
	{
		if(hp_yellow < hp)
		{
			draw_sprite_part_ext(sprite_index,1,15,0,(hp/hp_max)*852,sprite_height,x-16,y,image_xscale,1,#00ff00,1);
			draw_sprite_part_ext(sprite_index,1,15,0,(hp_yellow/hp_max)*852,sprite_height,x-16,y,image_xscale,1,c_white,1);
		}
		else
		{
			draw_sprite_part_ext(sprite_index,1,15,0,(hp_yellow/hp_max)*852,sprite_height,x-16,y,image_xscale,1,c_red,1);
			draw_sprite_part_ext(sprite_index,1,15,0,(hp/hp_max)*852,sprite_height,x-16,y,image_xscale,1,c_white,1);
		}
	}

	draw_sprite_ext(sprite_index,0,x+random_range(-ef_hit,ef_hit),y,image_xscale,1,0,c_white,1);

}







