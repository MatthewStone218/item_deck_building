/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

LIVE
var scrib = scribble("[ft_normal][scale,3]"+str)
.align(fa_center,fa_middle);

var width = scrib.get_width();
var height = scrib.get_height();


var margin = 20;
//draw_sprite_ext(spr_window_2,0,x,y,(margin*2+width)/sprite_get_width(spr_window_2),(margin*2+height)/sprite_get_height(spr_window_2),0,c_white,1);

scrib.draw(x,y);














