/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(string_length(keyboard_string) > _len)
{
	show_debug_message($"'{keyboard_string}'   '{_str_prev}'")
	if(string_length(keyboard_string)-_len >= 2)
	{
		keyboard_string = string_copy(keyboard_string,1,_len+1);
	}
}
else if(_len != string_length(keyboard_string))
{
	if(_len-string_length(keyboard_string) >= 2)
	{
		keyboard_string = string_copy(_str_prev,1,_len-1);
	}
}


_len = string_length(keyboard_string);
_str_prev = keyboard_string;

for(var i = 0; i < 300; i++)
{
	key_press_prev[i] = key_press[i];
}


