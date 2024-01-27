
//첫번째 배너는 가장 왼쪽에 있으면서 해당요소의 월을 표시한다.
//두번째 배너는 다음달 1일이 나타나면 해당요소의 월을 표시면서 따라다닌다..
function setYearMonBann(){
    let dateDivLeft = [0 , 70 , 140 , 210 , 280 , 350 , 420 , 490 , 560 , 630 , 700 , 770 , 840 , 910];
    let strBanner   = 0;//첫배너 위치값
    let firstDate   = ''; //다음달  첫번째 날
    let endBanner   = '';//마지막 배너 위치값
    let dateSubStr  = '';//날짜 잘라낼거다 년/월

    $('#formDeList .wrap button').each((idx, ele)=>{
        let dateData = $(ele).attr('date-data');
        let date = new Date(dateStrToMove(dateData));
        if(date.getDate() === 1)
        {
            endBanner = idx;
            firstDate = dateStrToMove(dateData);
        }
    });
    $('.date-list .year').eq(0).css('left', dateDivLeft[strBanner] + 'px');
    dateSubStr = $('#formDeList .wrap button').eq(strBanner).attr('date-data').split('.');
    $('.date-list .year').eq(0).text(dateSubStr[0]+ '.' + dateSubStr[1]);
    
    //'1일' 을 못찾았을때
    if(endBanner === 0 || endBanner === undefined || endBanner === '')
    {
        $('.date-list .year').eq(1).css('display', 'none');
    }else{
        $('.date-list .year').eq(1).css('display', 'block');
        $('.date-list .year').eq(1).css('left', dateDivLeft[endBanner] + 'px');
        dateSubStr = $('#formDeList .wrap button').eq(endBanner).attr('date-data').split('.');
        $('.date-list .year').eq(1).text(dateSubStr[0]+ '.' + dateSubStr[1]);
    }
}
//문자열을 받아 버튼생성에 필요한 형식을 반환한다.
function StrDp(dateOrigStr){
    //속성 정의
    this.dayArr      = ['일','월','화','수','목','금','토'];
    this.monthArr    = ['1월', '2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'];
    this.datePick    = new Date(dateOrigStr);//날짜 타입으로 변경
    this.dateStr     = dateOrigStr.replaceAll('-', '.');//날짜전체 yyyy.mm.dd 형식
    this.year        = this.datePick.getFullYear();//년
    this.yearStr     = this.datePick.getFullYear()+ '년';//년
    this.month       = this.datePick.getMonth() + 1;//월
    this.monRename   = this.monthArr[this.datePick.getMonth()];//1월, 2월...
    this.monthPad    = (this.datePick.getMonth() + 1)>9?(this.datePick.getMonth() + 1)+'':'0'+(this.datePick.getMonth() + 1) ;//01
    this.date        = this.datePick.getDate();//일
    this.dayName     = this.dayArr[this.datePick.getDay()];//요일
    this.dayRename   = dateStrToMove(this.datePick) === dateStrToMove(dateToStr(new Date()))? '오늘' : dateStrToMove(this.datePick) === dateStrToMove(dateToStr(new Date()), +1)? '내일' : this.dayArr[this.datePick.getDay()];//요일
}        
//datepicker 기본 
let datePickerSet = {
    showOn: "button"
    , buttonImage: "/views/ticket/img/ico-calendar-w20.png"
    , buttonImageOnly: true
    , buttonText: "Select date"
    , dateFormat: 'yy-mm-dd'
    , prevText: '이전 달'
    , nextText: '다음 달'
    , monthNames:      ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
    , monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
    , dayNames:        ['일', '월', '화', '수', '목', '금', '토']
    , dayNamesShort:   ['일', '월', '화', '수', '목', '금', '토']
    , dayNamesMin:     ['일', '월', '화', '수', '목', '금', '토']
    , showMonthAfterYear: true
    , yearSuffix: '년'
};

