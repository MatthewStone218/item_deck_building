/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

dir = angle+angle2;

angle2 += min(30,player_get_asp())*2;
image_angle += player_get_asp()*10;

x = obj_player.x+lengthdir_x(200,dir);
y = obj_player.y+lengthdir_y(200,dir);


var num = struct_names_count(colls);
var names = struct_get_names(colls);

for(var i = 0; i < num; i++)
{
	var incy = real(string_copy(names[i],2,string_length(names[i])-1));
	if(!place_meeting(x,y,incy))
	{
		struct_remove(colls,names[i]);
	}
}









