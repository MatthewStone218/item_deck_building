/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE

if(item != -1)
{
	var str_up = (item.up_point != -1) ? $"\n\n[rainbow]{text_load(global.csv_system,"up_required")}[/rainbow]{item.up_point}" : "\n\n"+text_load(global.csv_system,"up_invalid");
	var _string = $"[scale,3]{item.name}[/scale,2][scale,2]\n\n{item.state}";	
	
	var _scrib = scribble(_string+str_up)
	.wrap(sprite_width-50)
	.align(fa_center,fa_top)
	.line_height(35,35)
	//Draw our string with wrapping, and using a typist for the typewriter effect
		
	image_yscale = (_scrib.get_height()+140)/sprite_get_height(spr_window_4);

	draw_self();
	draw_sprite_ext(spr_window_4,0,x,bbox_top,2,2,0,c_white,1);
	draw_sprite_ext(item.spr,-1,x-sprite_get_width(item.spr)*2,bbox_top-sprite_get_height(item.spr)*2,4,4,0,c_white,1);
		
	_scrib
	.draw(x, bbox_top+80, typist);
}