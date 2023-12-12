// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function create_popup(text,xx = CM_W/2,yy = CM_H/2 + 100, scale = 1,col1 = c_black, col2 = c_white){
	var incy = instance_create_depth(xx,yy,0,obj_popup);
	incy.text = text;
	incy.text_scale = scale;
	incy.col1 = col1;
	incy.col2 = col2;
}