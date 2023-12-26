/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

time += 0.05;
if(time > pi*2){time -= pi*2;}

if(can_go)
{
	image_xscale = sin(time)*0.1 + 0.95;
	image_yscale = image_xscale;
	image_alpha = collision_point(mouse_x,mouse_y,id,0,0) ? 1 : 0.9;
}
else
{
	image_xscale = 1;
	image_yscale = 1;
	image_alpha = 0.7;
}

image_xscale *= scale_start;
image_yscale *= scale_start;

x = obj_map.x+xstart;

if(mouse_check_button_released(mb_left) and clicked and point_distance(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),clicked_pos[0],clicked_pos[1]) < 20)
{
	audio_play_sound(snd_confirm_2,1,0)
	
	obj_map.icon_now = id;
	
	with(obj_ui_map_icon)
	{
		can_go = 0;
	}
	global.can_goto_next_event = 0;
	
	global.state = ST.MOVING_EVENT;
	global.st_prev = ST.MOVING_EVENT;
	var incy = instance_create_layer(0,0,"move_ef",obj_ef_move_event,{type: ev_type});
}

if(!mouse_check_button(mb_left)){clicked = 0;}

if(mouse_check_pressed_me(mb_left) and can_go and global.can_goto_next_event)
{
	clicked = 1;
	clicked_pos = [device_mouse_x_to_gui(0),device_mouse_y_to_gui(0)];
}





