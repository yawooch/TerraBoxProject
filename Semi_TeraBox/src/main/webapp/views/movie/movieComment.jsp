<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="${path}/views/question/img/TeraBox.ico">
    <title>영화 실관람평</title>
    <link rel="stylesheet" href="${path}/views/movie/css/Movie_comment.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <jsp:include page="/views/common/header.jsp" />
    <script src="${path}/views/js/jquery-3.7.1.js"></script>
</head>
<body>
    <main>
        <!-- 포스터 있는 검은 부분 -->
        <section class="mv-movie-detail">
            <div class="mv-div-black">
                <div class="mv-div1">
                    <h2 class="mv-kr-name">서울의 봄</h2>
                    <br>
                    <p class="mv-eng-name">12.12: THE DAY</p>
                    <div class="mv-btn-util">
                        <button class="mv-btn-black" id="mv-like">
                            <img src="${path}/views/movie/image/heart.png" class="mv-icon heart" id="mv-like-image">
                            <span>1.2k</span>
                        </button>
                        <button class="mv-btn-black" id="mv-link">
                            <img src="${path}/views/movie/image/share.png" class="mv-icon share" id="mv-link-image">
                            <span>공유하기</span>
                        </button>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>
                                    실관람 평점
                                </th>
                                <th>예매율</th>
                                <th>누적 관객수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-megabox.png">
                                    <em>9.9</em>
                                </td> 
                                <td>
                                    <img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-ticket-gray.png">
                                    <em>1</em>
                                    위(12.5%)
                                </td>
                                <td>
                                    <img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-person.png">
                                    <em>1,159,789</em>
                                    명
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                <div class="mv-div2">
                    <div class="mv-poster">
                        <img src="${path}/views/movie/image/메인포스터_절찬_대표포스터.jpg">
                        <div class="mv-movie-age">
                            <img src="${path}/views/movie/image/Movie_age.png" >
                        </div>
                        <div class="mv-download-poster">
                            <img src="${path}/views/movie/image/download_poster.png">
                        </div>
                    </div>
                    <button class="mv-ticketing">예매</button>
                </div>
            </div>
        </section>



        <!-- 주요 정보 -->
        <section class="mv-com-sec1">
            <nav>
                <ul>
                    <li class="mv-first"><a href="/movie/detail">주요정보/예고편/스틸컷</a></li>
                    <li class="mv-second"><a href="/movie/comment">실관람평</a></li>
                    <li class="mv-last"><a href="/movie/post">무비포스트</a></li>
                </ul>
            </nav>

            <!-- 코멘트 부분 -->
            <div class="mv-com-head">
                <h2>서울의 봄에 대한 <span>29,750</span>개의 이야기가 있어요!</h2>
                <button class="mv-com-addMovie">본 영화 등록</button>
            </div>
            <div class="mv-com-selection">
                <span>전체 <span>29,751</span>건</span>
                <div>
                    <button class="on" id="mv-com-btnRecent">최신순</button>
                    <button id="mv-com-btnLike">공감순</button>
                    <button id="mv-com-btnScore">평점순</button>
                </div>
            </div>
            <div class="mv-com-main">
                <ul class="mv-com-main-ul">
                    <li class="mv-com-main-li fixed">
                        <div class="mv-com-main-li-icon">
                            <img src="${path}/views/movie/image/heartFull.png" alt="프사"> 
                            <span>아이디</span>
                        </div>
                        <div class="mv-com-main-textbox">
                            <div class="mv-com-main-textbox-text">
                                <span><span>서울의 봄</span>재미있게 보셨나요?</span>
                                <br>
                                <span>영화의 어떤 점이 좋았는지 이야기해주세요.</span>
                            </div>
                            <div class="mv-com-main-textbox-btn">
                                <button class="mv-com-btn-write">
                                    <img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-story-write.png" alt="">
                                    <span>관람평쓰기</span>
                                </button>
                            </div>
                        </div>
                    </li>
                    <li class="mv-com-main-list">
                        <div class="mv-com-main-li-icon">
                            <img src="https://img.megabox.co.kr/static/pc/images/mypage/bg-profile.png" alt="">
                            <span>아이디</span>
                        </div>
                        <div class="mv-com-main-textbox mv-textbox-user"><!-- 1. 연출 2. 스토리 3. 영상미 4. 배우 5. ost -->
                            <div class="mv-com-main-name">관람평</div>
                            <div class="mv-com-main-score">10</div>
                            <div class="mv-com-main-point">스토리</div>
                            <div class="mv-com-main-story">실관람평50자가 넘어가면 두줄로 나오는거 같습니다만//실관람평50자가 넘어가면 두줄로 나오는거 같습니다만</div>
                            <div class="mv-com-main-like">
                                <button class="mv-com-main-btn">
                                    <img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-like-g.png" class="mv-com-like-img">
                                    <span class="mv-com-like-count">0</span>
                                </button>
                            </div>
                        </div>
                        <div class="mv-com-main-date">
                            2024.01.07
                        </div>
                    </li>
                    <li class="mv-com-main-list">
                        <div class="mv-com-main-li-icon">
                            <img src="https://img.megabox.co.kr/static/pc/images/mypage/bg-profile.png" alt="">
                            <span>아이디</span>
                        </div>
                        <div class="mv-com-main-textbox mv-textbox-user"><!-- 1. 연출 2. 스토리 3. 영상미 4. 배우 5. ost -->
                            <div class="mv-com-main-name">관람평</div>
                            <div class="mv-com-main-score">10</div>
                            <div class="mv-com-main-point">연출 외 <br> + 2</div>
                            <div class="mv-com-main-story">실관람평50자가 넘어가면 </div>
                            <div class="mv-com-main-like">
                                <button class="mv-com-main-btn">
                                    <img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-like-g.png" class="mv-com-like-img">
                                    <span class="mv-com-like-count">0</span>
                                </button>
                            </div>
                        </div>
                        <div class="mv-com-main-date">
                            2024.01.07
                        </div>
                    </li>
                    <c:if test="${ not empty list }">
                   		<c:forEach var="movieComment" items="${ list }">
                   			<li class="mv-com-main-list">
		                        <div class="mv-com-main-li-icon">
		                            <img src="https://img.megabox.co.kr/static/pc/images/mypage/bg-profile.png" alt="">
		                            <span>아이디</span>
		                        </div>
		                        <div class="mv-com-main-textbox mv-textbox-user"><!-- 1. 연출 2. 스토리 3. 영상미 4. 배우 5. ost -->
		                            <div class="mv-com-main-name">관람평</div>
		                            <div class="mv-com-main-score">${ movieComment.score }</div>
		                            <div class="mv-com-main-point">${ movieComment.point }</div>
		                            <div class="mv-com-main-story">${ movieComment.comment }</div>
		                            <div class="mv-com-main-like">
		                                <button class="mv-com-main-btn">
		                                    <img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-like-g.png" class="mv-com-like-img">
		                                    <span class="mv-com-like-count">0</span>
		                                </button>
		                            </div>
		                        </div>
		                        <div class="mv-com-main-date">
		                            <fmt:formatDate value="${ movieComment.createDate }" dateStyle="short"/>
		                        </div>
		                    </li>
                   		</c:forEach>
                    </c:if>
                    
                </ul>
                <div class="mv-com-btnlist">
                    <button class="mv-com-btnFirst mv-com-btnFunction" onclick="location.href='${ path }/movie/comment?page=1'">
                        <img src="${path}/views/movie/image/arrow-leftleft.png" alt="">
                    </button>
                    <button class="mv-com-btnPrev mv-com-btnFunction" onclick="location.href='${ path }/movie/comment?page=${ pageInfo.prevPage }'">
                        <img src="${path}/views/movie/image/arrow-left.png" alt="">
                    </button>
                    <c:forEach var="current" begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }">
						<c:choose>
							<c:when test="${ current == pageInfo.currentPage }">
								<button class="mv-com-btnNumber on">${ current }</button>
							</c:when>
							<c:otherwise>
								<button class="mv-com-btnNumber" onclick="location.href='${ path }/movie/comment?page=${ current }'">${ current }</button>
							</c:otherwise>
						</c:choose>
					</c:forEach>
                    <button class="mv-com-btnNext mv-com-btnFunction" onclick="location.href='${ path }/movie/comment?page=${ pageInfo.nextPage }'">
                        <img src="${path}/views/movie/image/arrow-right.png" alt="">
                    </button>
                    <button class="mv-com-btnLast mv-com-btnFunction" onclick="location.href='${ path }/movie/comment?page=${ pageInfo.maxPage }'">
                        <img src="${path}/views/movie/image/arrow-rightright.png" alt="">
                    </button>
                </div>
            </div>
        </section>
        <section class="mv-com-write-bg">
            <div class="mv-com-write-wrap">
                <div class="mv-com-write-head">
                    <span>관람평 작성하기</span>
                    <button class="mv-com-write-btn-cancle">
                        <img src="https://img.megabox.co.kr/static/pc/images/common/btn/btn-layer-close.png" alt="">
                    </button>
                </div>
                <div class="mv-com-write-main">
                    <div class="mv-com-write-score">
                        <p>
                            "서울의 봄"
                            <br>
                            영화 어떠셨나요?
                        </p>
                        <div>
                            <div class="mv-com-write-star">
                                <div>                                    
                                    <button>
                                        <!-- 평점 아직 미구현 -->
                                    </button>
                                </div>
                                <span>별점</span>
                            </div>
                            <div class="mv-com-write-textbox">
                                <textarea id="mv-com-write-textarea" cols="30" rows="5" placeholder="실관람평을 남겨주세요." style="height: 89px;"></textarea>
                                <div>
                                    <span>0</span>
                                    / 100
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mv-com-write-point">
                        <p>관람포인트는 무엇인가요?</p>
                        <p>(최대 5개 선택 가능)</p>
                        <div class="mv-com-write-point-btn">
                            <button class="mv-com-write-btn-ele" id="mv-com-write-point-btn-ele1">연출</button>
                            <button class="mv-com-write-btn-ele" id="mv-com-write-point-btn-ele2">스토리</button>
                            <button class="mv-com-write-btn-ele" id="mv-com-write-point-btn-ele3">영상미</button>
                            <button class="mv-com-write-btn-ele" id="mv-com-write-point-btn-ele4">배우</button>
                            <button class="mv-com-write-btn-ele" id="mv-com-write-point-btn-ele5">OST</button>
                        </div>
                    </div>
                </div>
                <div class="mv-com-write-btn">
                    <button class="mv-com-write-btn-cancle">취소</button>
                    <button class="mv-com-write-btn-submit">등록</button>
                </div>
            </div>
        </section>
    </main>
    <script src="${path}/views/movie/js/Movie_comment.js"></script>
</body>
<jsp:include page="${path}/views/common/footer.jsp" />
</html>