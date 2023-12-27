/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(ft_normal_en_kr);
draw_set_alpha(1);

var width = sprite_width- 24;

draw_sprite_ext(spr_ui_exp,0,bbox_left+16,bbox_top+16,width*min(1,global.exp/global.exp_max),4,0,c_white,1);

if(collision_point(mouse_x,mouse_y,id,0,0))
{
	obj_info.str = string_replace(string_replace(text_load(global.csv_system,"exp_state"),"__exp_max__",string_format(global.exp_max,1,0)),"__exp__",string_format(global.exp,1,0))
	obj_info.x = mouse_x;
	obj_info.y = 130;
}










