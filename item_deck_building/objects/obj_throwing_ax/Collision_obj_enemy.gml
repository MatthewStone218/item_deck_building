/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(!variable_struct_exists(colls,"_"+string(other.id)))
{
	colls[$"_"+string(other.id)] = 1;
	player_attack(player_get_ap(),other.id);
	hp--;
	
	if(hp <= 0)
	{
		instance_destroy();
	}
}













