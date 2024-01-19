<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
	<jsp:include page="${path}/views/common/header.jsp" />
    <link rel="stylesheet" href="../question/css/announcementTerr.css">
    <link rel="img" href="/src/main/webapp/img/">
    <link rel="icon" href="../question/img/TeraBox.ico">
    <script src="../js/jquery-3.7.1.js"></script>
    <script src="./js/announcementTerr.js"></script>
    <div class="qt-body-by">
        <main class="qt-main-by">
            <div class="qt-submenu-by">
                <div class="qt-submenu-area-by">
                    <div class="qt-submenu-areaname-by">
                        <span></span>
                        <a href="http://localhost:8080/views/question/questionHome.jsp" title="고객센터 페이지로 이동" id="qt_submenuname_by"> 고객센터</a>
                        <a href="http://localhost:8080/views/question/announcement.jsp" title="고객센터 페이지로 이동" id="qt_submenuname1_by">공지사항</a>
                    </div>
                </div>
            </div>

            <div class="qt-mainarea-by">
                <nav id="qt_sidebar-area_by" class="qt-sidebar-areapoint-by">
                    <p class="qt-sidebar-each-by">
                        <a href="#" title="고객센터">고객센터</a>
                    </p>
                    <ul>
                        <li class="qt-first-area-by">
                            <a class="qt-first-text-by"
                                href="http://localhost:8080/views/question/questionHome.jsp">고객센터
                                홈</a>
                        </li>
                        <li><a
                                href="http://localhost:8080/views/question/faq.jsp">자주묻는
                                질문</a></li>
                        <li><a class="qt-third-text-by"
                                href="http://localhost:8080/views/question/announcement.jsp">공지사항</a></li>
                        <li><a href="#">단체관람 및 대관문의</a></li>
                        <li><a href="http://localhost:8080/views/question/lostItem.jsp">분실물 문의</a></li>
                    </ul>
                    <div class="qt-info-by">
                        <p class="qt-sidebar-each-by">
                            테라박스 고객센터
                            <i class="qt-bar-by"></i>
                            <span>Dream center</span>
                        </p>
                        <p class="qt-time-by">
                            <i class="qt-clock-by qt-iconset-by"></i>
                            "10:00~19:00"
                        </p>
                    </div>
                </nav>
                <div id="qt_contents_by">
                    <h2 class="qt-mainname-by">공지사항</h2>
                    <div class="qt-tab-block-by qt-small-by qt-mb-30-by">
                        <ul>
                            <li>
                                <button type="button" class="qt-btn-by qt-tabBtn-by" id="qt-totalTab-by" data-no="88"
                                title="전체"><a class="qt-acolor1-by" href="http://localhost:8080/views/question/announcement.jsp">전체</a></button>
                            </li>
                            <li class="qt-on-by">
                                <button type="button" class="qt-btn-by qt-tabBtn-by" id="qt-totalTab-by" data-no
                                    title="테라박스 공지"><a class="qt-acolor-by" href="http://localhost:8080/views/question/announcementTerr.jsp">테라박스 공지</a></button>
                            </li>
                            <li>
                                <button type="button" class="qt-btn-by qt-tabBtn-by" id="qt-totalTab-by" data-no="89"
                                    title="지점 공지"><a class="qt-acolor1-by" href="http://localhost:8080/views/question/announcementSeuel.jsp">지점 공지</a></button>
                            </li>
                        </ul>
                    </div>
				<div class="board-list-util">
					<p class="result-count">
						<strong> "전체" <em class="font-gblue">3,646</em> "건"
						</strong>
					</p>
					<div class="board-search">
						<input type="text" id="searchTxt" title="검색어를 입력해 주세요."
							placeholder="검색어를 입력해 주세요." class="input-text" value
							maxlength="15">
						<button type="button" id="searchBtn" class="btn-search-input">검색</button>
					</div>
				</div>
				<div class="table-wrap">
                        <table class="board-list">
                            <caption>번호, 극장, 구분, 제목, 등록일이 들어간 공지사항 전체 리스트</caption>
                            <col style="width: 72px;">
                            <col style="width: 133px;">
                            <col style="width: 95px;">
                            <col>
                            <col style="width: 116px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">번호</th>
                                    <th scope="col">극장</th>
                                    <th scope="col">구분</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">등록일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>테라박스</td>
                                    <td>공지</td>
                                    <th>
                                        <a href="#" class="moveBtn" title="공지사항 상세보기"><span>[컬쳐랜드] 시스템점검 안내
                                                (1/25)</span></a>
                                    </th>
                                    <td>2024.01.15</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>테라박스</td>
                                    <td>공지</td>
                                    <th><a href="#" class="moveBtn" title="공지사항 상세보기"><span>테라박스 개인정보 처리방침 변경
                                                안내</span></a></th>
                                    <td>2024.01.15</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>테라박스</td>
                                    <td>공지</td>
                                    <th><a href="#" class="moveBtn" title="공지사항 상세보기"><span>[로열 발레] 호두까기 인형 러닝 타임 변경의
                                                건</span></a></th>
                                    <td>2024.01.17</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>테라박스</td>
                                    <td>공지</td>
                                    <th><a href="#" class="moveBtn" title="공지사항 상세보기"><span>[하나카드] 시스템 점검
                                                안내(11/18)</span></a>
                                    </th>
                                    <td>2024.01.15</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>테라박스</td>
                                    <td>공지</td>
                                    <th>
                                        <a href="#" class="moveBtn" title="공지사항 상세보기"><span>메가박스 금액권 판매 종료
                                                안내(11/30)</span></a>
                                    </th>
                                    <td>2024.01.11</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>테라박스</td>
                                    <td>공지</td>
                                    <th>
                                        <a href="#" class="moveBtn" title="공지사항 상세보기"><span>[카카오뱅크] 시스템 정기 점검에 따른 이용 제한 공지(10/15)</span></a>
                                    </th>
                                    <td>2024.01.12</td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>테라박스</td>
                                    <td>공지</td>
                                    <th>
                                        <a href="#" class="moveBtn" title="공지사항 상세보기"><span>[동대문] 굿모닝시티 건물 주차요금 변경
                                                안내</span></a>
                                    </th>
                                    <td>2024.01.15</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>테라박스</td>
                                    <td>공지</td>
                                    <th>
                                        <a href="#" class="moveBtn" title="공지사항 상세보기"><span>[메가박스 앱] iOS 12 버전 지원중단
                                                안내</span></a>
                                    </th>
                                    <td>2024.01.15</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <nav class="qt-pagination-by">
                        <strong class="qt-active-by">1</strong>
                        <a title="2페이지보기" href="#" pagenum="2">2</a>
                        <a title="3페이지보기" href="#" pagenum="3">3</a>
                        <a title="4페이지보기" href="#" pagenum="4">4</a>
                        <a title="5페이지보기" href="#" pagenum="5">5</a>
                        <a title="6페이지보기" href="#" pagenum="6">6</a>
                        <a title="이후 10페이지보기" href="#" class="control next" pagenum="11">next</a>
                        <a title="마지막 페이지보기" href="#" class="control last" pagenum="787">last</a>
                    </nav>
                </div>
        </main>
       	<jsp:include page="${path}/views/common/footer.jsp" />