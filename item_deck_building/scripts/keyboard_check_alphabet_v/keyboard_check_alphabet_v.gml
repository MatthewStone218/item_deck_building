// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function keyboard_check_alphabet_v(){
	for(var i = 65; i < 91; i++)
	{
		if(obj_keyboard_sys.key_press[i]){return true;}
	}
	
	return false;
}