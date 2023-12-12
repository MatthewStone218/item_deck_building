/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
if(mouse_check_button_pressed(mb_left) and collision_point(mouse_x,mouse_y,id,0,0))
{
	if(image_alpha == 1)
	{
		if(key == "OK")
		{
			with(obj_keyboard_key)
			{
				keyboard_key_clean()
			}
		}
		else if(key == "kr_en")
		{
			if (global.kor_mode == "ko_kr")
			{
				for(var i = 0; i < array_length(global.keyboard_objs); i++)
				{
					if(instance_exists(global.keyboard_objs[i]))
					{
						with(global.keyboard_objs[i])
						{
							kor_insert(text_eng_to_hangul(kor_buffer));
							kor_buffer = "";
						}
					}
					else
					{
						array_delete(global.keyboard_objs,i,1);
					}
				}
				global.kor_mode = "en_us";
			}
			else
			{
				global.kor_mode = "ko_kr";
			}
		}
		else if(is_real(key))
		{
			obj_keyboard_sys._len = string_length(keyboard_string);
			obj_keyboard_sys._str_prev = keyboard_string;
		
			keyboard_key_press_v(key);
		}
	}
}



