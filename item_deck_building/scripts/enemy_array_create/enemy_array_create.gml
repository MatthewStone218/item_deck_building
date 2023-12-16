// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function enemy_array_create(){
	_enemy_array = [];
	var count = 0;
	
		_enemy_array[count,0] = obj_data_enemy.enemy_skeleton_warrior;
		_enemy_array[count,1] = 10;
		_enemy_array[count,2] = 0;
		count++;
	
	return count;//길이 반환.
}