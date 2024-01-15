/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

yspd += 1;

move(0,yspd);

if(place_meeting(x,y+1,obj_sol))
{
	yspd = 0;
	if(mouse_y < y and (mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face2) or gamepad_button_check_pressed(0,gp_face3) or gamepad_button_check_pressed(0,gp_face4)))
	{
		if(clicked == 0)
		{
			image_speed = 1;
			audio_play_sound(snd_chest_open,1,0);
		
			call_later(60,time_source_units_frames,
			function(){
				alarm[0] = 2;
			});
		}
		clicked++;
	}
}












