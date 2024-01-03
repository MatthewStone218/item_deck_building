/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(global.map_show == 1 and (room == rm_game or room == rm_game_2))
{
	/*
	for(var i = 0; i < 20; i++)
	{
		shader_set(shd_white);
		var _x = lengthdir_x(10,i*(360/20));
		var _y = lengthdir_y(10,i*(360/20));
		draw_sprite_ext(sprite_index,image_index,x+_x,y+_y,image_xscale,image_yscale,0,c_white,image_alpha);
		shader_reset();
	}
	
	for(var i = 0; i < 20; i++)
	{
		shader_set(shd_black);
		var _x = lengthdir_x(4,i*(360/20));
		var _y = lengthdir_y(4,i*(360/20));
		draw_sprite_ext(sprite_index,image_index,x+_x,y+_y,image_xscale,image_yscale,0,c_white,image_alpha);
		shader_reset();
	}
	*/
	draw_self();
}














