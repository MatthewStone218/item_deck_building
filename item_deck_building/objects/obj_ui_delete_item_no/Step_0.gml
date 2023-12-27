/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(mouse_check_pressed_me(mb_left))
{
	if(global.state == ST.DELETE)
	{
		audio_play_sound(snd_trashcan_2,1,0);
		call_later(1,time_source_units_frames,method(self,function(){with(obj_inv_cell){clicked = 0;};global.state = global.st_prev;obj_ui_delete_item.item_num = -1;}))
	}
}












