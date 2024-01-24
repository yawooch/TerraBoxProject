<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="${path}/views/question/img/TeraBox.ico">
    <title>LIFE THEATER, 테라박스</title>
    <link rel="stylesheet" href="${path}/views/ticket/css/bookingSeat2.css">
    <jsp:include page="/views/common/header.jsp" />
    <script src="${path}/views/ticket/js/bookingSeat2.js"></script>
    <main>
        <!-- body중 메뉴바 -->
        <section>
            <div class="tk-page-util">
                <div class="tk-inner-wrap">
                    <div class="tk-location">
                        <span>home</span>
                        <a href="#" title="예매 페이지로 이동">
                            예매
                            </a>
                        <a href="#" title="빠른예매 페이지로 이동">빠른예매</a>
                    </div>
                </div>
            </div>    
        </section>
    
    <!-- body 왼쪽 좌석 박스으으  -->
    <section>
        <div class="tk-inner-wrap" style="padding-top:40px; padding-bottom:100px;">
            <div class="tk-quick-reserve">
                <h2 class="tk-tit">빠른예매</h2>   
            </div>
            <div class="tk-seat-select-section">
                <div class="tk-seat-section">
                    <div class="tk-tit-util">
                        <h3 class="tk-tit tk-small"> 관람인원선택</h3>
                        <div class="tk-right">
                            <button type="reset" class="tk-button tk-gray-line small" id="seatMemberCntInit">
                                <i class="tk-iconset tk-ico-reset-small"></i> 초기화
                            </button>
                        </div>
                    </div>
                    
                    <div class="tk-seat-area">
                        <div class="tk-seat-count">
                            <div class="tk-cell">
                                <p class="tk-txt">성인</p>
                                <div class="tk-counter-group">
                                    <button class="tk-btn-minus tk_btn_minus" id="tk_btn_minus" >-</button>
                                    <div class="tk-counter"><span id="tk_now">0</span></div>
                                    <button class="tk-btn-plus tk_btn_plus" id="tk_btn_plus">+</button>
                                </div>
                            </div>
                            <div class="tk-cell">
                                <p class="tk-txt">청소년</p>
                                <div class="tk-counter-group">
                                    <button class="tk-btn-minus tk_btn_minus" id="tk_btn_minus2">-</button>
                                    <div class="tk-counter"><span id="tk_now2">0</span></div>
                                    <button class="tk-btn-plus  tk_btn_plus" id="tk_btn_plus2">+</button>
                                </div>
                            </div>
                            <div class="tk-cell">
                                <p class="tk-txt">경로</p>
                                <div class="tk-counter-group">
                                    <button class="tk-btn-minus tk_btn_minus" id="tk_btn_minus3">-</button>
                                    <div class="tk-counter"><span id="tk_now3">0</span></div>
                                    <button class="tk-btn-plus tk_btn_plus" id="tk_btn_plus3">+</button>
                                </div>
                            </div>
                        </div>
                        <!-- 스크린 안에 좌석 -->
                        <div class="tk-seat-body">
                            <span class="tk-screen-span">    
                                <img src="${path}/views/ticket/img/img-theater-screen.png" alt="screen" class="tk-screen_img">
                            </span>
                            <div class="tk-seat-container">
                                <div class="tk-seat"> 
                                    <div class="tk-line">A</div>
                                    <button class="tk-seat-click">1</button>
                                    <button class="tk-seat-click">2</button>
                                    <button class="tk-seat-click">3</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">4</button>
                                    <button class="tk-seat-click">5</button>
                                    <button class="tk-seat-click">6</button>
                                    <button class="tk-seat-click">7</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">8</button>
                                    <button class="tk-seat-click">9</button>
                                    <button class="tk-seat-click">10</button>
                                    <button class="tk-seat-click">11</button>
                                    <button class="tk-seat-click">12</button>
                                </div>
                                <div class="tk-seat"> 
                                    <div class="tk-line">B</div>
                                    <button class="tk-seat-click">1</button>
                                    <button class="tk-seat-click">2</button>
                                    <button class="tk-seat-click">3</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">4</button>
                                    <button class="tk-seat-click">5</button>
                                    <button class="tk-seat-click">6</button>
                                    <button class="tk-seat-click">7</button>
                                    <button class="tk-seat-click"style="margin-right: 23px;">8</button>
                                    <button class="tk-seat-click">9</button>
                                    <button class="tk-seat-click">10</button>
                                    <button class="tk-seat-click">11</button>
                                    <button class="tk-seat-click">12</button>
                                </div>
                                <div class="tk-seat"> 
                                    <div class="tk-line">C</div>
                                    <button class="tk-seat-click">1</button>
                                    <button class="tk-seat-click">2</button>
                                    <button class="tk-seat-click">3</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">4</button>
                                    <button class="tk-seat-click">5</button>
                                    <button class="tk-seat-click">6</button>
                                    <button class="tk-seat-click">7</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">8</button>
                                    <button class="tk-seat-click">9</button>
                                    <button class="tk-seat-click">10</button>
                                    <button class="tk-seat-click">11</button>
                                    <button class="tk-seat-click">12</button>
                                </div>
                                <div class="tk-seat"> 
                                    <div class="tk-line">D</div>
                                    <button class="tk-seat-click">1</button>
                                    <button class="tk-seat-click">2</button>
                                    <button class="tk-seat-click">3</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">4</button>
                                    <button class="tk-seat-click">5</button>
                                    <button class="tk-seat-click">6</button>
                                    <button class="tk-seat-click">7</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">8</button>
                                    <button class="tk-seat-click">9</button>
                                    <button class="tk-seat-click">10</button>
                                    <button class="tk-seat-click">11</button>
                                    <button class="tk-seat-click">12</button>
                                </div>
                                <div class="tk-seat"> 
                                    <div class="tk-line">E</div>
                                    <button class="tk-seat-click">1</button>
                                    <button class="tk-seat-click">2</button>
                                    <button class="tk-seat-click">3</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">4</button>
                                    <button class="tk-seat-click">5</button>
                                    <button class="tk-seat-click">6</button>
                                    <button class="tk-seat-click">7</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">8</button>
                                    <button class="tk-seat-click">9</button>
                                    <button class="tk-seat-click">10</button>
                                    <button class="tk-seat-click">11</button>
                                    <button class="tk-seat-click">12</button>
                                </div>
                                <div class="tk-seat"> 
                                    <div class="tk-line">F</div>
                                    <button class="tk-seat-click">1</button>
                                    <button class="tk-seat-click">2</button>
                                    <button class="tk-seat-click">3</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">4</button>
                                    <button class="tk-seat-click">5</button>
                                    <button class="tk-seat-click">6</button>
                                    <button class="tk-seat-click">7</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">8</button>
                                    <button class="tk-seat-click">9</button>
                                    <button class="tk-seat-click">10</button>
                                    <button class="tk-seat-click">11</button>
                                    <button class="tk-seat-click">12</button>
                                </div>
                                <div class="tk-seat"> 
                                    <div class="tk-line">G</div>
                                    <button class="tk-seat-click">1</button>
                                    <button class="tk-seat-click">2</button>
                                    <button class="tk-seat-click">3</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">4</button>
                                    <button class="tk-seat-click">5</button>
                                    <button class="tk-seat-click">6</button>
                                    <button class="tk-seat-click">7</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">8</button>
                                    <button class="tk-seat-click">9</button>
                                    <button class="tk-seat-click">10</button>
                                    <button class="tk-seat-click">11</button>
                                    <button class="tk-seat-click">12</button>
                                </div>
                                <div class="tk-seat"> 
                                    <div class="tk-line">H</div>
                                    <button class="tk-seat-click">1</button>
                                    <button class="tk-seat-click">2</button>
                                    <button class="tk-seat-click">3</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">4</button>
                                    <button class="tk-seat-click">5</button>
                                    <button class="tk-seat-click">6</button>
                                    <button class="tk-seat-click">7</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">8</button>
                                    <button class="tk-seat-click">9</button>
                                    <button class="tk-seat-click">10</button>
                                    <button class="tk-seat-click">11</button>
                                    <button class="tk-seat-click">12</button>
                                </div>
                                <div class="tk-seat"> 
                                    <div class="tk-line">I</div>
                                    <button class="tk-seat-click">1</button>
                                    <button class="tk-seat-click">2</button>
                                    <button class="tk-seat-click">3</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">4</button>
                                    <button class="tk-seat-click">5</button>
                                    <button class="tk-seat-click">6</button>
                                    <button class="tk-seat-click">7</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">8</button>
                                    <button class="tk-seat-click">9</button>
                                    <button class="tk-seat-click">10</button>
                                    <button class="tk-seat-click">11</button>
                                    <button class="tk-seat-click">12</button>
                                </div>
                                <div class="tk-seat"> 
                                    <div class="tk-line">J</div>
                                    <button class="tk-seat-click">1</button>
                                    <button class="tk-seat-click">2</button>
                                    <button class="tk-seat-click">3</button>
                                    <button class="tk-seat-click test" style="margin-right: 23px;">4</button>
                                    <button class="tk-seat-click">5</button>
                                    <button class="tk-seat-click">6</button>
                                    <button class="tk-seat-click">7</button>
                                    <button class="tk-seat-click" style="margin-right: 23px;">8</button>
                                    <button class="tk-seat-click">9</button>
                                    <button class="tk-seat-click">10</button>
                                    <button class="tk-seat-click">11</button>
                                    <button class="tk-seat-click">12</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 오른쪽 검은색 박스  -->
                <div class="tk-black-box">
                    <div class="tk-choice-box">                        
                        <div class="tk-bb-title">
                            <div class="tk-tit-age-img"></div>
                            <div class="tk-title">서울의 봄</div>
                            <div class="tk-sub-title">2D</div>
                        </div>
                        <div class="tk-bb-info">
                            <div class="tk-info-one">이수</div>
                            <div class="tk-poster"><img src="${path}/views/ticket/img/aM1zeiVGySigNObspcjcoH9NaebEPa2f_150.jpg" alt="포스터"></div>
                            <div class="tk-info-two">6관</div>
                            <div class="tk-info-three">2024.01.16(화)</div>
                            <select name="tk-time" class="tk-time" 
                            style="background-color: #333; color: #fff; border:none;margin-top: 10px; margin-left: -4px;"> 
                                <option selecte>16:40~19:10</option>
                                <option value="tk-time-1">09:40~12:10</option>
                                <option value="tk-time-2">11:40~14:10</option>
                                <option value="tk-time-3">16:40~19:10</option>
                            </select>
                        </div>
                        <div class="tk-choice-seat">
                            <div class="tk-choice-seat-left">
                                <div class="tk-seat-type">
                                    <img src="${path}/views/ticket/img/bg-seat-choice.png" alt="선택">
                                    <div>선택</div>
                                </div>
                                <div class="tk-seat-type">
                                    <img src="${path}/views/ticket/img/bg-seat-finish.png" alt="선택">
                                    <div>예매완료</div>
                                </div>
                                <div class="tk-seat-type">
                                    <img src="${path}/views/ticket/img/bg-seat-impossible.png" alt="선택">
                                    <div>선택불가</div>
                                </div>
                                <div class="tk-seat-type">
                                    <img src="${path}/views/ticket/img/bg-seat-common.png" alt="선택">
                                    <div>일반</div>
                                </div>
                            </div>
                            <div class="tk-choice-seat-right">
                                <div class="tk-select-seat">선택좌석</div>
                                
                                <div class="tk-my-seat">
                                    <div class="tk-choice-seat-now" id="select_seat_01" >-</div>
                                    <div class="tk-choice-seat-now">-</div>
                                    <div class="tk-choice-seat-now">-</div>
                                    <div class="tk-choice-seat-now">-</div>
                                    <div class="tk-choice-seat-now">-</div>
                                    <div class="tk-choice-seat-now">-</div>
                                    <div class="tk-choice-seat-now">-</div>
                                    <div class="tk-choice-seat-now">-</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tk-titleImg">
                        <div class="tk-titleText">약관 필수 동의</div>
                    </div>
                    <div class="tk-box">
                        <div class="tk-boxText">개인정보 수집 및 개인정보 제공</div>
                        <a href="#">내용보기</a>
                    </div>
                    <div class="tk-btn-group" id="test">
                        <div class="tk-previous-page">이전</div>
                        <div class="tk-next-page">예매</div>
                    </div>
                </div>
            </div>
        </section>
        </main>
<jsp:include page="${path}/views/common/footer.jsp" />