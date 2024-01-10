/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(press > 0)
{
	draw_set_font(global.font_normal);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_outline(1920/2,1080/2,$"Quitting game...{string_format(6*(1-(press/240)),1,0)}",4,4,c_black,c_red,4,4);
}



















