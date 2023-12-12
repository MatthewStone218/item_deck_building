// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function http_post_string2(url,str){
	if(string_copy(str,1,1) == "?"){str = "&"+string_copy(str,2,string_length(str)-1);}
	return http_post_string(url+"?",str);
}