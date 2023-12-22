/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(ft_normal);
draw_set_alpha(1);

var str;
if(clicked == 0)
{
	var color = "#ffffff";
	var closer = "color";
	switch(sprite_index)
	{
		case spr_chest_1: color = "#ffffff"; break;
		case spr_chest_2: color = "#2177ee"; break;
		case spr_chest_3: color = "#fff98f"; break;
		case spr_chest_4: color = "rainbow"; closer = "rainbow" break;
	}
	str = string_replace_all(string_replace_all(text_load(global.csv_events,"treasure_chest_text_1"),"rate_color1",color),"color_closer",closer);
}
else if(clicked == 1) 
{
	str = $"{text_load(global.csv_events,"bonfire_text_2")}";
}

if(clicked < 2)
{
	var str2 = "[ft_normal][scale,3]"+str;
	var margin = 10;
	draw_sprite_ext(spr_window_2,0,x,y-300,3*(margin*2+string_width(str))/sprite_get_width(spr_window_2),3*(margin*2+string_height(str))/sprite_get_height(spr_window_2),0,c_white,1);

	scribble(str2)
	.align(fa_center,fa_middle)
	.draw(x,y-300, typist);
}














