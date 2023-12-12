/// @description kor_input()
function kor_input() {
	if !keyboard_check(vk_nokey) or keyboard_check_any_v()
	    time = current_time;
	if ((keyboard_check_pressed(vk_anykey) or keyboard_check_any_v()) || (keyboard_check(vk_nokey) or !keyboard_check_any_v()) || prev_key != keyboard_lastkey) // 연속 키
	    key_time = current_time;

	/*
	if keyboard_check_pressed(kor_keyHan)
	{
	    if (global.kor_mode == "ko_kr")
	    {
	        kor_insert(text_eng_to_hangul(kor_buffer));
	        kor_buffer = "";
	        global.kor_mode = "en_us";
	    }
	    else
	        global.kor_mode = "ko_kr";
	}
	*/


	// 단타
	for(var i = 65; i <= 90; i++)
	if (keyboard_check_pressed(i) or keyboard_check_pressed_v(i))
	{
	    kor_buffer += chr(i + !(keyboard_check(vk_shift) or keyboard_check_v(vk_shift)) * 32);
	}

	
	if ((keyboard_check_pressed(vk_anykey)) && !keyboard_check(vk_nokey) && string_length(keyboard_string)) // 숫자, 특수기호 입력
	{
		//kor_buffer += chr(i);
	    kor_buffer += keyboard_string;
	    keyboard_string = "";
	}
	else if ((keyboard_check_pressed_any_v()) && !keyboard_check_alphabet_v()) // 숫자, 특수기호 입력
	{
		//kor_buffer += chr(i);
		var _key_num = -1;
		if(keyboard_check_pressed_v(ord("1"))){ _key_num = "1"; }
		else if(keyboard_check_pressed_v(ord("2"))){ _key_num = "2"; }
		else if(keyboard_check_pressed_v(ord("3"))){ _key_num = "3"; }
		else if(keyboard_check_pressed_v(ord("4"))){ _key_num = "4"; }
		else if(keyboard_check_pressed_v(ord("5"))){ _key_num = "5"; }
		else if(keyboard_check_pressed_v(ord("6"))){ _key_num = "6"; }
		else if(keyboard_check_pressed_v(ord("7"))){ _key_num = "7"; }
		else if(keyboard_check_pressed_v(ord("8"))){ _key_num = "8"; }
		else if(keyboard_check_pressed_v(ord("9"))){ _key_num = "9"; }
		else if(keyboard_check_pressed_v(ord("0"))){ _key_num = "0"; }


		
		if(_key_num != -1)
		{
			kor_buffer += _key_num;
		}
	}
	

	if keyboard_check_pressed(vk_backspace) or keyboard_check_pressed_v(vk_backspace)
	{
	    if string_length(kor_buffer)
	    {
	        kor_buffer = string_delete(kor_buffer, string_length(kor_buffer), 1);
	    }
	    else
	    {
	        kor_string = string_delete(kor_string, kor_cursor, 1);
	        kor_cursor = max(kor_cursor - 1, 0);
	    }
	}
	if (kor_arrow)
	{
	    if ((keyboard_check_pressed(vk_right) or keyboard_check_pressed_v(vk_right)) || (keyboard_check_pressed(vk_left) or keyboard_check_pressed_v(vk_left)))
	    {
	        kor_insert(text_eng_to_hangul(kor_buffer));
	        kor_buffer = "";
	    }
	    kor_cursor += (keyboard_check_pressed(vk_right) or keyboard_check_pressed_v(vk_right)) - (keyboard_check_pressed(vk_left) or keyboard_check_pressed_v(vk_left));
	    kor_cursor = clamp(kor_cursor, 0, string_length(kor_string));
	}

	// 연속
	if (current_time - key_time > kor_longpress)
	{
	    for(var i = 65; i <= 90; i++)
	    if (keyboard_check(i) or keyboard_check_v(i))
	    {
	        kor_buffer += chr(i + !(keyboard_check(vk_shift) or keyboard_check_v(vk_shift)) * 32);
	    }
		/*
	    if (keyboard_check(vk_anykey) && !(keyboard_key >= 65 && keyboard_key <= 90) && string_length(keyboard_string)) // 숫자, 특수기호 입력
	    {
	        kor_buffer += keyboard_string;
	        keyboard_string = "";
	    }
		*/
	    if (keyboard_check(vk_backspace) or keyboard_check_v(vk_backspace))
	    {
	        if string_length(kor_buffer)
	        {
	            kor_buffer = string_delete(kor_buffer, string_length(kor_buffer), 1);
	        }
	        else
	        {
	            kor_string = string_delete(kor_string, kor_cursor, 1);
	            kor_cursor = max(kor_cursor - 1, 0);
	        }
	    }
	    if (kor_arrow)
	    {
	        kor_cursor += (keyboard_check(vk_right) or keyboard_check_v(vk_right)) - (keyboard_check(vk_left) or keyboard_check_v(vk_left));
	        kor_cursor = clamp(kor_cursor, 0, string_length(kor_string));
	    }
	}
	keyboard_string = "";
	prev_key = keyboard_lastkey;
	
	if(keyboard_check_any_v())
	{
		obj_keyboard_sys.key_press[vk_shift] = false;
	}
}
