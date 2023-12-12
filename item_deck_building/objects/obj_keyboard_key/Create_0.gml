/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
depth = -20000;



vir_key = -1;

image_alpha = 0;

set_now = 0;

function keyboard_key_set()
{
	set_now = 1;
	alarm[0] = 2;
	//virtual_key_add(x,y,sprite_width,sprite_height,key);
	image_alpha = 1;
}

function keyboard_key_clean()
{
	if(set_now == 0)
	{
		//if(vir_key != -1)virtual_key_delete(vir_key);
		image_alpha = 0;
	}
}

function keyboard_key_press_v(key)
{
	obj_keyboard_sys.key_press[key] = true;
}