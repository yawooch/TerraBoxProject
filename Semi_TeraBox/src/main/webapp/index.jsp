<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>나는 테라박스 히힣</title>
    <style>
        @charset "UTF-8";
		@font-face {
            font-family: 'NanumBarunGothic';
            font-style: normal;
            font-weight: 400;
            src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot');
            src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype');
		}
		@font-face {
            font-family: 'NanumBarunGothic';
            font-style: normal;
            font-weight: 700;
            src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.eot');
            src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.ttf') format('truetype')
		}
		@font-face {
            font-family: 'NanumBarunGothic';
            font-style: normal;
            font-weight: 300;
            src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.eot');
            src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.ttf') format('truetype');
		}
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap');

		*{
			box-sizing: border-box;
		}
        ul, ol{
            margin:0;
            padding:0;
            list-style: none;
        }
        html, body{
            font-family: 'NanumBarunGothic';
            width:100%;
            height:100%;
            margin:0;
        }
        a {
            text-decoration: none;
            color:white;
        }
        #header>.content, #videoSection>.content, #footer>.content, #movieSection>.content, #noticeSection>.content{
            width:1100px;
            height:100%;
            margin:0 auto;
        }
        .button {
            display: inline-block;
            height: 36px;
            margin: 0;
            padding: 0 15px;
            text-align: center;
            line-height: 34px;
            color: #503396;
            font-weight: 400;
            border-radius: 4px;
            font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
            text-decoration: none;
            border: 1px solid #503396;
            vertical-align: middle;
            background-color: #fff;
            cursor: pointer;
        }
        .button.gblue {
            color: #fff;
            line-height: 36px;
            border: 0;
            background: #037b94;
        }

        /******************************************** 
            헤더 영역 속성정의 시작
        *********************************************/
        #header{
            background-color: #6D3030;
            border-bottom:1px solid white;
            width:100%;
            height:91px;
        }
        .content>.login-link {
            position:absolute;
            display: block;
            right: 15px;
            top: 13px;
        }
        .content>.login-link>a:hover{
            text-decoration: underline;
        }
        .content>.login-link>a{
            color: #888;
            float: left;
            margin-left:8px;
        }
        .mainLogo {
            position:absolute;
            width:140px;
            height: 47px;
            top: 25px;
            left: 50%;
            margin-left: -70px;
            z-index: 1;
        }
        .mainLogo>img{
            width:140px;
            height: 47px;
        }
        #header>.content {
            background-color: #6D3030;
            position:relative;
        }
        .header-link-left>a, .header-link-right>a{
            background-repeat: no-repeat;   
            background-position: center;
            display:inline-block;
        }
        .header-link-left>div, .header-link-right>div{
            display: inline-block;
            margin-top: 10px;
            vertical-align: top;
        }
        .header-link-left{
            position:absolute;
            top:50px;
            left:15px;
        }
        .header-link-right{
            position:absolute;
            top:50px;
            right:15px;
        }
        .header-link-left>div>a{
            margin-left:100px;
            padding-bottom:8px;
        }
        .header-link-right>div>a{
            margin-right:100px;
            padding-bottom:8px;
        }
        .header-link-left>div>a:hover, .header-link-right>div>a:hover{
            border-bottom:4px solid white;
        }
        .link-area-sitemap{
            background-image: url(img/ico-sitemap-white.png);
            width:36px;
            height:36px;
        }
        .link-area-movie{
            background-image: url(img/ico-movie-white.png);
            width:36px;
            height:36px;
        }
        .link-area-ticket{
            background-image: url(img/ico-ticket-white.png);
            width:36px;
            height:36px;
        }
        .link-area-mypage{
            background-image: url(img/ico-mypage-white.png);
            width:36px;
            height:36px;
        }
        /******************************************** 
            헤더 영역 속성정의 끝
        *********************************************/
        /******************************************** 
            Video 영역 속성정의 시작
        *********************************************/
        #videoSection{
            background-color: black;
            width:100%;
        }
        #videoSection>.content{
            height:500px;
        }
        .video-frame>video{
            position: relative;
            width: 100%;
            height: 100%;
            transform: scale(1.35);
            z-index: 0;
        }
        .video-frame{
            overflow: hidden;
            width:100%;
            height:100%;
            position:relative;
            z-index:1;
        }
        .video-wrap{
            background-image: linear-gradient(to right, #000 0%, rgba(0, 0, 0, 0.25) 30%, rgba(0, 0, 0, 0) 50%,rgba(0, 0, 0, 0.25) 70%, #000 100%);
            width:100%;
            height:100%;
            position: absolute;
            top: 0px;
        }
        .video-wrap>div{
            position:absolute;
            font-family: 'Noto Sans KR';
            color:white;
        }
        .video-title{
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.72);
            top:180px;
            font-size: 50px;
            font-weight:900;
        }
        .video-subTitle{
            top:280px;
            font-size: 25px;
        }
        .video-btn-group{
            top:380px ;
            display: inline-flex;
        }
        .video-btn-group>.btn-pause, .video-btn-group>.btn-mute{
            margin-left: 10px;
            width: 28px;
            height: 28px;
            border: 1px solid #979797;
            border-radius: 50%;
        }
        .btn-detail{
            padding: 5px 30px 5px 18px;
            font-size: 14px;
            color: #343434;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.8) url(img/arrowR_8x13.png) calc(100% - 11px) center/8px 13px scroll no-repeat;
        }
        .btn-pause{
            background: transparent url(img/pause.png) center/18px scroll no-repeat;
        }
        .btn-mute{
            background: transparent url(img/soundOff.png) center/18px scroll no-repeat;
        }
        /******************************************** 
            Video 영역 속성정의 끝
        *********************************************/

        /******************************************** 
            영화 영역 속성 정의 시작
        *********************************************/
        #movieSection{
            /* background-color: green; */
            background-color: rgba(3,1,21,0.7);
            width:100%;
            display: block;
            height: 600px;
            position: relative;
        }
        #movieSection>.bg:before{
            content: '';
            display: block;
            position: absolute;
            left: 0;
            top: 0;
            z-index: 2;
            width: 100%;
            height: 100%;
            background: linear-gradient(to right, rgba(85,63,5,1) 0%, rgba(23,17,1,0) 50%, rgba(85,63,5,1) 100%);
        }
        #movieSection>.bg{
            overflow: hidden;
            position: absolute;
            z-index: 3;
            width: 100%;
            min-width: 1100px;
            height: 100%;
            margin: 0 auto;
        }
        #movieSection>.bg:after {
            content: '';
            display: block;
            position: absolute;
            left: 0;
            top: 0;
            right: 0;
            bottom: 0;
            z-index: 2;
            background-color: rgba(3,1,21,0.7);
        }
        #movieSection>.bg .bg-pattern {
            position: absolute;
            left: 0;
            top: 0;
            z-index: 3;
            width: 100%;
            height: 100%;
            background: url(img/bg-movie-detail-pattern.png) repeat 0 0;
        }
        #movieSection>.bg img {
            display: block;
            width: 100%;
            -webkit-filter: blur(20px);
            -moz-filter: blur(5px);
            -o-filter: blur(5px);
            -ms-filter: blur(5px);
            filter: blur(15px);
        }
        #movieSection>.content{
            z-index: 3;
            overflow: hidden;
            position: relative;
        }
        .content>.content-title{
            text-align: center;
            width:100%;
            height:80px;
        }
        .content>.content-title>.content-title-text{
            margin:auto;
            color: #fff;
            border-bottom: 2px solid rgba(255,255,255,0.2);
        }
        .list>li{
            display:list-item;
        }
        .movie-list>ol li.first {
            margin-left: 0;
        }
        .movie-list>ol li .list-info img.poster {
            display: block;
            width: 245px;
            height: 352px;
            border-radius: 5px;
        }
        .movie-list>ol li .movie-list-info img.poster {
            display: block;
            width: 245px;
            height: 352px;
            border-radius: 5px;
        }
        .movie-list>ol li {
            float: left;
            margin-left: 40px;
            padding: 0;
        }
        .movie-list>ol li .movie-list-info .rank {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 150px;
            color: #fff;
            padding: 10px 0 0 15px;
            line-height: 1.1;
            font-size: 2em;
            font-style: italic;
            font-family: 'Roboto';
            font-weight: 300;
            color: #fff;
            text-shadow: 2px 2px 2px rgba(0,0,0,0.8);
            background: url(img/bg-main-movie-rank.png) no-repeat 0 0;
        }
        .movie-list>ol li .btn-util {
            overflow: hidden;
            position: relative;
            margin-top: 10px;
            padding: 0 0 0 85px;
            text-align: left;
        }
        .ico-heart-toggle-gray {
            background-image: url(img/ico-heart-toggle-main.png);
        }
        .main-movie-list>ol li .btn-util {
            overflow: hidden;
            position: relative;
            margin-top: 10px;
            padding: 0 0 0 85px;
            text-align: left;
        }
        .movie-list>ol li .btn-util .btn-like {
            position: absolute;
            left: 0;
            top: 0;
            width: 80px;
            height: 36px;
            line-height: 34px;
            margin: 0;
            padding: 0 5px;
            color: #fff;
            font-size: 0.8667em;
            border-color: #555;
            background-color: rgba(0,0,0,0.4);
        }
        .movie-list>ol li .btn-util .case .button {
            display: block;
            float: left;
            width: 100%;
            margin: 0;
            padding: 0;
            border-radius: 4px;
        }
        /******************************************** 
            영화 영역 속성 정의 끝
        *********************************************/
        #noticeSection{
            background-color: limegreen;
            width:100%;
            height:91px;
        }
        
        /******************************************** 
            footer 영역 속성정의 시작
        *********************************************/
        #footer{
            background-color: #A0A0A0;
            width:100%;
            height:90px;
        }
        .footerContent{
            height: 50px;
            width: 100%;
            position: relative;
            color:white;
        }
        .footerContent>span{
            position: absolute;
            top:20px;
        }
        .footerContent>span:nth-child(2){
            left:160px;
            font-size:12px;
        }
        .footerContent>span:nth-child(3){
            right:0px;
        }
        .footerContent>span:nth-child(2) li{
            margin-bottom:8px;
        }
        .footerContent>span:nth-child(2) li:nth-child(3){
            font-weight:900;
        }
        .footerLogo>img{
            height:50px;
        }
        .footer-findCinema{
            overflow: hidden;
            float: right;
            display: block;
            width: 106px;
            height: 30px;
            margin: 0;
            padding: 0;
            text-align: center;
            line-height: 28px;
            color: #666;
            font-size: .8667em;
            border: 1px solid #d8d9db;
            border-radius: 30px;
            text-decoration: none;
        }
        .ico-footer-search{
            width: 15px;
            height: 15px;
            background-image: url(img/ico-footer-search.png);
            margin-left:4px;
            overflow: hidden;
            display: inline-block;
            margin: -1px 0 0 0;
            padding: 0;
            font-size: 0;
            line-height: 0;
            vertical-align: middle;
            background-position: 0 0;
            background-repeat: no-repeat;
        }
        /******************************************** 
            footer 영역 속성정의 끝
        *********************************************/
    </style>
