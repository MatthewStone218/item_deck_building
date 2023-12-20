/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(global.map_show == 1)
{
	for(var i = 0; i < 12; i++)
	{
		shader_set(shd_black);
		var _x = lengthdir_x(5,12*(360/12));
		var _y = lengthdir_y(5,12*(360/12));
		draw_sprite_ext(sprite_index,image_index,x+_x,y+_y,image_xscale,image_yscale,0,c_white,image_alpha);
		shader_reset();
	}
	for(var i = 0; i < 12; i++)
	{
		shader_set(shd_white);
		var _x = lengthdir_x(10,12*(360/12));
		var _y = lengthdir_y(10,12*(360/12));
		draw_sprite_ext(sprite_index,image_index,x+_x,y+_y,image_xscale,image_yscale,0,c_white,image_alpha);
		shader_reset();
	}
	
	draw_self();
}














