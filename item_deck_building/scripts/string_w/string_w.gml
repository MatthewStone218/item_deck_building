// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function string_w(text,w,scale){
	_str = "";
	for(var i = 0; i < string_length(text); i++)
	{
		_str += string_copy(text,i,1);
		if(string_width(_str+string_copy(text,i+1,1))*scale > w){_str += "\n";}
	}
	
	return _str;
}