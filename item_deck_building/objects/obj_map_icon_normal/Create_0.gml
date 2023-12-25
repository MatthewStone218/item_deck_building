/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var ran = random(100);

if(ran < 50)
{
	sprite_index = spr_ui_map_icon_enemy;
	ev_type = EV_TYPE.ENEMY;
}
else if(ran < 95)
{
	sprite_index = spr_ui_map_icon_random;
	ev_type = EV_TYPE.RANDOM;
}
else
{
	sprite_index = spr_ui_map_icon_item;
	ev_type = EV_TYPE.ITEM;
}



