/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

language = 0;

depth = -10000;


_len = string_length(keyboard_string);
_str_prev = keyboard_string;

for(var i = 0; i < 300; i++)
{
	key_press[i] = false;
	key_press_prev[i] = false;
}