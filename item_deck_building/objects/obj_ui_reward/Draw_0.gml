/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE

if(global.state == ST.REWARD or global.st_prev == ST.REWARD or global.state == ST.UPGRADE)
{
	if(item != -1)
	{
		draw_self();
		draw_sprite_ext(spr_window_4,0,x,bbox_top,2,2,0,c_white,1);
		draw_sprite_ext(item.spr,-1,x-sprite_get_width(item.spr)*2,bbox_top-sprite_get_height(item.spr)*2,4,4,0,c_white,1);

		if(global.state == ST.REWARD)
		{
			var str_up = (item.up_point != -1) ? $"\n\n[scale,2][rainbow]{text_load(global.csv_system,"up_required")}[/rainbow]{item.up_point}" : "\n\n[scale,2]"+text_load(global.csv_system,"up_invalid");
		}
		else
		{
			var str_up = "";
		}
		
		var _string = $"[scale,3]{item.name}[/scale,2][scale,2]\n\n{item.state}";	



		//Draw our string with wrapping, and using a typist for the typewriter effect
		scribble(_string)
		.wrap(sprite_width-50)
		.align(fa_center,fa_top)
		.line_height(35,35)
		.draw(x, bbox_top+80, typist);
		
		scribble(str_up)
		.align(fa_center,fa_middle)
		.draw(x, bbox_bottom-80);
	}
}