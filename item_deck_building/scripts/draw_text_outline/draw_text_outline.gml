// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function draw_text_outline(xx,yy,str,xscale,yscale,color1,color2,thickness,n){
	draw_set_color(color1);
	for(var i = 0; i < n; i++)
	{
		var _x = lengthdir_x(thickness,(360/n)*i);
		var _y = lengthdir_y(thickness,(360/n)*i);
		
		draw_text_transformed(xx+_x,yy+_y,str,xscale,yscale,0);
	}
	draw_set_color(color2);
	draw_text_transformed(xx,yy,str,xscale,yscale,0);
}