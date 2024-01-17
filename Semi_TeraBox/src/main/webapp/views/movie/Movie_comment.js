$(document).ready(function() {
    //좋아요 버튼 호버하면 색 들어간 이미지로 변경
    $('#mv-like').hover(
        // 올라갔을 때 full
        () => $('#mv-like-image').attr('src', './image/heartFull.png'),
        // 내려갔을 때 db에 y이면 full, n이면 빈 이미지
        () => {
            if ($('#mv-like').hasClass('on')) {
                $('#mv-like-image').attr('src', './image/heartFull.png');
            } else {
                $('#mv-like-image').attr('src', './image/heart.png');
            }
        }
    );
    //좋아요 버튼 클릭하면 on 클래스 추가
    $('#mv-like').on('click', () => {
        if ($('#mv-like').hasClass('on')) {
            $('#mv-like').removeClass('on');
        } else {
            $('#mv-like').addClass('on');
        }
    });
    
    
    // 공유 버튼 호버하면 색 들어간 이미지로 변경
    $('#mv-link').hover(
        () => $('#mv-link-image').attr('src', './image/shareFull.png'),
        () => $('#mv-link-image').attr('src', './image/share.png')
    );

    // 공유 버튼 클릭하면 현재 페이지의 링크 복사
    // https://sisiblog.tistory.com/301
    // https에서만 사용 가능
    $('#mv-link').click(() => {
        alert(location.href);
        // navigator.clipboard.writeText(location.href).then(() => {
        //     alert('복사 성공')
        // }, () => {
        //     alert('복사 실패')
        // });
    });
});