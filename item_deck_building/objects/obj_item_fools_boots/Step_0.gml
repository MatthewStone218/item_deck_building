/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(instance_exists(obj_player))
{	
	var _list = ds_list_create();
	var enemy_num = collision_line_list(obj_player.xprevious,obj_player.yprevious,obj_player.x,obj_player.y,obj_enemy,0,0,_list,0);

	for(var i = 0; i < enemy_num; i++)
	{
		var enemy = _list[|i];
		if(!variable_struct_exists(colls,"_"+string(real(enemy.id))))
		{
			player_attack(1,enemy.id);
			colls[$"_"+string(real(enemy.id))] = 1;
		}
	}

	var num = struct_names_count(colls);
	var names = struct_get_names(colls);

	for(var i = 0; i < num; i++)
	{
		var incy = real(string_copy(names[i],2,string_length(names[i])-1));
		if(!collision_line(obj_player.xprevious,obj_player.yprevious,obj_player.x,obj_player.y,incy,0,0))
		{
			struct_remove(colls,names[i]);
		}
	}
}



















