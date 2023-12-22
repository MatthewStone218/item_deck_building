/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(point_distance(x,y,obj_map.icon_now.x,obj_map.icon_now.y) < 5)
{
	x = obj_map.icon_now.x;
	y = obj_map.icon_now.y;
}
else
{
	x += lengthdir_x(5,point_direction(x,y,obj_map.icon_now.x,obj_map.icon_now.y));
	y += lengthdir_y(5,point_direction(x,y,obj_map.icon_now.x,obj_map.icon_now.y));
}

if (point_distance(x,y,xprevious,yprevious) > 0) and (global.map_show == 1) and ((image_index >= 1 and image_index-image_speed*sprite_get_speed(spr_player_run)/60 < 1) or (image_index >= 5 and image_index-image_speed*sprite_get_speed(spr_player_run)/60 < 5)){audio_play_sound(snd_foot,0,0);}









