/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

data = obj_data_items.item_wizzard_hat;

for(var i = 0; true; i++)
{
	if(i >= array_length(obj_inv.inv))
	{
		array_push(obj_inv.inv,id)
		break;
	}
	else if(obj_inv.inv[i] == -1)
	{
		obj_inv.inv[i] = id;
		break;
	}
}

item_func_1 = function(dmg)
{
	return dmg;
}

array_push(global.item_effects.attack,item_func_1)