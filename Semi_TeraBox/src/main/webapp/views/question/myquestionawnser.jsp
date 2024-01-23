<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${ pageContext.request.contextPath }" />
<jsp:include page="${path}/views/common/header.jsp" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/views/question/css/myquestionawnser.css">
<link rel="img" href="/src/main/webapp/img/">
<link rel="icon" href="../question/img/TeraBox.ico">
<script src="../js/jquery-3.7.1.js"></script>
<script src="./js/lostItemreal.js"></script>
<div class="qt-body-by">
	<main class="qt-main-by">
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span> <a href="/mypage" title="나의 테라박스 페이지로 이동">나의
						테라박스</a> <a href="/mypage/myqeustion" title="나의 문의내역 페이지로 이동">나의
						문의내역</a>
				</div>
			</div>
		</div>

		<div class="qt-mainarea-by">
			<div class="lnb-area">
                <nav id="lnb">
                    <p class="tit"><a href="/mypage" title="나의 테라박스">나의 테라박스</a></p>
                    <ul>
                        <li class=""><a href="/mypage" title="예매/구매내역">예매/구매내역</a></li>
                        <li class="on"><a href="/mypage/question" title="나의 문의내역">나의 문의내역</a></li>
                        <li class=""><a href="/mypage/myinfo" title="회원정보">회원정보</a></li>
                    </ul>
                </nav>
            </div>
				
			</nav>
			<div id="qt_contents_by">
				<h2 class="qt-mainname-by">나의 문의내역</h2>
				<div class="clearfix">
					<ul class="dot-list">
						   <li id="tabDesc">고객센터를 통해 남기신 문의내역을 확인하실 수 있습니다.</li>
					</ul>
				</div>
				<div class="table-wrap"></div>
				<div class="board-view">
					<div class="tit-area">
						<p class="tit">[상암]지갑</p>
					</div>
					<div class="info">
						<p>
							<span class="txt">문의사항</span>
						</p>
						<p>
							<strong class="txt">강남</strong>
						</p>
						<p>
							<span class="txt">010-1234-4567</span>
						</p>
						<p>
							<span class="txt">kh1234@naver.com</span>
						</p>
						<p>
							<span class="txt">2024.01.17 21:56:35</span>
						</p>
						<p>
							<span class="txt">미답변</span>
						</p>
					</div>
					<div class="cont">
						<textarea rows="5" cols="30" readonly class="input-textarea view"
							style="border: none;">지갑을 잃어버렸습니다
                            </textarea>
					</div>
					<div class="btn-group pt40">
						<a href="http://localhost:8080/views/question/lostItem.jsp"
							id="listBtn" class="button large" title="목록">목록</a> <a href="#"
							class="button large deleteBtn inq-delete" title="삭제">삭제</a>
					</div>
				</div>
			</div>
	</main>
	<jsp:include page="${path}/views/common/footer.jsp" />