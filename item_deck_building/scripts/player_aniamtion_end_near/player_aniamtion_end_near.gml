// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_aniamtion_end_near(){
	attacking = 0;
	act = [0,-1];
	attack_delay_left = attack_delay;
	player_act();
}