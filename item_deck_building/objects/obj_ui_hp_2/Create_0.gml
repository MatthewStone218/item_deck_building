/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
hp = 1;
hp_max = 1;
hp_yellow = 1;

function set_hp()
{
	hp = 0;
	hp_max = 0;

	for(var i = 0; i < instance_number(obj_enemy); i++)
	{
		var incy = instance_find(obj_enemy,i);
		hp_max += incy.hp_max;
	}

	hp =  hp_max;

	hp_yellow = hp;
}

hp_spd = 0;
hp_spd_max = 10;

ef_hit = 0;
ef_hit_white = 0;










