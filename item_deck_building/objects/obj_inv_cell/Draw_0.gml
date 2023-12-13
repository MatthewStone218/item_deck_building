/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(global.inv_count >= num)
{
	draw_self();
	if(obj_inv.inv[num-1] != -1)
	{
		draw_sprite_ext(obj_inv.inv[num-1].data.spr,-1,x-(2*sprite_get_width(obj_inv.inv[num-1].data.spr)),y-(2*sprite_get_height(obj_inv.inv[num-1].data.spr)),4,4,0,c_white,1);
	}
}






