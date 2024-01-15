/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(global.map_created == 0)
{
	global.map_created = 1;
	y_arr = [
		[512],
		[512-200,512+200],
		[512-300,512,512+300],
		[512-360,512-110,512+110,512+360]
	];


	var x_sep = 360;
	var num = 30;

	var y_prev = [512];
	incy[0] = instance_create_layer(512,512,"map_icon",obj_ui_map_icon_item);
	with(incy[0]){obj_map.icon_now = id;}

	for(var i = 0; i < num; i++)
	{
		var y_now = i == num-1 ? y_arr[0]: y_arr[irandom(3)];
		var ins = i == num-1 ? obj_ui_map_icon_boss: obj_map_icon_normal;
	
		if(array_length(y_prev) == 1 and array_length(y_now) == 1)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy[0].next_icon = [incy2[0]];
		
			incy[0] = incy2[0];
		}
		else if(array_length(y_prev) == 1 and array_length(y_now) == 2)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy2[1] = instance_create_layer(512+((i+1)*x_sep),y_now[1],"map_icon",ins);
			incy[0].next_icon = [incy2[0],incy2[1]];
		
			incy[0] = incy2[0];
			incy[1] = incy2[1];
		}
		else if(array_length(y_prev) == 1 and array_length(y_now) == 3)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy2[1] = instance_create_layer(512+((i+1)*x_sep),y_now[1],"map_icon",ins);
			incy2[2] = instance_create_layer(512+((i+1)*x_sep),y_now[2],"map_icon",ins);
			incy[0].next_icon = [incy2[0],incy2[1],incy2[2]];
		
			incy[0] = incy2[0];
			incy[1] = incy2[1];
			incy[2] = incy2[2];
		}
		else if(array_length(y_prev) == 1 and array_length(y_now) == 4)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy2[1] = instance_create_layer(512+((i+1)*x_sep),y_now[1],"map_icon",ins);
			incy2[2] = instance_create_layer(512+((i+1)*x_sep),y_now[2],"map_icon",ins);
			incy2[3] = instance_create_layer(512+((i+1)*x_sep),y_now[3],"map_icon",ins);
			incy[0].next_icon = [incy2[0],incy2[1],incy2[2],incy2[3]];
		
			incy[0] = incy2[0];
			incy[1] = incy2[1];
			incy[2] = incy2[2];
			incy[3] = incy2[3];
		}
		else if(array_length(y_prev) == 2 and array_length(y_now) == 1)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy[0].next_icon = [incy2[0]];
			incy[1].next_icon = [incy2[0]];
		
			incy[0] = incy2[0];
		}
		else if(array_length(y_prev) == 2 and array_length(y_now) == 2)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy2[1] = instance_create_layer(512+((i+1)*x_sep),y_now[1],"map_icon",ins);
			incy[0].next_icon = [incy2[0]];
			incy[1].next_icon = [incy2[1]];
		
			incy[0] = incy2[0];
			incy[1] = incy2[1];
		}
		else if(array_length(y_prev) == 2 and array_length(y_now) == 3)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy2[1] = instance_create_layer(512+((i+1)*x_sep),y_now[1],"map_icon",ins);
			incy2[2] = instance_create_layer(512+((i+1)*x_sep),y_now[2],"map_icon",ins);
			incy[0].next_icon = [incy2[0],incy2[1]];
			incy[1].next_icon = [incy2[1],incy2[2]];
		
			incy[0] = incy2[0];
			incy[1] = incy2[1];
			incy[2] = incy2[2];
		}
		else if(array_length(y_prev) == 2 and array_length(y_now) == 4)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy2[1] = instance_create_layer(512+((i+1)*x_sep),y_now[1],"map_icon",ins);
			incy2[2] = instance_create_layer(512+((i+1)*x_sep),y_now[2],"map_icon",ins);
			incy2[3] = instance_create_layer(512+((i+1)*x_sep),y_now[3],"map_icon",ins);
			incy[0].next_icon = [incy2[0],incy2[1]];
			incy[1].next_icon = [incy2[2],incy2[3]];
		
			incy[0] = incy2[0];
			incy[1] = incy2[1];
			incy[2] = incy2[2];
			incy[3] = incy2[3];
		}
		else if(array_length(y_prev) == 3 and array_length(y_now) == 1)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy[0].next_icon = [incy2[0]];
			incy[1].next_icon = [incy2[0]];
			incy[2].next_icon = [incy2[0]];
		
			incy[0] = incy2[0];
		}
		else if(array_length(y_prev) == 3 and array_length(y_now) == 2)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy2[1] = instance_create_layer(512+((i+1)*x_sep),y_now[1],"map_icon",ins);
			incy[0].next_icon = [incy2[0]];
			incy[1].next_icon = [incy2[0],incy2[1]];
			incy[2].next_icon = [incy2[1]];
		
			incy[0] = incy2[0];
			incy[1] = incy2[1];
		}
		else if(array_length(y_prev) == 3 and array_length(y_now) == 3)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy2[1] = instance_create_layer(512+((i+1)*x_sep),y_now[1],"map_icon",ins);
			incy2[2] = instance_create_layer(512+((i+1)*x_sep),y_now[2],"map_icon",ins);
			incy[0].next_icon = [incy2[0]];
			incy[1].next_icon = [incy2[1]];
			incy[2].next_icon = [incy2[2]];
		
			incy[0] = incy2[0];
			incy[1] = incy2[1];
			incy[2] = incy2[2];
		}
		else if(array_length(y_prev) == 3 and array_length(y_now) == 4)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy2[1] = instance_create_layer(512+((i+1)*x_sep),y_now[1],"map_icon",ins);
			incy2[2] = instance_create_layer(512+((i+1)*x_sep),y_now[2],"map_icon",ins);
			incy2[3] = instance_create_layer(512+((i+1)*x_sep),y_now[3],"map_icon",ins);
			incy[0].next_icon = [incy2[0],incy2[1]];
			incy[1].next_icon = [incy2[1],incy2[2]];
			incy[2].next_icon = [incy2[2],incy2[3]];
		
			incy[0] = incy2[0];
			incy[1] = incy2[1];
			incy[2] = incy2[2];
			incy[3] = incy2[3];
		}
		else if(array_length(y_prev) == 4 and array_length(y_now) == 1)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy[0].next_icon = [incy2[0]];
			incy[1].next_icon = [incy2[0]];
			incy[2].next_icon = [incy2[0]];
			incy[3].next_icon = [incy2[0]];
		
			incy[0] = incy2[0];
		}
		else if(array_length(y_prev) == 4 and array_length(y_now) == 2)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy2[1] = instance_create_layer(512+((i+1)*x_sep),y_now[1],"map_icon",ins);
			incy[0].next_icon = [incy2[0]];
			incy[1].next_icon = [incy2[0]];
			incy[2].next_icon = [incy2[1]];
			incy[3].next_icon = [incy2[1]];
		
			incy[0] = incy2[0];
			incy[1] = incy2[1];
		}
		else if(array_length(y_prev) == 4 and array_length(y_now) == 3)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy2[1] = instance_create_layer(512+((i+1)*x_sep),y_now[1],"map_icon",ins);
			incy2[2] = instance_create_layer(512+((i+1)*x_sep),y_now[2],"map_icon",ins);
			incy[0].next_icon = [incy2[0]];
			incy[1].next_icon = [incy2[0],incy2[1]];
			incy[2].next_icon = [incy2[1],incy2[2]];
			incy[3].next_icon = [incy2[2]];
		
			incy[0] = incy2[0];
			incy[1] = incy2[1];
			incy[2] = incy2[2];
		}
		else if(array_length(y_prev) == 4 and array_length(y_now) == 4)
		{
			incy2[0] = instance_create_layer(512+((i+1)*x_sep),y_now[0],"map_icon",ins);
			incy2[1] = instance_create_layer(512+((i+1)*x_sep),y_now[1],"map_icon",ins);
			incy2[2] = instance_create_layer(512+((i+1)*x_sep),y_now[2],"map_icon",ins);
			incy2[3] = instance_create_layer(512+((i+1)*x_sep),y_now[3],"map_icon",ins);
			incy[0].next_icon = [incy2[0]];
			incy[1].next_icon = [incy2[1]];
			incy[2].next_icon = [incy2[2]];
			incy[3].next_icon = [incy2[3]];
		
			incy[0] = incy2[0];
			incy[1] = incy2[1];
			incy[2] = incy2[2];
			incy[3] = incy2[3];
		}
		
		y_prev = y_now;
	}
	
	with(obj_ui_map_icon)
	{
		create_jumsun();
	}
}






















