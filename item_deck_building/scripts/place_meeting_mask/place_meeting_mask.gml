// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function place_meeting_mask(x,y,obj,mask){
	var temp = mask_index;
	mask_index = mask;
	var _r = place_meeting(x,y,obj);
	mask_index = temp;
	return _r;
}