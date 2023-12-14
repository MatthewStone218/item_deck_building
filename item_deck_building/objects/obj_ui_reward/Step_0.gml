/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
if(global.state == ST.REWARD and item != -1)
{
	if(mouse_check_pressed_me(mb_left))
	{
		global.state = ST.NORMAL;
		var incy = instance_create_layer(-500,-500,"Items",item.obj);
		repeat(40)
		{
			instance_create_layer(random_range(bbox_left,bbox_right),bbox_top,"Reward_ef",obj_particle_reward);
		}
		repeat(40)
		{
			instance_create_layer(random_range(bbox_left,bbox_right),bbox_bottom,"Reward_ef",obj_particle_reward);
		}
		repeat(40)
		{
			instance_create_layer(bbox_left,random_range(bbox_top,bbox_bottom),"Reward_ef",obj_particle_reward);
		}
		repeat(40)
		{
			instance_create_layer(bbox_right,random_range(bbox_top,bbox_bottom),"Reward_ef",obj_particle_reward);
		}
		repeat(80)
		{
			instance_create_layer(random_range(bbox_left,bbox_right),random_range(bbox_top,bbox_bottom),"Reward_ef",obj_particle_reward);
		}
		
		with(obj_ui_reward)
		{
			if(item != -1)
			{
				var incy = instance_create_depth(x,y,depth-1,obj_ef_reward_selected);
				if(other.id == id){incy.selected = 1;incy.white = 1;}
				incy.spr = item.spr;
				incy.name = item.name;
				incy.state = item.state;
				incy.typist = scribble_typist();;
			}
		}
	}
}








