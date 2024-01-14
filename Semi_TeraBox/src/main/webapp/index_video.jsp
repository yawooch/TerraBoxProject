<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<link rel="icon" href="${path}/img/TeraBox.ico">
<link rel="stylesheet" href="${path}/css/index_video.css">
  
<section id="main_videoSection">
    <div class="main-content">
        <div class="main-video-frame">
            <video autoplay="" muted="">
                <source src="video/sikyung.mp4" type="video/mp4">이 브라우저는 Video 태그를 지원하지 않습니다. (Your browser does not support the video tag.)</video>
            <div class="main-video-wrap">
                <div class="main-video-title">시경, 오 시경!</div>
                <div class="main-video-subTitle">올겨울을 후누눈하게 보내게 해 줄<br>성시경의 킬링보이스를 듣소</div>
                <div class="main-video-btn-group">
                    <a href="#" class="main-btn-detail">상세보기</a>
                    <a href="#" class="main-btn-pause"></a>
                    <a href="#" class="main-btn-mute"></a>
                </div>
            </div>
        </div>
    </div>
</section>
