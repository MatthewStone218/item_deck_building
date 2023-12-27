/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(mouse_check_pressed_me(mb_left))
{
	global.language = lang;
	
	ini_open("lang.ini");
	
	ini_write_real("lang","lang",lang);
	
	ini_close();
	
	with(obj_flag){image_blend = c_gray;}
	image_blend = c_white;
	with(obj_data_items){event_perform(ev_create,0)}
	
	if(global.language == LG.CH)
	{
		global.font_normal = ft_normal_ch;
		scribble_font_set_default("ft_normal_ch");
	}
	else
	{
		global.font_normal = ft_normal_kr_en_jp;
		scribble_font_set_default("ft_normal_kr_en_jp");
	}
	
}















