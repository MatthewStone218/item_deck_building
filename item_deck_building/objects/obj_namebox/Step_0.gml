/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(live_call()){return live_result;}

if(can_write)
{
	if 1//(os_type != os_windows and os_type != os_linux and os_type != os_macosx)
	{
		if(mouse_check_button_pressed(mb_left) and collision_point(mouse_x,mouse_y,id,0,0))
		{
			with(obj_keyboard_key){keyboard_key_set();}
		}
	}

	image_blend = make_color_rgb(255-255*black,255-255*black,255-255*black)

	kor_input();
	kor_gen();
	
	if(string_length(kor_string) >= 6)
	{
		kor_string = string_copy(kor_string,1,6);
	}
	
	if(string_length(kor_string + text_eng_to_hangul(kor_buffer)) >= 1)
	{
		var deny = 1;
		for(var i = 0; i < string_length(kor_string + text_eng_to_hangul(kor_buffer)); i++)
		{
			if(string_copy(kor_string + text_eng_to_hangul(kor_buffer),i+1,1) != " ")
			{
				deny = 0;
				break;
			}
		}
	
		if(deny){kor_string = "";}
	}
}
real_string = kor_string + text_eng_to_hangul(kor_buffer);