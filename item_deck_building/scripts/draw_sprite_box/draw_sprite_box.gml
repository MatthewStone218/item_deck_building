// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function draw_sprite_box(spr,subimg,left,top,right,bottom,color)
{
	draw_sprite_ext(spr,subimg,left+(sprite_get_xoffset(spr)*(right-left)/sprite_get_width(spr)),top+(sprite_get_yoffset(spr)*(bottom-top)/sprite_get_height(spr)),(right-left)/sprite_get_width(spr),(bottom-top)/sprite_get_height(spr),0,color,draw_get_alpha());
}