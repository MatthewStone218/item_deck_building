/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(global.state == ST.NORMAL)
{
	draw_self();
	scribble("[scale,4]"+text_load(global.csv_system,"next"))
	.align(fa_center,fa_middle)
	.draw(x,y);
}





