//ready 안에 있어야한다
let clickDateButton = function(event){
    let selectDate = dateStrToMove($(event.target).attr('date-data'));
    $('#datePicker').val(selectDate);
    //버튼세팅
    dateBtnCreate(dateStrToMove(selectDate));
    //배너 세팅
    setYearMonBann();
    //마지막에 함수를 다시 호출하지 않으면 이벤트가 삭제된 상태로 된다.
    $('#formDeList .wrap button').click(clickDateButton);
};
//날짜 타입을 넣으면 yyyy-mm-dd 타입으로 변환해준다.
function dateToStr(date){
    let year       = date.getFullYear();
    let month      = (date.getMonth()+1)>9?(date.getMonth()+1): '0'+(date.getMonth()+1);
    let dateNumStr = ((date.getDate())>9?(date.getDate()): '0'+(date.getDate()));
    return year + '-' + month + '-'+ dateNumStr;
};
//날짜 형식의 문자열을 넣으면 날짜 이동하여 yyyy-mm-dd 타입으로 반환해준다.
function dateStrToMove(dateStr, moveInt)
{
    let date = new Date(dateStr);
    if(moveInt === null || moveInt === undefined){
        date = new Date((date.setDate(date.getDate())));
    }
    else{
        date = new Date((date.setDate(date.getDate()+ Number(moveInt))));
    }
    return dateToStr(date);
};
//예매 영화선택 화면 위쪽 날짜버튼 생성하는 함수
function dateBtnCreate(date)
{
    let tempDate = date;
    $('#formDeList .wrap *').remove();
    let createStr = '';

    //15일치만 버튼생성
    for(let idx = 0; idx < 15; idx ++){
        if(idx === 0){
            tempDate = dateStrToMove(tempDate);
        }
        else {
            tempDate = dateStrToMove(tempDate, 1);
        }
        let d = new StrDp(tempDate);
        let pickerVal = $('#datePicker').val();
        createStr += '<button class="'+ (pickerVal === dateToStr(d.datePick)? 'on':'') + ' ' + (d.dayName === '토'?'sat':d.dayName === '일'?'holi':'') +'" type="button" date-data="' + d.dateStr + '" month="'+ (d.datePick.getMonth()) +'">';
        createStr +=     '<span class="ir">'+ d.yearStr +' ' + d.monRename + '</span>';
        createStr +=     '<em style="pointer-events:none;">'+ d.date +'<span style="pointer-events:none;" class="ir">일</span></em>';
        createStr +=     '<span class="day-kr" style="pointer-events:none;display:inline-block">'+ d.dayRename +'</span>';
        createStr += '</button>';
    }
    $('#formDeList .wrap').append(createStr);
};

