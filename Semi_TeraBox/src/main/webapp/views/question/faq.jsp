<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${ pageContext.request.contextPath }" />
<link rel="stylesheet" href="${ pageContext.request.contextPath }/views/question/css/faq.css">
<link rel="img" href="/src/main/webapp/img/">
<link rel="icon" href="../question/img/TeraBox.ico">
<jsp:include page="/views/common/header.jsp" />
<script src="${path}/views/question/js/faq.js"></script>
<div class="qt-body-by">
	<main class="qt-main-by">
		<div class="qt-submenu-by">
			<div class="qt-submenu-area-by">
				<div class="qt-submenu-areaname-by">
					<span></span> <a
						href="http://localhost:8080/question"
						title="고객센터 페이지로 이동" id="qt_submenuname_by"> 고객센터</a> <a
						href="http://localhost:8080/question/faq"
						title="고객센터 페이지로 이동" id="qt_submenuname1_by">자주 묻는 질문</a>
				</div>
			</div>
		</div>
		<div class="qt-mainarea-by">
			<nav id="qt_sidebar-area_by" class="qt-sidebar-areapoint-by">
				<p class="qt-sidebar-each-by">
					<a href="http://localhost:8080/question" title="고객센터">고객센터</a>
				</p>
				<ul>
					<li class="qt-first-area-by"><a class="qt-first-text-by"
						href="http://localhost:8080/question">고객센터
							홈</a></li>
					<li><a
						href="http://localhost:8080/question/notice">공지사항</a></li>
					<li><a class="qt-second-text-by"
						href="http://localhost:8080/question/faq">자주 묻는 질문</a></li>
						<li><a href="http://localhost:8080/question/write">1:1 문의</a></li>
					<li><a href="http://localhost:8080/question/write">단체관람 및 대관문의</a></li>
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
				<h2 class="qt-mainname-by">자주 묻는 질문</h2>
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
				<div class="qt-tab-block-by qt-small-by qt-mb-30-by">
					<ul>
						<li class="qt-on-by">
							<button type="button" class="qt-btn-by qt-tabBtn-by"
								id="qt-totalTab-by" data-no title="전체">
								<a class="qt-acolor-by"
									href="http://localhost:8080/question/faq">전체</a>
							</button>
						</li>
						<li>
							<button type="button" class="qt-btn-by qt-tabBtn-by"
								id="qt-totalTab-by" data-no="88" title="영화예매">
								<a class="qt-acolor1-by"
									href="http://localhost:8080/views/question/faqmovie.jsp">영화예매</a>
							</button>
						</li>
						<li>
							<button type="button" class="qt-btn-by qt-tabBtn-by"
								id="qt-totalTab-by" data-no="89" title="극장/특별관">
								<a href="http://localhost:8080/views/question/faqstate.jsp">극장/특별관</a>
							</button>
						</li>
					</ul>
				</div>
				<div class="qt-faq-list-box-by">
					<p class="qt-reset-by qt-mb10-by">
						<strong><span id="qt_totalTitle_by">전체</span> <span
							class="qt-font-green-by" id="qt_totalCnt_by">77</span>건</strong>
					</p>
					<div class="qt-faq-list-by">
						<ul>
						<c:forEach var="faq" items="${ list }">
							<li>
								<div class="qt-qut-by">
									<a href="#" class="qt-qut-by-a">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[${ faq.faqCategory }]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">${ faq.faqTitle }</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt">${ faq.faqContent } 
<!-- 											<span style="line-height: 107%;"></span> -->
										</span>
									</p>
								</div>
							</li>
						</c:forEach>
						</ul>
					</div>
					<div class="qt-pagination-by">
						<c:forEach var="current" begin="${ pageInfo.startPage }" end="${ page.endPage }" >
							<c:choose>
								<c:when test="${current == pageInfo.currentPage }">
									<button disabled>${ current }</button>
								</c:when>
								<c:otherwise>			
									<button onclick="location.href='${path}/question/faq?page${ current }'">${ current }</button>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="/views/common/footer.jsp" />