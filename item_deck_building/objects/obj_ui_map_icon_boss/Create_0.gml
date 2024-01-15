/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다


// Inherit the parent event
event_inherited();

if(global.game_level == 1){ev_type = EV_TYPE.BOSS_1;}
if(global.game_level == 2){ev_type = EV_TYPE.BOSS_2;}
if(global.game_level == 3){ev_type = EV_TYPE.BOSS_3;}
if(global.game_level == 4){ev_type = EV_TYPE.BOSS_4;}
if(global.game_level == 5){ev_type = EV_TYPE.BOSS_5;}