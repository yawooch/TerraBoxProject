<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${ pageContext.request.contextPath }" />
<jsp:include page="${path}/views/common/header.jsp" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/views/question/css/question.css">
<link rel="img" href="/src/main/webapp/img/">
<div class="qt-body-by">

	<main class="qt-main-by">
		<div class="qt-submenu-by">
			<div class="qt-submenu-area-by">
				<div class="qt-submenu-areaname-by">
					<span></span> <a href="http://localhost:8080/question"
						title="고객센터 페이지로 이동" id="qt_submenuname_by"> 고객센터</a> <a
						href="http://localhost:8080/question" title="고객센터 페이지로 이동"
						id="qt_submenuname1_by"> 고객센터 홈</a>
				</div>
			</div>
		</div>

		<div class="qt-mainarea-by">
			<nav id="qt_sidebar-area_by" class="qt-sidebar-areapoint-by">
				<p class="qt-sidebar-each-by">
					<a href="#" title="고객센터">고객센터</a>
				</p>
				<ul class="qt-te-area-by">
					<li class="qt-first-area-by"><a class="qt-first-text-by"
						href="http://localhost:8080/question">고객센터 홈</a></li>
					<li><a href="http://localhost:8080/question/notice">공지사항</a></li>
					<li><a href="http://localhost:8080/question/faq">자주 묻는 질문</a></li>
					<li><a href="http://localhost:8080/question/faq">1:1 문의</a></li>
					<li><a href="http://localhost:8080/question/write">단체관람 및
							대관문의</a></li>
					<li><a
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
				<h2 class="qt-mainname-by">고객센터 홈</h2>
				<div class="qt-input-search-area-by">
					<div class="qt-search-area-by">
						<label for="qt_search_by" class="qt-label-by">빠른검색</label>
						<div class="qt-searchbar-by">
							<input type="search" name="qt_search_by" class="qt-board-by"
								placeholder="검색어를 입력해 주세요" maxlength="15"></input>
							<button type="button" class="qt-buttonicon-by"></button>
						</div>
					</div>
				</div>
				<div class="qt-custo-main-by">
					<div class="qt-custo-main-area-by">
						<div class="qt-block-content-by">
							<a href="http://localhost:8080/question/notice"
								title="분실물 문의 페이지로 이동">
								<p>
									<Strong>분실물 문의</Strong> "잃어버린 물건을 접수해 주시면" <br> "신속히
									찾아드리겠습니다"
								</p>
							</a>
						</div>
						<div class="qt-block-content1-by">
							<a href="http://localhost:8080/question/write"
								title="1:1 문의 페이지로 이동">
								<p>
									<Strong>1:1 문의</Strong> "해결되지않은 문제가 있나요?" <br> "1:1문의로
									문의주세요"
								</p>
							</a>
						</div>
						<div class="qt-block-content2-by">
							<a href="http://localhost:8080/question/write"
								title="단체관람 및 대관 문의 페이지로 이동">
								<p>
									<Strong>단체관람 및 대관문의</Strong> "단체관람 및 대관을 원하시면" <br> "문의
									해주세요"
								</p>
							</a>
						</div>
						<div class="qt-block-content3-by">
							<a href="http://localhost:8080/question/faq"
								title="자주 묻는 질문 페이지로 이동">
								<p>
									<Strong>자주 묻는 질문</Strong> "빠르고 간편하게 검색하세요"
								</p>
							</a>
						</div>
					</div>
					<div class="qt-notice-wrap-by">
						<div class="qt-block-left-by">
							<div class="qt-tit-area-by">
								<h3 class="qt-tit-by qt-small-by ">자주 묻는 질문 BEST5</h3>
								<a href="http://localhost:8080/question/faq" class="qt-more-by"
									title="더보기"> 더보기 <i class="qt-iconsetarea-by"></i>
								</a>
							</div>
							<div>
								<ol class="qt-quqtionlist-by">
									<li><a href="#" class="qt-qna1-by" data-idx="1"
										title="질문 상세 보기"> <span class="qt-numbercheck-by">1</span>
											&nbsp; <span class="qt-numbercheck-area-by">[기프트카드]</span>
											기프트카드를 보냈는데 상대방이 받지 못한다고 합니다. <span class="qt-date-by">2023.07.12</span>
									</a></li>
									<li><a href="#" class="qt-qna1-by" data-idx="2"
										title="질문 상세 보기"> <span class="qt-numbercheck-by">2</span>
											&nbsp; <span class="qt-numbercheck-area-by">[기프트카드]</span>
											선물은 어떤 경로로 보낼 수 있나요? <span class="qt-date-by">2023.07.12</span>
									</a></li>
									<li><a href="#" class="qt-qna1-by" data-idx="3"
										title="질문 상세 보기"> <span class="qt-numbercheck-by">3</span>
											&nbsp; <span class="qt-numbercheck-area-by">[기프트카드]</span>
											신용카드의 구매 한도는 얼마이며, 법인카드로 결제가 가능한가요? <span class="qt-date-by">2023.07.12</span>
									</a></li>
									<li><a href="#" class="qt-qna1-by" data-idx="4"
										title="질문 상세 보기"> <span class="qt-numbercheck-by">4</span>
											&nbsp; <span class="qt-numbercheck-area-by">[기프트카드]</span> 여러
											명에게 선물한 후 부분적으로 취소가 가능한가요? <span class="qt-date-by">2023.07.12</span>
									</a></li>
								</ol>
							</div>
						</div>
						<div class="qt-block-right-by">
							<div class="qt-tit-area-by">
								<h3 class="qt-tit-by qt-small-by ">공지사항</h3>
								<a href="http://localhost:8080/question/notice"
									class="qt-more-by" title="더보기"> 더보기 <i
									class="qt-iconsetarea-by"></i>
								</a>
							</div>
							<div>
								<ol class="qt-quqtionlist-by">
									<li><a href="#" class="qt-qna1-by" data-no="11027"
										title="공지사항 상세 보기"> <span class="qt-numbercheck-by"></span>

											<span class="qt-numbercheck-area-by"> <i
												class="qt-iconotice-by"></i> [공지]
										</span> 서울페이(서울사랑상품권) 서비스 종료 안내 (1/31) <span class="qt-date-by">2024.01.11</span>
									</a></li>
									<li><a href="#" class="qt-qna1-by" data-idx="2"
										title="공지사항 상세 보기"> <span class="qt-numbercheck-by"></span>

											<span class="qt-numbercheck-area-by"> <i
												class="qt-iconotice-by"></i> [공지]
										</span> NICE평가정보 서비스 점검 안내(01/15) <span class="qt-date-by">2024.01.11</span>
									</a></li>
									<li><a href="#" class="qt-qna1-by" data-idx="3"
										title="공지사항 상세 보기"> <span class="qt-numbercheck-by"></span>

											<span class="qt-numbercheck-area-by"> <i
												class="qt-iconotice-by"></i> [공지]
										</span> [컬쳐랜드] 시스템 점검 안내 (1/25) <span class="qt-date-by">2024.01.11</span>
									</a></li>
									<li><a href="#" class="qt-qna1-by" data-idx="4"
										title="공지사항 상세 보기"> <span class="qt-numbercheck-by"></span>
											<span class="qt-iconotice-name-by"> <i
												class="qt-iconotice-block-by"></i> [하남스타필드]
										</span> [하남스타필드]상영관 명칭 변경 안내 <span class="qt-date-by">2024.01.11</span>
									</a></li>

								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="${path}/views/common/footer.jsp" />