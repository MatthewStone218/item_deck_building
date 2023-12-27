/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
if(global.state == ST.REWARD or global.st_prev == ST.REWARD)
{
	draw_set_alpha(1);
	draw_set_font(ft_normal_en_kr);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_self();
	
	var str = text_load(global.csv_system,"refresh");
	var str2 = string_replace(text_load(global.csv_system,"left"),"num",global.refresh_left);

	if(image_index == 1)
	{
		draw_set_color(#000000);
		draw_text_transformed(x+8,y,str,4,4,0);
		draw_text_transformed(x+8,y,str,4,4,0);
		draw_text_transformed(x+4,y,str,4,4,0);
		draw_text_transformed(x+8,y-4,str,4,4,0);

		draw_set_color(#6F4704);
		draw_text_transformed(x+4,y-4,str,4,4,0);
	}
	else
	{
		draw_set_color(#D5B888);
		draw_text_transformed(x+8,y,str,4,4,0);
		draw_text_transformed(x+8,y,str,4,4,0);
		draw_text_transformed(x+4,y,str,4,4,0);
		draw_text_transformed(x+8,y-4,str,4,4,0);

		draw_set_color(#522F2B);
		draw_text_transformed(x+4,y-4,str,4,4,0);
	}
	
	draw_set_color(#ffffff);
	draw_text_transformed(x,bbox_bottom+30,str2,3,3,0);
}








