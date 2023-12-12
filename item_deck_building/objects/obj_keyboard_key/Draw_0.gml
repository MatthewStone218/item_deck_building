/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(ft_keyboard);
draw_set_alpha(image_alpha);
draw_set_color(c_black);
draw_text_inbox(x,y,text[global.kor_mode == "ko_kr"][keyboard_check(vk_shift) or keyboard_check_v(vk_shift)],1,1,0,sprite_width);
draw_set_alpha(1);