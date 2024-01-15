/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_enemy_skeleton_warrior = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,544,"enemy",obj_enemy_skeleton_warrior);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_skeleton_archer = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,536,"enemy",obj_enemy_skeleton_archer);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_skeleton_warrior_n_archer_1 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1486,544,"enemy",obj_enemy_skeleton_warrior);
		instance_create_layer(1686,536,"enemy",obj_enemy_skeleton_archer);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_skeleton_warrior_n_archer_2 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1486,544,"enemy",obj_enemy_skeleton_warrior);
		instance_create_layer(1286,544,"enemy",obj_enemy_skeleton_warrior);
		instance_create_layer(1686,536,"enemy",obj_enemy_skeleton_archer);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_skeleton_warrior_n_archer_3 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1486,544,"enemy",obj_enemy_skeleton_warrior);
		instance_create_layer(1286,544,"enemy",obj_enemy_skeleton_warrior);
		instance_create_layer(1586,536,"enemy",obj_enemy_skeleton_archer);
		instance_create_layer(1686,536,"enemy",obj_enemy_skeleton_archer);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_slime_blue_1 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,584,"enemy",obj_enemy_slime_blue);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_slime_blue_2 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,584,"enemy",obj_enemy_slime_blue);
		instance_create_layer(1486,584,"enemy",obj_enemy_slime_blue);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_slime_green_1 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,584,"enemy",obj_enemy_slime_green);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_slime_green_2 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,584,"enemy",obj_enemy_slime_green);
		instance_create_layer(1486,584,"enemy",obj_enemy_slime_green);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_slime_red_1 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,584,"enemy",obj_enemy_slime_red);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_slimes = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,584,"enemy",obj_enemy_slime_red);
		instance_create_layer(1486,584,"enemy",obj_enemy_slime_green);
		instance_create_layer(1186,584,"enemy",obj_enemy_slime_blue);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_mino_1 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,570,"enemy",obj_enemy_mino);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_mino_2 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,570,"enemy",obj_enemy_mino);
		instance_create_layer(1486,570,"enemy",obj_enemy_mino);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_mino_skeleton_archer = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1486,570,"enemy",obj_enemy_mino);
		instance_create_layer(1686,536,"enemy",obj_enemy_skeleton_archer);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_mino_skeleton_slime_red = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1486,570,"enemy",obj_enemy_mino);
		instance_create_layer(1686,584,"enemy",obj_enemy_slime_red);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_slime_ranged = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,560,"enemy",obj_enemy_slime_ranged);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_mino_slime_ranged = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1486,570,"enemy",obj_enemy_mino);
		instance_create_layer(1686,560,"enemy",obj_enemy_slime_ranged);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_skeleton_warrior_slime_ranged_1 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1486,544,"enemy",obj_enemy_skeleton_warrior);
		instance_create_layer(1686,560,"enemy",obj_enemy_slime_ranged);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_skeleton_warrior_slime_ranged_2 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1486,544,"enemy",obj_enemy_skeleton_warrior);
		instance_create_layer(1286,544,"enemy",obj_enemy_skeleton_warrior);
		instance_create_layer(1686,560,"enemy",obj_enemy_slime_ranged);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_zombie_1 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,492,"enemy",obj_enemy_zombie);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_zombie_2 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,492,"enemy",obj_enemy_zombie);
		instance_create_layer(1486,492,"enemy",obj_enemy_zombie);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_mino_zombie_1 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1486,570,"enemy",obj_enemy_mino);
		instance_create_layer(1686,492,"enemy",obj_enemy_zombie);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_mino_zombie_2 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1286,570,"enemy",obj_enemy_mino);
		instance_create_layer(1486,492,"enemy",obj_enemy_zombie);
		instance_create_layer(1686,492,"enemy",obj_enemy_zombie);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_mino_zombie_slime_ranged = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1286,570,"enemy",obj_enemy_mino);
		instance_create_layer(1486,492,"enemy",obj_enemy_zombie);
		instance_create_layer(1686,560,"enemy",obj_enemy_slime_ranged);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_zombie_slime_ranged_1 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,560,"enemy",obj_enemy_slime_ranged);
		instance_create_layer(1486,492,"enemy",obj_enemy_zombie);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_zombie_slime_ranged_2 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,560,"enemy",obj_enemy_slime_ranged);
		instance_create_layer(1486,492,"enemy",obj_enemy_zombie);
		instance_create_layer(1286,492,"enemy",obj_enemy_zombie);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_dragon = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		global.boss_fight = true;
		});
		
		instance_create_layer(1686,532,"enemy",obj_enemy_dragon);
		with(obj_ui_hp_2){set_hp()}
	}
}
// 2 level


event_enemy_ghost_warrior = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_ghost_warrior);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_ghost_warrior_2 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_ghost_warrior_2);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_ghost_warrior_3 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_ghost_warrior_3);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_ghost_warrior_2s = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_ghost_warrior);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		var incy = instance_create_layer(1486,560,"enemy",obj_enemy_ghost_warrior_2);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_ghost_warrior_3s = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_ghost_warrior);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		var incy = instance_create_layer(1486,560,"enemy",obj_enemy_ghost_warrior_2);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		var incy = instance_create_layer(1286,560,"enemy",obj_enemy_ghost_warrior_3);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_dark_knight = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_dark_knight);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_dark_knight_2 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_dark_knight);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		var incy = instance_create_layer(1486,560,"enemy",obj_enemy_dark_knight);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_dark_knight_ghost_warrior = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_dark_knight);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		var incy = instance_create_layer(1486,560,"enemy",obj_enemy_ghost_warrior);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_dark_knight_ghost_warrior_2 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_dark_knight);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		var incy = instance_create_layer(1486,560,"enemy",obj_enemy_ghost_warrior_2);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_dark_knight_ghost_warrior_3 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_dark_knight);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		var incy = instance_create_layer(1486,560,"enemy",obj_enemy_ghost_warrior_3);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_beast = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_beast);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_beast_2 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_beast);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		var incy = instance_create_layer(1486,560,"enemy",obj_enemy_beast);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_beast_3 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_beast);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		var incy = instance_create_layer(1486,560,"enemy",obj_enemy_beast);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		var incy = instance_create_layer(1286,560,"enemy",obj_enemy_beast);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_beast_4 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_beast);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		var incy = instance_create_layer(1486,560,"enemy",obj_enemy_beast);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		var incy = instance_create_layer(1286,560,"enemy",obj_enemy_beast);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		var incy = instance_create_layer(1086,560,"enemy",obj_enemy_beast);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_heavy_armor = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_heavy_armor);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_heavy_armor_2 = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_heavy_armor_2);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_heavy_armor_2s = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		var incy = instance_create_layer(1686,560,"enemy",obj_enemy_heavy_armor);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		var incy = instance_create_layer(1486,560,"enemy",obj_enemy_heavy_armor_2);
		incy.y = 640-(incy.sprite_height-incy.sprite_yoffset);
		
		with(obj_ui_hp_2){set_hp()}
	}
}


//event



event_event_bonfire = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
			if(global.state == ST.MOVING_EVENT)
			{
				global.state = ST.EVENT_BONFIRE;
				global.st_prev = ST.EVENT_BONFIRE;
			}
		});
		
		instance_create_layer(1120,640,"enemy",obj_bonfire);
	}
}

event_event_treasure_chest = 
{
	func: function(){
		call_later(30,time_source_units_frames,function(){
		global.state = ST.EVENT_TREASURE_CHEST;
		global.st_prev = ST.EVENT_TREASURE_CHEST;
		});
		
		instance_create_layer(1120,640,"enemy",obj_chest);
	}
}