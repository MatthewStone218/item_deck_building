/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var scrib = scribble("[ft_normal][scale,3]"+str)
.wrap(370)
.align(fa_center,fa_middle);

var width = scrib.get_width();
var height = scrib.get_height();


var margin = 20;
image_xscale = (margin*2+width)/sprite_get_width(spr_window_2);
image_yscale = (margin*2+height)/sprite_get_height(spr_window_2);


if(bbox_left < 0){x += -bbox_left;}
if(bbox_top < 0){y += -bbox_top;}
if(bbox_right > 1080){x += -bbox_right-1920;}
if(bbox_bottom > 1080){y += -bbox_bottom-1080;}


















