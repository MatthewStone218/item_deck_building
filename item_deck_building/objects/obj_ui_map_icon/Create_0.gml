/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


can_go = 0;

time = 0;

clicked = 0;
clicked_pos = [device_mouse_x_to_gui(0),device_mouse_y_to_gui(0)];

scale_start = image_xscale;

function create_jumsun()
{
	if(variable_instance_exists(id,"next_icon"))
	{
		for(var i = 0; i < array_length(next_icon); i++)
		{
			var incy = instance_create_layer(x,y,"jumsun",obj_jumsun);
			try
			{
			incy.image_xscale = point_distance(x,y,next_icon[i].x,next_icon[i].y)/sprite_get_width(incy.sprite_index);
			incy.image_angle = point_direction(x,y,next_icon[i].x,next_icon[i].y);
			}
			catch(e)
			{
				show_message(next_icon)
				show_message(y)
			}
		}
	}
}





