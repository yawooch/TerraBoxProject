$(document).ready(function() {

    //좋아요 버튼 호버하면 색 들어간 이미지로 변경
    $('#mv-like').hover(
        () => $('#mv-like-image').attr('src', './image/heartFull.png'),
        () => $('#mv-like-image').attr('src', './image/heart.png')
    );

    //좋아요 버튼 클릭하면 이미지 변경
    $('#mv-like').click(() => {
        if ($('#mv-like-image').attr('src') === './image/heart.png') {
            $('#mv-like-image').attr('src', './image/heartFull.png');
        } else {
            $('#mv-like-image').attr('src', './image/heart.png');
        }
        
    });
    
    // 공유 버튼 호버하면 색 들어간 이미지로 변경
    $('#mv-link').hover(
        () => $('#mv-link-image').attr('src', './image/shareFull.png'),
        () => $('#mv-link-image').attr('src', './image/share.png')
    );

    // 공유 버튼 클릭하면 현재 페이지의 링크 복사
    $('#mv-link').click(() => {
        console.log(location.href)
        console.log(document.execCommand)
        // https://sisiblog.tistory.com/301
        navigator.clipboard.writeText(location.href).then(() => {
            alert('복사 성공')
        }, () => {
            alert('복사 실패')
        });
    });

});