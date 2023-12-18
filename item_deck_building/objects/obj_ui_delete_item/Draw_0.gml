/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE

if(global.state == ST.DELETE)
{
	draw_self();
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(ft_normal);
	draw_set_color(c_white);
	draw_text_transformed(x,y-140,"Wanna throw away this item?",4,4,0);
	draw_sprite_ext(spr_window_2,0,x,y-10,2,2,0,c_white,1);
	draw_sprite_ext(obj_inv.inv[item_num].data.spr,0,x-sprite_get_width(obj_inv.inv[item_num].data.spr)*2,y-10-sprite_get_height(obj_inv.inv[item_num].data.spr)*2,4,4,0,c_white,1);
	draw_set_alpha(1);
}
else
{
	if(global.map_show == 1)
	{
		with(obj_inv_cell){clicked = 0;};
		obj_map.state_prev = global.st_prev;
		obj_ui_delete_item.item_num = -1;
	}
}










