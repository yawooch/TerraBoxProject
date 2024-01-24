$(document).ready(function(){
	let arr = [];
	let sum    = 0;
	let sel    = 0;
	let maxCnt = 8;
		
	//카운터가 마이너스가 클릭되었을때
	$('.tk-counter-group .tk-btn-minus').click(function(event){
		let groupDiv = $(event.target).parents('div').attr('class').split(' ')[1];
		let nowCnt = $('#tk_now_'+groupDiv).html();

		//0보다 작을때 - 를 해주면 안된다.
		nowCnt = Number(nowCnt) !== 0 && Number(sum)    !== 0 ? Number(nowCnt)-1 : Number(nowCnt);
		sum    = Number(sum)    !== 0 ? Number(sum)-1 : Number(sum);
		$('#tk_now_'+ groupDiv).html(nowCnt);

		if (sum <= 0){
			teraModal('관람하실 인원수를 선택해주세요');	  
		}
	});
	
	//카운터가 플러스가 클릭되었을때
	$('.tk-counter-group .tk-btn-plus').click(function(event){
		let groupDiv = $(event.target).parents('div').attr('class').split(' ')[1];
		let nowCnt = $('#tk_now_'+groupDiv).html();

		//8보다 클때 + 를 해주면 안된다.
		nowCnt = Number(nowCnt) !== maxCnt && Number(sum)    !== maxCnt? Number(nowCnt)+1 : Number(nowCnt);
		sum    = Number(sum)    !== maxCnt ? Number(sum)+1 : Number(sum);
		$('#tk_now_'+ groupDiv).html(nowCnt);
		
		if (sum >= maxCnt){
			teraModal('최대 인원수를 초과했습니다.');	  
		}
	});

	//좌석 좌표 세팅하기
	let tkSeatClick = $('.tk-seat-click');
	

	tkSeatClick.on('mouseover mouseout', {
		'mouseover' : function(event){
			$(event.target).css('background-image', 'url(../img/bg-seat-choice.png)');
		},
		'mouseout' : function(event){
			$(event.target).css('background-image', 'url(../img/bg-seat-common.png)');
		}
	});

	tkSeatClick.each(element =>{
		$(tkSeatClick[element]).click(function(e){
			$(e.target).css({'background':'url(/views/ticket/img/bg-seat-choice.png))'});
			let seatNumber = $(e.target).attr('cord');
		
			
			let flag= arr.includes(seatNumber);
			
			if(!flag){
				arr.push(seatNumber);
			}
			
			if (sum < 0 ) {
				alert('좌석을 다시 선택해주세요.');
			}else{
				
			for(let i = 0; i<arr.length; i++){
				$('.tk-choice-seat-now').eq(i).text(arr[i]);
				$('.tk-choice-seat-now').eq(i).attr("style", "background-color: #6D3030;");
				
				}
				
			}
			
			sum --;
			
			console.log(sum);
						
		});
	});
	
	//약관필수동의 처리
	$('#tk_titleImg').click(function(){
		if($('#tk_titleImg').hasClass('checked'))
		{
			$('#tk_titleImg').removeClass('checked');
			$('#tk_next_page').removeClass('enabled');
		}
		else
		{
			$('#tk_titleImg').addClass('checked');
			$('#tk_next_page').addClass('enabled');
		}
	});
	
	//예매버튼 클릭시
	$('#tk_next_page').click(function(){
			// $("#formSubmit").click();
		
			if($('#tk_next_page').hasClass('enabled')){
				location.href = '/';
			}
	});
	



});