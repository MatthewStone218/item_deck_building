/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(ft_normal);
draw_set_alpha(1);

var width = sprite_width- 24;

draw_sprite_ext(spr_ui_exp,0,bbox_left+16,bbox_top+16,width*min(1,global.exp/global.exp_max),4,0,c_white,1);