//문서 로드 후 
$(document).ready(function(){
    $('#datePicker').val(dateToStr(new Date()));// datePicker 부분 날짜오늘로 초기화
    dateBtnCreate(dateStrToMove(dateToStr(new Date()))); // 날짜 버튼 생성

    setYearMonBann();
    //스크롤바 시작
    $(".content").mCustomScrollbar();

    //날짜 선택 라이브러리 설정시작
    $('#datePicker').datepicker(datePickerSet);

    $('#mCSB_17_container *').click(function(event){
        location.href = '/ticket/seat';
    });
    
    // $('[class$=-date]').each((idx, ele)=>{console.log($(ele).attr('class'))});

    //시간 버튼 - 뒤/앞으로 이동
    $('[class$=-time]').click(function(event){
        let direction = -1;//앞으로/뒤로 방향값
        let leftSize = Number($('.wrap .view').css('left').replace('px', ''));
        let clssName = $(event.target).attr('class');
        //next / prev 클래스에따라 방향 전환
        if(clssName.indexOf('next') !== -1){
            direction = -1;
        }
        else {direction = +1;} 
        leftSize = leftSize + 35 * direction;
        $('.wrap .view').animate({left: leftSize + 'px'});
    });
    //날짜 버튼- 앞/뒤로 이동 (animate부분 일단 stop)
    $('[class$=-date]').click(function(event){
        let direction = -1;//앞으로/뒤로 방향값
        // let leftSize = Number($('.wrap .view').css('left').replace('px', ''));
        // let leftSizeChng = 0;
        let clssName = $(event.target).attr('class');
        //next / prev 클래스에따라 방향 전환
        if(clssName.indexOf('next') !== -1){
            direction = 1;
        }
        else {direction = -1;} 
        // leftSizeChng = leftSize + 70 * direction;
        // $('#formDeList .wrap').animate({left: leftSizeChng + 'px'});
        
        let dateDataVal = $('#formDeList .wrap button').attr('date-data');
        dateBtnCreate(dateStrToMove(dateDataVal, direction));
        //배너 세팅
        setYearMonBann();
        // $('#datePicker').val(datePickerVal);
        // //이동하는 척하고 다시 돌려보낸다
        // $('.wrap .view').css('left', leftSize + 'px');
    });

    //datepicker 로 날짜 선택했을때
    $('#datePicker').on('change',function(event){
        let date = $(event.target).val();
        //날짜 버튼을 생성한다.
        dateBtnCreate(date);
        setYearMonBann();
    });
    $('#formDeList .wrap button').click(clickDateButton);

    //*****************************************
    // 영화 선택 시작
    //*****************************************
    $('#mCSB_1_container li button').click(function(event){
        
        let targetEle = $(event.target);
        if(event.target.tagName == 'SPAN'){
            targetEle = $(event.target).parent();
        }

        let eventFlag = false;
        let btnOnCnt  = 0;

        //이미 선택된 영화를 다시 클릭했을때 
        if(targetEle.hasClass('on')){
            targetEle.removeClass('on');
            let emptyCnt;

            let movieId = targetEle.attr('movie-no');
            $('#choiceMovieList div.bg div.wrap[movie-no=' + movieId + ']').parent().remove();
            $('#choiceMovieList').append('<div class="bg"></div>');
            
            
            $('#choiceMovieList div.bg').each((idx, ele)=>{
                if($(ele).find('div.wrap').length !==0 ){
                    emptyCnt ++;
                    console.log('Beer 있어?');
                }
            });
            if(emptyCnt === 0){
                $('#choiceMovieNone').show();
                $('#choiceMovieList').hide();
            }
        }
        else{
            $('#mCSB_1_container li button').each((idx, ele)=>{
                if($(ele).hasClass('on'))
                {
                    btnOnCnt++;
                }
            });
            
            if(btnOnCnt > 2){
                teraModal('영화선택은 3개 까지만 가능합니다.');
                eventFlag = true;
                return ;
            }else{
                targetEle.addClass('on');

                $('#choiceMovieNone').hide();
                $('#choiceMovieList').show();
                let emptyCnt = 0;
                let imgPath = targetEle.attr('img-path');
                // let imgPath = '/views/ticket/img/9jyGCFBkMW31zk7XRFD3PkdTOdnEvZXd_150.jpg';
                let movieId = targetEle.attr('movie-no');
                //영화 이미지 세팅 함수 시작
                // fnImage
                let createStr = '';
                createStr +='<div class="wrap" movie-no="'+ movieId +'"> <div class="img">';
                createStr +='<img src="'+ imgPath +'" alt="영화 제목" movie-no="'+ movieId +'"></div></div>';
                //삭제 버튼 이미지 제외
                // createStr +='<button type="button" class="del" onclick="fn_deleteMovieChoice(\'23077300\')">삭제</button> </div>';
                $('#choiceMovieList div.bg').each((idx, ele)=>{
                    if($(ele).html()===''|| $(ele).html()===' ' ){
                        emptyCnt ++;
                    }
                });
                $('#choiceMovieList div.bg').eq(btnOnCnt).append(createStr);
            }
        }
    });
    //*****************************************
    // 영화관 선택 시작
    //*****************************************
    $('#mCSB_4_container li button').click(function(event){
        
        let targetEle = $(event.target);

        let eventFlag = false;
        let btnOnCnt  = 0;

        //이미 선택된 영화관을 다시 클릭했을때 
        if(targetEle.hasClass('on')){
            targetEle.removeClass('on');
            let emptyCnt;

            let theaterId = targetEle.attr('brch-no');
            $('#choiceBrchList div.bg div.wrap[brch-no=' + theaterId + ']').parent().remove();
            $('#choiceBrchList').append('<div class="bg"></div>');
            
            
            $('#choiceBrchList div.bg').each((idx, ele)=>{
                if($(ele).find('div.wrap').length !==0 ){
                    emptyCnt ++;
                }
            });
            if(emptyCnt === 0){
                $('#choiceBrchNone').show();
                $('#choiceBrchList').hide();
            }
        }
        else{
            $('#mCSB_4_container li button').each((idx, ele)=>{
                if($(ele).hasClass('on'))
                {
                    btnOnCnt++;
                }
            });
            
            if(btnOnCnt > 2){
                teraModal('영화관 선택은 3개 까지만 가능합니다.');
                eventFlag = true;
                return ;
            }else{
                targetEle.addClass('on');

                $('#choiceBrchNone').hide();
                $('#choiceBrchList').show();
                let emptyCnt = 0;
                let theaterId = targetEle.attr('brch-no');
                // let imgPath = '/views/ticket/img/9jyGCFBkMW31zk7XRFD3PkdTOdnEvZXd_150.jpg';
                let theaterName = targetEle.attr('brch-nm');
                //영화 이미지 세팅 함수 시작
                // fnImage
                let createStr = '';
                createStr +='<div class="wrap" brch-no="'+ theaterId +'"><p class="txt">'+ theaterName +'</p></div>';
                //삭제 버튼 이미지 제외
                // createStr +='<button type="button" class="del" onclick="fn_deleteMovieChoice(\'23077300\')">삭제</button> </div>';
                $('#choiceBrchList div.bg').each((idx, ele)=>{
                    if($(ele).html()===''|| $(ele).html()===' ' ){
                        emptyCnt ++;
                    }
                });
                $('#choiceBrchList div.bg').eq(btnOnCnt).append(createStr);
            }
        }
    });
});