/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(global.state == ST.COMBET and (room == rm_game or room == rm_game_2) and global.boss_fight == false)
{	
	count_combet_end--;
	
	if(instance_exists(obj_enemy))
	{
		count_combet_end = 30;
	}
	
	if(count_combet_end <= 0)
	{
		if(choose(0,0,0,1))
		{
			global.state = ST.EVENT_TREASURE_CHEST;
			global.st_prev = ST.EVENT_TREASURE_CHEST;
		
			instance_create_layer(1120,-100,"player",obj_chest);
		}
		else
		{
			global.st_prev = ST.NORMAL;
			global.state = ST.NORMAL;
		}
		instance_destroy(obj_arrows);
		//goto_next_floor();
		map_unlock_next();
	}
}

while(global.exp >= global.exp_max)
{
	audio_play_sound(snd_levelup,0,0);
	global.exp -= global.exp_max;
	global.level++;
	global.upgrade_point++;
	global.exp_max = global.exp_max_arr[global.level];
	
	if(global.level mod 3 == 0){global.inv_count++;}
	if(global.level == 3 or global.level == 6 or global.level == 9){global.refresh++;}
	
	instance_create_depth(0,0,0,obj_ef_levelup);
	obj_ui_levelup.image_alpha = 5;
}

if(global.upgrade_tuto)
{
	for(var i = 0; i < array_length(obj_inv.inv); i++)
	{
		if(obj_inv.inv[i] != -1 and obj_inv.inv[i].data.up_point != -1 and obj_inv.inv[i].data.up_point <= global.upgrade_point)
		{
			global.upgrade_tuto = 0;
			with(obj_inv_cell)
			{
				if(num == i+1)
				{
					instance_create_layer(x,y,"item_delete",obj_upgrade_tuto);
				}
			}
		}
	}
}
