/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_enemy_skeleton_warrior = 
{
	func: function(){
		call_later(1,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,544,"enemy",obj_enemy_skeleton_warrior);
		with(obj_ui_hp_2){set_hp()}
	}
}

event_enemy_slime_blue_1 = 
{
	func: function(){
		call_later(1,time_source_units_frames,function(){
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
		call_later(1,time_source_units_frames,function(){
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
		call_later(1,time_source_units_frames,function(){
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
		call_later(1,time_source_units_frames,function(){
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
		call_later(1,time_source_units_frames,function(){
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
		call_later(60,time_source_units_frames,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,584,"enemy",obj_enemy_slime_red);
		instance_create_layer(1486,584,"enemy",obj_enemy_slime_green);
		instance_create_layer(1186,584,"enemy",obj_enemy_slime_blue);
		with(obj_ui_hp_2){set_hp()}
	}
}

//event



event_event_bonfire = 
{
	func: function(){
		call_later(60,time_source_units_frames,function(){
		global.state = ST.EVENT_BONFIRE;
		global.st_prev = ST.EVENT_BONFIRE;
		});
		
		instance_create_layer(1120,640,"enemy",obj_bonfire);
	}
}

event_event_treasure_chest = 
{
	func: function(){
		call_later(60,time_source_units_frames,function(){
		global.state = ST.EVENT_TREASURE_CHEST;
		global.st_prev = ST.EVENT_TREASURE_CHEST;
		});
		
		instance_create_layer(1120,640,"enemy",obj_chest);
	}
}