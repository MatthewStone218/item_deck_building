/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(!variable_struct_exists(colls,"_"+string(real(other.id))))
{
	player_attack(0.5*player_get_asp(),other.id);
	colls[$"_"+string(real(other.id))] = 1;
}

















