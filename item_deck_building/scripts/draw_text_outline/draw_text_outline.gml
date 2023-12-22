// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function draw_text_outline(xx,yy,str,xscale,yscale,color1,color2,thickness,n){
	for(var i = 0; i < n; i++)
	{
		var _x = lengthdir_x(thickness,(360/n)*i);
		var _y = lengthdir_y(thickness,(360/n)*i);
		
		scribble(str)
		.blend(color1,draw_get_alpha())
		.align(draw_get_halign(),draw_get_valign())
		.transform(xscale,yscale)
		.draw(xx+_x,yy+_y);
	}

	scribble(str)
	.blend(color2,draw_get_alpha())
	.align(draw_get_halign(),draw_get_valign())
	.transform(xscale,yscale)
	.draw(xx,yy);
}