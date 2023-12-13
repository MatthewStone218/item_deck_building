// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_get_hit(dmg){
	obj_player.xspd_knockback += 12*sign(obj_player.x-x);
	obj_player.xspd -= 5;
	
	obj_player.hp -= dmg;
	obj_player.hit = 8;
}