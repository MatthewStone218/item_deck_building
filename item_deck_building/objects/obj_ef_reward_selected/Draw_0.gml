/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

draw_self();
draw_sprite_ext(spr_window_4,0,x,bbox_top,2,2,0,c_white,image_alpha);
draw_sprite_ext(spr,-1,x-sprite_get_width(spr)*2,bbox_top-sprite_get_height(spr)*2,4,4,0,c_white,image_alpha);

var _string = $"[alpha,{image_alpha}][scale,3]{name}[/fa_center][/scale,2][scale,2]\n\n{state}[/alpha]";

scribble(_string)
.wrap(sprite_width-50)
.align(fa_center,fa_top)
.line_height(35,35)
.draw(x, bbox_top+80, typist);
	
if(white > 0)
{
	shader_set(shd_white_add);
	shader_set_uniform_f(shader_get_uniform(shd_white_add,"u_a"),3);
	gpu_set_blendmode(bm_add);
	var temp = image_alpha;
	image_alpha = white;
	draw_self();
	image_alpha = temp;
	draw_sprite_ext(spr_window_4,0,x,bbox_top,2,2,0,c_white,white);
	draw_sprite_ext(spr,-1,x-sprite_get_width(spr)*2,bbox_top-sprite_get_height(spr)*2,4,4,0,c_white,white);

	var _string = $"[alpha,{white}][scale,3]{name}[/fa_center][/scale,2][scale,2]\n\n{state}[/alpha]";

	scribble(_string)
	.wrap(sprite_width-50)
	.align(fa_center,fa_top)
	.line_height(35,35)
	.draw(x, bbox_top+80, typist);
	gpu_set_blendmode(bm_normal)
}


