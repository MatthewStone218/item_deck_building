/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

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

room_goto(rm_main);

















