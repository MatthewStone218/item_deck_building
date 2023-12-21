/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
x = CM_X+CM_W/2;
y = CM_Y+CM_H*0.35;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(ft_normal);
draw_set_alpha(1);

str = text_load(global.csv_system,"levelup");

var str2 = $"[ft_normal][scale,3]"+str;
var margin = 20;
draw_sprite_ext(spr_window_2,0,x,y,3*(margin*2+string_width(str))/sprite_get_width(spr_window_2),3*(margin*2+string_height(str))/sprite_get_height(spr_window_2),0,c_white,image_alpha);

scribble(str2)
.align(fa_center,fa_middle)
.blend(c_white, image_alpha)
.draw(x,y, typist);















