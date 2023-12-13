// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function move(xx,yy){
	
	xx = round(xx);
	yy = round(yy);
	
	var _check_1 = true;
	var _check_2 = true;
	
	while(_check_1 or _check_2)
	{
		_check_1 = false;
		_check_2 = false;
		
		if(xx != 0 and !place_meeting(x+sign(xx),y,obj_sol)){x += sign(xx);xx -= sign(xx);_check_1 = true;}
		if(yy != 0 and !place_meeting(x,y+sign(yy),obj_sol)){y += sign(yy);yy -= sign(yy);_check_2 = true;}
	}
}