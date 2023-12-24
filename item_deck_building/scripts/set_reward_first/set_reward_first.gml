// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function set_reward_first(level = 1){
	global.refresh_left = global.refresh;
	set_reward(level);
}