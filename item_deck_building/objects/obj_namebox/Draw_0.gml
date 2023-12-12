/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(live_call()){return live_result;}
if(sprite_index != -1){draw_self();}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(ft_textbox);
draw_set_color(text_color);

draw_text_inbox(x,y,real_string,text_scale,text_scale,0,sprite_width);