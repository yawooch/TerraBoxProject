<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>LIFE THEATER, 테라박스</title>
    <link rel="stylesheet" href="${path}/header.css">
    <link rel="stylesheet" href="${path}/footer.css">
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
    </style>
</head>

<body>
	<jsp:include page="${path}/header.jsp" />

    
    <section id="videoSection">
        <div class="content">
            <div class="video-frame">
                <video autoplay="" muted="">
                    <source src="video/sikyung.mp4" type="video/mp4">이 브라우저는 Video 태그를 지원하지 않습니다. (Your browser does not support the video tag.)</video>
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
	<jsp:include page="${path}/footer.jsp" />
</body>
</html>