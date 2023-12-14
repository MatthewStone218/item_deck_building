// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function item_array_pick(){
	
	var count = array_length(_item_array);
	
	var ran_max = 0;//등장확률 총 합. 아래 코드에서 값이 제대로 생김.
	//모든 확률치에 이전 모든 값의 합을 더하여 오름차순으로 정렬.**********
	//ex) 10,12,23 -> 10,22,45
	
	//하기 전에 초기화
	for(var i = 0; i < count; i++)
	{
		_item_array[i,2] = 0;
	}
	//실행
	for(var i = 0; i < count; i++)
	{
		ran_max += _item_array[i,1];
		_item_array[i,2] += ran_max;
	}
	//****************************************************************
	var ran = random(ran_max);//0~(모든 확률치 합) 사이에 있는 랜덤 값 생성.
	
	//랜덤 값보다 높은 확률치(이전 값들의 합을 더한 상태)를 가지는 것 중 가장 작은 값을 가진 원소를 반환.
	//쉬운 설명: 처음에 정한 확률로 랜덤한 원소 반환.
	for(var i = 0; i < count; i++)
	{
		if(_item_array[i,2] >= ran)
		{
			_return = _item_array[i,0];
			array_delete(_item_array,i,1);
			return _return;
		}
	}
	
	//배열이 비어서 아무것도 건질게 없는 경우
	return -1;
}