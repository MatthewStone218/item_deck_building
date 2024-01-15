/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

function switch_map()
{
	if(global.state != ST.DELETE and global.state != ST.MOVING_EVENT and global.state != ST.UPGRADE and global.state != ST.OPTION)
	{
		global.map_show = 1-global.map_show;
	}
}
















