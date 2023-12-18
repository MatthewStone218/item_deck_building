/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


event_enemy_skeleton_warrior = 
{
	func: function(){
		call_later(1,time_source_units_seconds,function(){
		global.state = ST.COMBET;
		global.st_prev = ST.COMBET;
		});
		
		instance_create_layer(1686,544,"enemy",obj_enemy_skeleton_warrior);
		with(obj_ui_hp_2){set_hp()}
	}
}

