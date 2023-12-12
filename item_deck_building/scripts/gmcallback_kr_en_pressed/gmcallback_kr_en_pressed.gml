// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function gmcallback_kr_en_pressed(){
	if (global.global.kor_mode == "ko_kr")
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