</head>

<body>
    <header id="header">
        <div class="content">
            <div class="mainLogo"><img src="./img/mainLogo.png" alt=""></div>
            <div class="login-link">
                <a href="#">로그인</a>
                <a href="#">회원가입</a>
                <a href="#">빠른예매</a>
            </div>
            <div class="header-link-left">
                <a href="#" class="link-area-sitemap"></a>
                <a href="#" class="link-area-movie"></a>
                <div>
                    <a href="#">영화</a>
                    <a href="#">예매</a>
                </div>
            </div>
            <div class="header-link-right">
                <div>
                    <a href="#">극장</a>
                    <a href="#">고객센터</a>
                </div>
                <a href="#" class="link-area-ticket"></a>
                <a href="#" class="link-area-mypage"></a>
            </div>
        </div>
    </header>
    <section id="videoSection">
        <div class="content">
            <div class="video-frame">
                <video autoplay="" muted="">
                    <source src="video/sikyung.mp4" type="video/mp4">
                    이 브라우저는 Video 태그를 지원하지 않습니다. (Your browser does not support the video tag.)
                </video>
                <div class="video-wrap">
                    <div class="video-title">시경, 오 시경!</div>
                    <div class="video-subTitle">올겨울을 후누눈하게 보내게 해 줄<br>성시경의 킬링보이스를 듣소</div>
                    <div class="video-btn-group">
                        <a href="#" class="btn-detail">상세보기</a>
                        <a href="#" class="btn-pause"></a>
                        <a href="#" class="btn-mute"></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="movieSection">
        <div class="bg">
            <div class="bg-pattern"></div>
            <img src="https://img.megabox.co.kr/SharedImg/2023/12/18/67HhuLSOsHNKef4Vm78hJl7lqomcqKZt_380.jpg" alt="티저 포스터.jpg" onerror="noImg(this, 'main');">
            </div>
        <div class="content">
            <div class="content-title">
                <span class="content-title-text">
                    박스오피스
                </span>
            </div>
            <div class="movie-list">
                <ol class="list">
                    <li class="first">
                        <a class="movie-list-info">
                            <p class="rank">1<span class="ir">위</span></p>
                            <img src="img/외계인2.jpg" alt="" class="poster">
                            
                            <div class="btn-util">
                            <button type="button" class="button btn-like">
                                <i class="iconset ico-heart-toggle-gray"></i>
                            831</button>
                            <div class="case"><a class="button gblue" title="영화 예매하기">예매</a></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a class="movie-list-info">
                            <p class="rank">2<span class="ir">위</span></p>
                            <img src="img/wish.jpg" alt="" class="poster">
                            
                            <div class="btn-util">
                            <button type="button" class="button btn-like">
                                1.2k<i class="iconset ico-heart-toggle-gray"></i>
                            </button>
                            <div class="case"><a class="button gblue" title="영화 예매하기">예매</a></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a class="movie-list-info">
                            <p class="rank">3<span class="ir">위</span></p>
                            <img src="img/seoulSpring.jpg" alt="" class="poster">
                            <div class="btn-util">
                            <button type="button" class="button btn-like">
                                <i class="iconset ico-heart-toggle-gray"></i>
                                3.4k</button>
                                <div class="case"><a class="button gblue" title="영화 예매하기">예매</a></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a class="movie-list-info">
                            <p class="rank">4<span class="ir">위</span></p>
                            <img src="img/noRyang.jpg" alt="" class="poster" >
                            <div class="btn-util">
                                <button type="button" class="button btn-like">
                                    <i class="iconset ico-heart-toggle-gray"></i>
                                1.5k</button>
                                <div class="case"><a class="button gblue" title="영화 예매하기">예매</a></div>
                            </div>
                        </a>
                    </li>
                </ol>
            </div>
        </div>
    </section>
    <section id="noticeSection"></section>
    <footer id="footer">
        <div class="content">
            <div class="footerContent">
                <span class="footerLogo"><img src="./img/mainLogo.png" alt=""></span>
                <span>
                    <ul>
                        <li>서울 중구 남대문로 120 대일빌딩 2층, 3층</li>
                        <li>대표자명 : 양우찬 , 백성연, 손연희, 진병만, 김서하</li>
                        <li>COPY RIGHT ⓒTERRABOX JONGRO-GO, Inc. All Right Reserved</li>
                    </ul>
                </span>
                <span>
                    <a href="#"class="footer-findCinema"><i class="ico-footer-search"></i>극장찾기</a>
                </span>
            </div>
        </div>
    </footer>
</body>
</html>