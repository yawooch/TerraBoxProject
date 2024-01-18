<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
    <link rel="stylesheet" href="./css/myInfo2.css">
<jsp:include page="${path}/views/common/header.jsp" />
    <main>
    <!-- body중 메뉴바 -->
    <div style="width: 100%; background-color: #f8f8fa;">
        <section style="width: 1100px; margin: 0 auto;">
            <div class="mp-page-util">
                <div class="mp-inner-wrap">
                    <div class="mp-location">
                        <span>home</span>
                        <a href="#" title="마이페이지">
                            나의 테라박스
                        </a>
                        <a href="#" title="나의 예매 내역">회원 정보 수정</a>
                    </div>
                </div>
            </div>    
        </section>
    </div>
    < <!-- 왼쪽 메뉴바 -->
    <section class="mp-section">
        <div class="mp-body">
            <div class="mp-left-box">
                <div class="mp-tera-box">
                    <a href="#">나의 테라박스</a>
                </div>
                <div class="mp-ticketing">
                    <a href="#">나의 예매 내역</a>
                </div>
                <div class="mp-question">
                    <a href="#">나의 문의 내역</a>
                </div>
                <div class="mp-member">
                    <a href="#">회원 정보 수정 <img src="./img/arrow.png" alt="화살표"></a>
                </div>
            </div>
            
            <!-- 오른쪽 구역  -->
            <div class="mp-right">
                <h2>회원 정보 수정</h2>
                <ul class="right-ul">
                    <li>회원님의 정보를 정확히 입력해주세요.</li>
                </ul>
                <div class="tb-wrap">
                    <table>
                        <colgroup>
                            <col style="width:180px;">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row" class="tb-th">아이디</th>
                                <td class="tb-td">ismoon <span><button class="tb-btn1">회원탈퇴</button></span></td>
                            </tr>
                    </table>
                </div>
            </div> 
        </div>
    </section>
        </div>
    </main>
<jsp:include page="${path}/views/common/footer.jsp" />
