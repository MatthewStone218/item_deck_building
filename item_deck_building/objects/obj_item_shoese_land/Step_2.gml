/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(yspd_prev > 0 and obj_player.yspd <= 0)
{
	with(obj_enemy)
	{
		player_attack(other.yspd_prev*0.8,id);
	}
	obj_camera_sys.screen_shake = yspd_prev;
	audio_play_sound(snd_explosion_1,1,0);
}















