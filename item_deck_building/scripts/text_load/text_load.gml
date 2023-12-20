// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function text_load(file,key,language = global.language){
	var w = ds_grid_width(file);
	var h = ds_grid_height(file);
	var lang = noone;
	switch(language)
	{
		case LG.KR: lang = "KR";break;
		case LG.EN: lang = "EN";break;
		case LG.CH: lang = "CH";break;
		case LG.JP: lang = "JP";break;
	}
	var text = ds_grid_get(file,ds_grid_value_x(file,0,0,w-1,h-1,lang),ds_grid_value_y(file,0,0,w-1,h-1,key));
	
	return text;
}