<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<jsp:include page="${path}/views/common/header.jsp" />
<link rel="stylesheet" href="${path}/views/mypage/css/myquestion.css">
<div class="container">
    <div class="page-util">
        <div class="location">
            <span>Home</span>
            <a href="/mypage" title="나의 테라박스 페이지로 이동">나의 메가박스</a>
            <a href="/mypage/myinquiry" title="나의 문의내역 페이지로 이동">나의 문의내역</a>
            <a href="/mypage/myinquiry?cd=INQD01" title="1:1 문의내역 페이지로 이동">1:1 문의내역</a>
        </div>
    </div>
    <div class="inner-wrap">
        <div class="lnb-area">
            <nav id="lnb">
                <p class="tit"><a href="/mypage" title="나의 메가박스">나의 메가박스</a></p>
                <ul>
                    <li class=""><a href="/mypage/bookinglist" title="예매/구매내역">예매/구매내역</a></li>
                    <li class="on"><a href="/mypage/myinquiry" title="나의 문의내역">나의 문의내역</a></li>
                    <li><a href="/mypage/myinfo?returnURL=info" title="회원정보">회원정보</a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>
<jsp:include page="${path}/views/common/footer.jsp" />