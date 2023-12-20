/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

time += 0.05;
if(time > pi*2){time -= pi*2;}

if(can_go)
{
	image_xscale = sin(time)*0.1 + 0.95;
	image_yscale = image_xscale;
	image_alpha = collision_point(mouse_x,mouse_y,id,0,0) ? 1 : 0.8;
}
else
{
	image_xscale = 1;
	image_yscale = 1;
	image_alpha = 0.6;
}

x = obj_map.x+xstart;

if(mouse_check_pressed_me(mb_left) and can_go and global.can_goto_next_event)
{
	obj_map.icon_now = id;
	
	with(obj_ui_map_icon)
	{
		can_go = 0;
	}
	global.can_goto_next_event = 0;
	
	global.state = ST.MOVING_EVENT;
	global.st_prev = ST.MOVING_EVENT;

	instance_create_layer(0,0,"move_ef",obj_ef_move_event,{type: ev_type});
}








