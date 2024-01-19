<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${ pageContext.request.contextPath }" />
<jsp:include page="${path}/views/common/header.jsp" />
<link rel="stylesheet" href="../question/css/lostItemreal.css">
<link rel="img" href="/src/main/webapp/img/">
<link rel="icon" href="../question/img/TeraBox.ico">
<script src="../js/jquery-3.7.1.js"></script>
<script src="./js/lostItemreal.js"></script>
<div class="qt-body-by">
	<main class="qt-main-by">
		<div class="qt-submenu-by">
			<div class="qt-submenu-area-by">
				<div class="qt-submenu-areaname-by">
					<span></span> <a
						href="http://localhost:8080/views/question/questionHome.jsp"
						title="고객센터 페이지로 이동" id="qt_submenuname_by"> 고객센터</a> <a
						href="http://localhost:8080/views/question/lostItem.jsp"
						title="고객센터 페이지로 이동" id="qt_submenuname1_by">분실물 문의</a>
				</div>
			</div>
		</div>

		<div class="qt-mainarea-by">
			<nav id="qt_sidebar-area_by" class="qt-sidebar-areapoint-by">
				<p class="qt-sidebar-each-by">
					<a href="#" title="고객센터">고객센터</a>
				</p>
				<ul>
					<li class="qt-first-area-by"><a class="qt-first-text-by"
						href="http://localhost:8080/views/question/questionHome.jsp">고객센터
							홈</a></li>
					<li><a href="http://localhost:8080/views/question/faq.jsp">자주묻는
							질문</a></li>
					<li><a class="qt-third-text-by"
						href="http://localhost:8080/views/question/announcement.jsp">공지사항</a></li>
					<li><a href="#">단체관람 및 대관문의</a></li>
					<li><a class="qt-four-text-by"
						href="http://localhost:8080/views/question/lostItem.jsp">분실물
							문의</a></li>
				</ul>
				<div class="qt-info-by">
					<p class="qt-sidebar-each-by">
						테라박스 고객센터 <i class="qt-bar-by"></i> <span>Dream center</span>
					</p>
					<p class="qt-time-by">
						<i class="qt-clock-by qt-iconset-by"></i> "10:00~19:00"
					</p>
				</div>
			</nav>
			<div id="qt_contents_by">
				<h2 class="qt-mainname-by">분실물 문의</h2>
				<div class="clearfix">
					<ul class="dot-list">
						<li>메가박스에서 잃어버린 물건이 있다면 ‘분실물 문의/접수’를 통해 접수해주세요</li>
						<li>접수하신 글은 비밀글로 등록되어 작성자와 관리자만 확인 가능합니다.</li>
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