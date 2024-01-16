<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<body>
    <header></header>
<link rel="stylesheet" href="./css/theater.css">

	<jsp:include page="${path}/views/common/header.jsp" />
    <main>
        <!-- body중 메뉴바 -->
        <div class="tk-page-util">
            <div class="tk-inner-wrap">
                <div class="tk-location">
                    <span>home</span>
                    <a href="#" title="예매 페이지로 이동">
                        극장
                        </a>
                    <a href="#" title="빠른예매 페이지로 이동">전체극장</a>
                </div>
            </div>
        </div>  
        <section>
            <!-- content -->
            <div class="contents">
                <!-- theater main 메가박스 새로운 지점을 소개합니다. -->
                <div class="theater-main">
                    <div class="main-innerwrap">
                        <div class="main-left">
                            <p class="main-slogun">terrabox</p>
                            <p class="main-txt">
                                테라박스
                                <br>
                                새로운 지점을
                                <br>
                                소개합니다.
                            </p>
                            <!-- swiper-control -->
                            <div class="swiper-control">
                                <div class="swiper-left">
                                    <div class="swiper-bullet">
                                        <span class="swiper-bullet-btn"></span>
                                    </div>
                                    <div class="theater-btn">
                                        <button type="button" class="theater-preview" tabindex="0" 
                                                role="button" aria-label="Previous slide"><img src="../img/icons8-셰브론-왼쪽-24.png"></button>
                                        <button type="button" class="theater-next" tabindex="0" 
                                                role="button" aria-label="Previous slide"><img src="../img/icons8-셰브론-오른쪽-24.png"></button>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </main>

	<jsp:include page="${path}/views/common/footer.jsp" />
</body>
</html>