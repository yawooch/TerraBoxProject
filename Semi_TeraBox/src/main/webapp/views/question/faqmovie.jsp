<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${ pageContext.request.contextPath }" />
<jsp:include page="/views/common/header.jsp" />
<link rel="stylesheet" href="../question/css/faqmovie.css">
<link rel="img" href="/src/main/webapp/img/">
<link rel="icon" href="../question/img/TeraBox.ico">
<script src="../js/jquery-3.7.1.js"></script>
<script src="./js/faqmove.js"></script>
<div class="qt-body-by">
	<main class="qt-main-by">
		<div class="qt-submenu-by">
			<div class="qt-submenu-area-by">
				<div class="qt-submenu-areaname-by">
					<span></span> <a
						href="${ path }/views/question/questionHome.jsp"
						title="고객센터 페이지로 이동" id="qt_submenuname_by"> 고객센터</a> <a
						href="${ path }/views/question/faq.jsp"
						title="고객센터 페이지로 이동" id="qt_submenuname1_by">자주 묻는 질문</a>
				</div>
			</div>
		</div>
		<div class="qt-mainarea-by">
			<nav id="qt_sidebar-area_by" class="qt-sidebar-areapoint-by">
				<p class="qt-sidebar-each-by">
					<a href="${ path }/views/question/questionHome.jsp"
						title="고객센터">고객센터</a>
				</p>
				<ul>
					<li class="qt-first-area-by"><a class="qt-first-text-by"
						href="${ path }/views/question/questionHome.jsp">고객센터
							홈</a></li>
					<li><a class="qt-second-text-by"
						href="${ path }/views/question/faq.jsp">자주 묻는 질문</a></li>
					<li><a
						href="${ path }/views/question/announcement.jsp">공지사항</a></li>
					<li><a href="#">단체관람 및 대관문의</a></li>
					<li><a
						href="${ path }/views/question/lostItem.jsp">분실물
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
									href="${ path }/views/question/faq.jsp">전체</a>
							</button>
						</li>
						<li class="qt-on-by">
							<button type="button" class="qt-btn-by qt-tabBtn-by"
								id="qt-totalTab-by" data-no title="영화예매">
								<a class="qt-acolor-by"
									href="#">영화예매</a>
							</button>
						</li>
						<li>
							<button type="button" class="qt-btn-by qt-tabBtn-by"
								id="qt-totalTab-by" data-no="89" title="극장/특별관">
								<a class="qt-acolor1-by"
									href="${ path }/views/question/faqstate.jsp">극장/특별관</a>
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
											<span class="qt-font-green-by">[영화예매]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">인터넷 예매시 부분환불/교환이 가능한가요?</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt"> <span
											style="line-height: 107%;"> <span> 인터넷 예매시에는
													예매매수의 전체환불 및 교환만 가능합니다. <br> 인터넷 예매분에 대해 교환환불 및 취소하고자
													하실 경우, 예매하신 내역 전체에 대해 취소 후 <br> 새로 예매를 하시거나 해당 영화관을
													방문하셔서 처리하셔야 합니다. <br> 1) 인터넷상 취소 가능시간 (상영시간 20분전까지만
													가능) <br> - 전체 취소가능하며, 부분 취소 불가 <br> EX) 인원수, 관람자,
													시간변경은 모두 취소 후 재예매 해주셔야합니다. <br> <br> 2) 현장 취소
													가능시간(상영시간 전까지만 가능) <br> - 전체환불 및 교환가능 <br> 단,
													부분환불 및 교환은 사용하신 카드로 전체 취소 후 재결제하셔야 합니다.
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
											<span class="qt-font-green-by">[영화 예매]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">예매할 수 있는 횟수나 매수등의 제한이
												있나요?</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by1">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt;"> <span
											style="line-height: 107%;"> <span> 1. 온라인 예매
													시(메가박스 홈페이지 및 APP) 1회 결제 시 최대 8매까지 예매 가능합니다. </span> <br> <br>
												<span>2. 1일 5회 또는 최대 24매, 최대 5개 지점까지만 예매 가능합니다. (3가지
													조건 중 1개라도 충족시 추가 예매 불가)</span> <br> <span> 1) 2매씩 총 5번
													예매 시도시 회수 조건 충족으로 추가 예매 불가 (5회)</span> <br> <span> 2)
													8매씩 총 3번 예매 시도시 최대 매수 조건 충족으로 추가 예매 불가 (24매)</span> <br> <span>
													3) 서로다른 5개 지점 예매 시 최대 이용가능 지점 초과로 추가 예매 불가 (5지점)</span> <br>
												<br> <span>3. 매 월 1일에서 마지막날짜를 기준으로 인당 최대 100매까지
													예매 가능합니다.</span> <br> <span> 1) 월 예매 제한 수량을 초과 할 경우 추가
													예매가 불가하여 추후 예매 제한 수량이 감소할 수 있습니다. </span> <br> <span>
													2) 월 예매 횟수는 예매를 취소하여도 초기화 되지 않습니다.</span> <br> <br> <span>※
													만약 단체관람등으로 다량의 좌석 구매가 필요하시다면 고객센터 또는 1:1 문의를 통해 관람을 원하시는
													지점으로 문의 부탁</span> <br> <span>드립니다.</span> <br> <br>
												<span><strong>※적용일: 2023년 8월 7일</strong></span>
										</span>
										</span>
									</p>
								</div>
							</li>
							<li>
								<div class="qt-qut-by" id="qt_on_by2">
									<a href="#">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[영화예매]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">제휴 예매처 예매 시 포인트 적립/본영화
												등록이 가능한가요?</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by2">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt;"> <span
											style="line-height: 107%;"> <span>제휴
													예매처[인터파크]에서 예매하신 경우</span> <br> <span>예매자 정보와 메가박스 회원
													정보가 일치 시 자동 적립 됩니다.</span> <br> <br> <span>적립자
													변경은 불가하나 메가박스 회원이 아닌 예매자 정보일 경우</span> <br> <span>상영시간
													전까지 현장 매표소 방문 시 적립은 가능합니다.</span> <br> <br> <span>본영화
													등록은 극장에서 발권하신 티켓 하단의 온라인 예매번호 12자리를 입력시 등록되며,</span> <br> <span>본영화
													등록시 관람이력에 포함되어 포토카드 제작이 가능합니다.</span>
										</span>
										</span>
									</p>
								</div>
							</li>
							<li>
								<div class="qt-qut-by" id="qt_on_by3">
									<a href="#">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[영화예매]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">인터넷 예매 수수료가 있나요?</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by3">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt;"> <span
											style="line-height: 107%;"> <span>메가박스 공식 홈페이지,
													어플, 웹을 통한 예매 진행시</span> <br> <span>별도의 수수료는 발생되지 않습니다.</span>
												<br> <br> <span>* 제휴 사이트를 통한 예매시 별도로 책정된
													수수료가 부과되오니,</span> <br> <span>이점 유의 부탁드립니다.</span>
										</span>
										</span> </span>
									</p>
								</div>
							</li>
							<li>
								<div class="qt-qut-by" id="qt_on_by4">
									<a href="#">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[영화예매]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">인터넷 예매 시 취소는 어떻게 하나요?</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by4">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt;"> <span
											style="line-height: 107%;"> <span>온라인 예매 취소</span> <br>
												<span>- 상영시간 20분 전까지 홈페이지, 어플, 웹을 통해 취소 가능합니다.</span> <br>
												<span> 단, 상영시간 20분 미만으로 남았을 경우 현장 매표소를 통해
													상영시간(티켓표기시간) 전까지 취소 가능합니다.</span> <br> <br> <span>-
													온라인 예매 후 현장에서 지류 티켓으로 출력을 선 진행한 경우에는 온라인 취소가 불가능하며,</span> <br>
												<span> 현장 매표소를 통해 상영 시간(티켓표기시간) 전까지 취소 가능합니다.</span> <br>
												<span>※ 현장이 혼잡할 수 있으니 시간적 여유를 두고 최소 20분 전까지 방문하시어 환불
													요청 부탁드립니다.</span> <br> <span>※ 제휴 사이트를 통해 예매하신 경우, 예매를
													진행한 사이트로 취소 및 환불 문의 주시기 바랍니다.</span>
										</span>
										</span> </span>
									</p>
								</div>
							</li>
							<li>
								<div class="qt-qut-by" id="qt_on_by5">
									<a href="#">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[영화예매]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">비회원 예매 시,현장에서 티켓수령은 어떻게
												하나요?</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by5">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt;"> <span
											style="line-height: 107%;"> <span>비회원 예매 완료시 <strong
													style="color: blue;"> ▶[비회원 예매확인]</strong>을 통해 예매번호를 확인할 수
													있으며,
											</span> <br> <span>예매번호를 무인발권기 또는 현장 매표소에서 입력 또는 제시시 티켓
													발권이 가능합니다.</span> <br> <br> <span>※ 비회원으로 예매의 경우
													고객님의 회원정보 미 일치시 정보조회가 되지 않습니다.</span> <br> <span>(휴대폰번호+생년월일+비밀번호4자리)</span>
										</span>
										</span> </span>
									</p>
								</div>
							</li>
							<li>
								<div class="qt-qut-by" id="qt_on_by6">
									<a href="#">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[영화예매]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">예매내역을 반드시 출력해가야 하나요?</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by6">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt;"> <span
											style="line-height: 107%;"> <span>비회원 예매 시 남긴
													휴대폰 번호로 전송된 예매번호를 기준으로 무인발권기 및 현장 매표소에서</span> <br> <span>티켓
													출력이 가능합니다.</span> <br> <br> <span>* 비회원 예매의 경우
													모바일티켓 발권이 되지 않습니다. </span>
										</span>
										</span> </span>
									</p>
								</div>
							</li>

							<li>
								<div class="qt-qut-by" id="qt_on_by8">
									<a href="#">
										<p class="qt-tit-by">
											<span class="qt-font-green-by">[영화예매]</span>
										</p>
										<p class="qt-txt-by">
											<span class="qt-font-block-by">영화 관람등급은 어떻게 되나요?</span>
										</p>
									</a>
								</div>
								<div class="qt-awn-by" id="qt_awn_by8">
									<p class="qt-cont-by">
										<span style="font-size: 10.0pt;"> <span
											style="line-height: 107%;"> <span><strong>전체
														관람가:</strong>모든 연령의 고객이 관람 가능</span> <br> <br> <span><strong>12세
														이상 관람가:</strong>만12세 이상(주민등록상 생일기준) 관람 가능</span> <br> <span>만12세
													미만 고객은 보호자(성인) 동반 시 관람 가능</span> <br> <br> <span><strong>15세
														이상 관람가:</strong>만15세 이상(주민등록상 생일기준) 관람 가능</span> <br> <span>만15세
													미만 고객은 보호자(성인) 동반 시 관람 가능</span>
										</span> <br> <br> <span><strong>청소년 관람불가:</strong>만18세
												이상(주민등록상 생일기준) 관람 가능</span> <br> <span>- 만18세 이상이더라도
												고등학교 재학중인 경우 관람 불가</span> <br> <span>- 신분증 지참 필수 (티켓
												구매, 입장 시 신분증 확인 必)</span> <br> <span>만18세 미만 고객은
												보호자(성인) 동반 시에도 관람 불가</span> <br> <br> <span
											style="color: red;"><strong>* 보호자(성인) : 만 20세
													이상의 성인</strong></span>
										</span>
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
	<jsp:include page="/views/common/footer.jsp" />