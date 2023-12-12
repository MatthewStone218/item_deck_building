// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조

function draw_text_inbox(xx,yy,text,xscale,yscale,angle,w){
	var _scale = 1;

	if(string_width(text) > 0){_scale = min(1,w/(string_width(text)*xscale));}
	draw_text_transformed(xx,yy,text,_scale*xscale,_scale*yscale,angle);
}