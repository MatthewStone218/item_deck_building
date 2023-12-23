// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function item_clean_function(){
	
	if(variable_instance_exists(id,"my_functions"))
	{
		for(var i = 0; i < array_length(my_functions); i++)
		{
			var idx = array_get_index(my_functions[i][0],my_functions[i][1]);
			if(idx != -1)
			{
				array_delete(my_functions[i][0],idx,1);
			}
		}
	}
}