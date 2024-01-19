<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<jsp:include page="${path}/views/common/header.jsp" />
<link rel="stylesheet" href="${path}/views/mypage/css/myquestionWrite.css">
<div class="container has-lnb">
    <div class="page-util">
        <div class="inner-wrap">
            <div class="location">
                <span>Home</span>
                <a href="/mypage" title="나의 테라박스 페이지로 이동">나의 테라박스</a>
                <a href="/mypage/myinquiry" title="나의 문의내역 페이지로 이동">나의 문의내역</a>
                <a href="/mypage/myinquiry?cd=INQD01" title="1:1 문의내역 페이지로 이동">1:1 문의내역</a>
            </div>
        </div>
    </div>
        <div class="inner-wrap">
            <div class="lnb-area">
                <nav id="lnb">
                    <p class="tit"><a href="/mypage" title="나의 테라박스">나의 테라박스</a></p>
                    <ul>
                        <li class=""><a href="/mypage/bookinglist" title="예매/구매내역">예매/구매내역</a></li>
                        <li class="on"><a href="/mypage/myinquiry" title="나의 문의내역">나의 문의내역</a></li>
                        <li><a href="/mypage/myinfo?returnURL=info" title="회원정보">회원정보</a></li>
                    </ul>
                </nav>
            </div>
            <div id="contents" class="location-fixed">
                <h2 class="tit">나의 문의내역</h2>
            
                <div class="tab-block">
                    <ul>
                        <li data-url="/mypage/myinquiry?cd=INQD01" class="on"><a href="#" class="btn" data-cd="INQD01" title="1:1 문의내역 탭으로 이동">1:1 문의내역</a></li>
                        <li data-url="/mypage/myinquiry?cd=INQD03"><a href="#" class="btn" data-cd="INQD03" title="단체관람/대관 문의내역 탭으로 이동">단체관람/대관 문의내역</a></li>
                        <li data-url="/mypage/myinquiry?cd=INQD02"><a href="#" class="btn" data-cd="INQD02" title="분실물 문의내역 탭으로 이동">분실물 문의내역</a></li>
                    </ul>
                </div>
            
                <div class="mypage-infomation mt20">
                    <ul class="dot-list mb20">
                        <li><span style="font-weight: bold;">고객님의 문의에 답변하는 직원은 <span style="color: #EB323A;">고객 여러분의 가족 중 한 사람일 수 있습니다.</span></span><br>
                            고객의 언어폭력(비하, 욕설, 협박, 성희롱 등)으로부터 직원을 보호하기 위해<br>
                            관련 법에 따라 수사기관에 필요한 조치를 요구할 수 있으며, 형법에 의해 처벌 대상이 될 수 있습니다.<br>
                        </li>
                        <br>
                        <li>문의하시기 전 FAQ를 확인하시면 궁금증을 더욱 빠르게 해결하실 수 있습니다. </li>
                    </ul>
                    <div class="agree-box">
                        <dl>
                            <dt>
                                <span class="bg-chk mr10">
                                    <input type="checkbox" id="chk">
                                    <label for="chk"><strong>개인정보 수집에 대한 동의</strong></label>
                                </span>
    
                                <span class="font-orange">[필수]</span>
                            </dt>
                            <dd style="font-size:13px;">
                                귀하께서 문의하신 다음의 내역은 법률에 의거 개인정보 수집·이용에 대한 본인동의가 필요한 항목입니다.<br><br>
    
                                [개인정보의 수집 및 이용목적]<br>
                                회사는 1:1 문의 내역의 확인, 요청사항 처리 또는 완료 시 원활한 의사소통 경로 확보를 위해 수집하고 있습니다.<br><br>
    
                                [필수 수집하는 개인정보의 항목]<br>
                                이름, 휴대전화, 이메일, 문의내용<br><br>
    
                                [개인정보의 보유기간 및 이용기간]<br>
                                <span class="ismsimp">문의 접수 ~ 처리 완료 후 3년<br>
                                (단, 관계법령의 규정에 의하여 보존 할 필요성이 있는 경우에는 관계 법령에 따라 보존)<br>
                                자세한 내용은 '개인정보 처리방침'을 확인하시기 바랍니다.</span>
                            </dd>
                        </dl>
                    </div>
                    <div class="btn-group right">
                        <a href="#" class="button" id="inqBtn" title="문의하기">문의하기</a>
                    </div>
                </div>
            
                <div class="board-list-util mb10">
                    <p class="result-count">
                        <!-- to 개발 : 검색을 안한 경우 -->
                        <strong>전체 (<b id="totalCnt">0</b>건)</strong>
                    </p>
            
                    <select id="custInqStatCd" onchange="javascript:$('#searchBtn').click();" class="" tabindex="-98">
                        <option value="">전체</option>
                        <option value="INQST1">미답변</option>
                        <option value="INQST2">답변완료</option>
                    </select>
            
                    <div class="board-search ml07">
                        <input type="text" title="검색어를 입력해 주세요." placeholder="검색어를 입력해 주세요." class="input-text" id="searchTxt" value="">
                        <button type="button" class="btn-search-input" id="searchBtn">검색</button>
                    </div>
                </div>
            
                <div class="table-wrap">
                    <table class="board-list a-c">
                        <colgroup>
                            <col style="width:80px">
                            <col style="width:140px;">
                            <col style="width:120px;">
                            <col>
                            <col style="width:160px;">
                            <col style="width:100px;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">번호</th>
                                <th scope="col">극장</th>
                                <th scope="col">유형</th>
                                <th scope="col">제목</th>
                                <th scope="col">답변상태</th>
                                <th scope="col">등록일</th>
                            </tr>
                        </thead>
                        <tbody><tr><td colspan="6">목록이 없습니다.</td></tr></tbody>
                    </table>
                </div>
                <!-- pagination -->
                <nav class="pagination"></nav>
                <!--// pagination -->
            </div>
        </div>
    </div>
</div>
<jsp:include page="${path}/views/common/footer.jsp" />