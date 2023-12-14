/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(global.state == ST.COMBET)
{
	draw_sprite_ext(sprite_index,2,x,y,image_xscale,1,0,c_white,1);

	draw_sprite_ext(sprite_index,1,x,y,image_xscale,1,0,c_black,1);

	if(ef_hit_white > 0)
	{
		shader_set(shd_white);
		if(hp_yellow < hp)
		{
			draw_sprite_part_ext(sprite_index,1,15,0,(hp_yellow/hp_max)*850,sprite_height,x,y,image_xscale,1,c_green,1);
		}
		else
		{
			draw_sprite_part_ext(sprite_index,1,15,0,(hp_yellow/hp_max)*864,sprite_height,x,y,image_xscale,1,c_red,1);
		}
		draw_sprite_part_ext(sprite_index,1,15,0,(hp/hp_max)*864,sprite_height,x,y,image_xscale,1,#fff200,1);
		shader_reset();
	}
	else
	{
		if(hp_yellow < hp)
		{
			draw_sprite_part_ext(sprite_index,1,15,0,(hp_yellow/hp_max)*850,sprite_height,x,y,image_xscale,1,c_green,1);
		}
		else
		{
			draw_sprite_part_ext(sprite_index,1,15,0,(hp_yellow/hp_max)*864,sprite_height,x,y,image_xscale,1,c_red,1);
		}
		draw_sprite_part_ext(sprite_index,1,15,0,(hp/hp_max)*864,sprite_height,x,y,image_xscale,1,#fff200,1);
	}

	draw_sprite_ext(sprite_index,0,x+random_range(-ef_hit,ef_hit),y,image_xscale,1,0,c_white,1);

}







