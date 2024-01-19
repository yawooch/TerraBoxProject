<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${ pageContext.request.contextPath }" />
<jsp:include page="${path}/views/common/header.jsp" />
<link rel="stylesheet" href="../question/css/faqstate.css">
<link rel="img" href="/src/main/webapp/img/">
<link rel="icon" href="../question/img/TeraBox.ico">
<script src="./js/faqstate.js"></script>
<div class="qt-body-by">
	<main class="qt-main-by">
		<div class="qt-submenu-by">
			<div class="qt-submenu-area-by">
				<div class="qt-submenu-areaname-by">
					<span></span> <a
						href="http://localhost:8080/views/question/questionHome.jsp"
						title="고객센터 페이지로 이동" id="qt_submenuname_by"> 고객센터</a> <a
						href="http://localhost:8080/views/question/faq.jsp"
						title="고객센터 페이지로 이동" id="qt_submenuname1_by">자주 묻는 질문</a>
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
					<li><a class="qt-second-text-by"
						href="http://localhost:8080/views/question/faq.jsp">자주 묻는 질문</a></li>
					<li><a
						href="http://localhost:8080/views/question/announcement.jsp">공지사항</a></li>
					<li><a href="#">단체관람 및 대관문의</a></li>
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
						<li>
							<button type="button" class="qt-btn-by qt-tabBtn-by"
								id="qt-totalTab-by" data-no="88" title="전체">
								<a class="qt-acolor1-by"
									href="http://localhost:8080/views/question/faq.jsp">전체</a>
							</button>
						</li>
						<li>
							<button type="button" class="qt-btn-by qt-tabBtn-by"
								id="qt-totalTab-by" data-no="89" title="영화예매">
								<a class="qt-acolor1-by"
									href="http://localhost:8080/views/question/faqmovie.jsp">영화
									예매</a>
							</button>
						</li>
						<li class="qt-on-by">
							<button type="button" class="qt-btn-by qt-tabBtn-by"
								id="qt-totalTab-by" data-no title="극장/특별관">
								<a class="qt-acolor-by"
									href="http://localhost:8080/views/question/faqstate.jsp"></a>극장/특별관
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
							<li>
								<div class="qt-qut-by" id="qt_on_by">
									<a href="#">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[극장/특별관]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">오리지널 티켓 및 특전 수량 안내</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt"> <span
											style="line-height: 107%;"> <span> 안녕하세요. 테라박스
													입니다. <br> <br> 기존 특전관련 잔여 수량에 대한 안내가 되었습니다만, <br>
													고객님의 많은 관심과 성원으로 지점별 현황 파악이 원활 하지 않아 <br> 20년 8월 13일부로
													<br> <strong>드림센터에서는 오리지널 티켓과 영화 특전의 지점별 수량에
														관한 정보를 제공하지 않습니다.</strong> <br> 번거로우시겠지만 고객님께서는 지점 방문 후 확인
													부탁드립니다. <br> <br> 항상 테라박스를 이용해 주셔서 감사합니다.
											</span>
										</span>
										</span>
									</p>
								</div>
							</li>
							<li>
								<div class="qt-qut-by" id="qt_on_by1">
									<a href="#">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[극장/특별관]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">발코니 1석에 몇명이 관람이 가능한가요?</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by1">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt;"> <span
											style="line-height: 107%;"> <span> 발코니 의 경우 </span> <br>
												<span>최대 관람인원수는 4인이며, 48개월 미만의 아동의 경우 1인 초과입장이 가능합니다.</span>
												<br> <span>EX) 성인 3명 + 5세 영아1명 + 48개월 미만 1명 =
													입장가능</span> <br> <span> 성인 3명 + 48개월 미만 2명 = 입장가능</span> <br>
												<span> 성인4명 + 48개월 미만 2명 = 입장불가</span> <br> <span>
													48개월 이상의 유아일 경우에는 인원수에 포함되며, 4인까지만 입장가능합니다.</span>
										</span>
										</span>
									</p>
								</div>
							</li>
							<li>
								<div class="qt-qut-by" id="qt_on_by2">
									<a href="#">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[극장/특별관]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">주차가 가능한가요?</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by2">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt;"> <span
											style="line-height: 107%;"> 지점별 영화관의 주차공간이 마련되어 있으며, <br>
												주차 요금 및 주차장 정보 등 자세한 내용은 이용하시는 지점 선택 후 <br> 약도/교통/주차
												메뉴를 통해 확인 가능합니다.
										</span>
										</span>
									</p>
								</div>
							</li>
							<li>
								<div class="qt-qut-by" id="qt_on_by3">
									<a href="#">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[극장/특별관]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">ARS 이용안내</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by3">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt;"> <span
											style="line-height: 107%;"> <strong>◆ 전화로
													상담하는 ARS</strong> <br> 사용하시는 휴대폰 또는 유선전화로 ARS서비스를 받으실 수 있습니다.
												상담 가능한 시간을 확인 하신 후 이용해 주세요 <br> <strong>- 고객센터
													운영시간 : 10:00~19:00</strong> <br> - 전국 어디서나 지역번호없이 1544-0070을
												이용하시면 고객센터 및 ARS를 통하여 문의를 할 수 있습니다. <br> * ARS서비스의 경우
												유료이며, 발신자 부담으로 통화료가 부과됩니다. <br> * ARS상담원 연결이 지연되는 경우
												상담톡으로 문의주시면 빠르게 안내드립니다. <br> <br> ◇ 상담톡 <strong><a
													href="#" style="color: red";> ▷바로가기</a></strong> <br> 궁금한 내용을
												챗봇이 바로 알려주고, 추가 문의는 상담원과 채팅으로! <br> 전화보다 빠르고 간편하게 채팅으로
												상담톡 문의가능합니다. <br> <br> ◇ 1:1 문의하기 <strong><a
													href="#" style="color: blue";> ▷바로가기</a></strong> <br> 고객센터 및
												극장별 궁금하신 사항이 있으시면 문의글로 남겨주시면 답변 드리겠습니다. <br>
										</span>
										</span> </span>
									</p>
								</div>
							</li>
							<li>
								<div class="qt-qut-by" id="qt_on_by5">
									<a href="#">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[극장/특별관]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">외부음식 반입이 가능한가요?</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by5">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt;"> <span
											style="line-height: 107%;"> <span>상영관 내 외부 음식
													반입은 가능하나</span> <br> <span>영화 관람 시 다른 고객님에게 방해가 되지않은
													품목에 한하여 반입 가능합니다.</span> <br> <br> <span>강한 냄새 및
													지속적인 소음이 발생하는 품목은 취식 후 입장해주시길 부탁드리며,</span> <br> <span>쾌적한
													관람 환경을 위해 많은 양해 부탁드립니다.</span>
										</span>
										</span> </span>
									</p>
								</div>
							</li>
							<li>
								<div class="qt-qut-by" id="qt_on_by7">
									<a href="#">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[극장/특별관]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">분실물 문의는 어떻게하나요?</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by7">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt;"> <span
											style="line-height: 107%;"> <span>홈페이지 및 모바일 어플
													고객센터 > 분실물 문의를 통해 관람하신 지점과 상세 내용을 기재하여 접수하여주시면</span> <br> <span>지점에서
													확인 후 순차 답변을 드립니다.</span>
										</span>
										</span> </span>
									</p>
								</div>
							</li>
							<li>
								<div class="qt-qut-by" id="qt_on_by9">
									<a href="#">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[극장/특별관]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">반려동물과 함께 영화관람이 가능한가요?</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by9">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt;"> <span
											style="line-height: 107%;"> <span>안내견 제외, 반려동물의
													경우 상영관 동반 입장이 불가능한 점 이용에 참고부탁드립니다.</span> <br> <br> <span>상영관
													내 돌발상황 발생 및 알러지 보유 고객 등 다른 고객으로부터 불편이 접수 될 수 있어 입장이 제한되는 점
													양해 부탁드립니</span> <br> <span>다.</span>
										</span>
										</span> </span>
									</p>
								</div>
							</li>
						</ul>
					</div>
					<nav class="qt-pagination-by">
						<strong class="qt-active-by">1</strong> <a title="2페이지보기" href="#"
							pagenum="2">2</a> <a title="3페이지보기" href="#" pagenum="3">3</a> <a
							title="4페이지보기" href="#" pagenum="4">4</a> <a title="5페이지보기"
							href="#" pagenum="5">5</a> <a title="6페이지보기" href="#" pagenum="6">6</a>
					</nav>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="${path}/views/common/footer.jsp" />