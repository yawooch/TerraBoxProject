<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<link rel="stylesheet" href="${path}/header.css">
<script src="views/js/jquery-3.7.1.min.js"></script>
<script>
	window.onload = function(){
		//상단 메뉴 사이트맵 열기/닫기 이벤트
		let siteMap = document.getElementsByClassName('cm-link-area-sitemap')[0];
		siteMap.addEventListener('click', function(event){
			let siteMapId = document.getElementById('cm_layer_sitemap');
			if(siteMap.classList.contains('on'))
			{
				siteMap.classList.remove('on');
				siteMapId.style.display = 'none';
			}
			else{
				siteMap.classList.add('on');
				siteMapId.style.display = 'block';
			}
		});
		//상단 메뉴 검색창 열기/닫기 이벤트
		let areaMovie = document.getElementsByClassName('cm-link-area-movie')[0];
		areaMovie.addEventListener('click', function(event){
			let headerSearch = document.getElementById('cm_layer_header_search');
			if(areaMovie.classList.contains('on'))
			{
				areaMovie.classList.remove('on');
				headerSearch.style.display = 'none';
			}
			else{
				areaMovie.classList.add('on');
				headerSearch.style.display = 'block';
			}
		});
		//상단 메뉴 마이페이지 열기/닫기 이벤트
		let mypage = document.getElementsByClassName('cm-link-area-mypage')[0];
		mypage.addEventListener('click', function(event){
			let layerMypage = document.getElementById('cm_layer-mypage');
			if(mypage.classList.contains('on'))
			{
				mypage.classList.remove('on');
				layerMypage.style.display = 'none';
				document.getElementsByClassName('cm-login-before')[0].style.display = 'none';
			}
			else{
				mypage.classList.add('on');
				layerMypage.style.display = 'block';
				document.getElementsByClassName('cm-login-before')[0].style.display = 'block';
			}
		});
        //상단 메뉴 영화 호버 이벤트
        // let menu = $('a[class~=cm-link-text-]');
        // menu.array.forEach(element => {
        //     console.log(element);
        // });

		let menus   = document.querySelectorAll('a[class^=cm-link-text-]');
        let subMenuArea = document.getElementsByClassName('cm-header-nav')[0];
        let subMenu     = document.getElementsByClassName('cm-gnb-depth2');

        for(let idx = 0 ; idx < menus.length; idx++){
            let menu = menus[idx];
            menu.setAttribute('idx', idx);
            menu.addEventListener('mouseover', function(event){
                for(let idx = 0; idx < menus.length; idx ++){
                    menus[idx].classList.remove('on');
                }
                $(this).addClass('on');
                let elementIdx = $(this).attr('idx');
                subMenuArea.style.display = 'block';
                
                for(let idx = 0; idx < subMenu.length; idx ++){
                    subMenu[idx].style.display = 'none';
                }
                subMenu[elementIdx].style.display = 'block';
            });
        }
        subMenuArea.addEventListener('mouseout', function(event){
            subMenuArea.style.display = 'none';
            for(let idx = 0; idx < menus.length; idx ++){
                menus[idx].classList.remove('on');
            }
        });
        subMenuArea.addEventListener('mouseover', function(event){
            subMenuArea.style.display = 'block';
        });
            
        // cm-link-text-movie
        // cm-link-text-ticket
        // cm-link-text-cinema
        // cm-link-text-question
		
	}
</script>
<header id="cm_header">
    <div class="cm-content">
        <div class="cm-mainLogo"><img src="./img/mainLogo.png" alt=""></div>
        <div class="cm-login-link">
            <a href="#">로그인</a>
            <a href="#">회원가입</a>
            <a href="#">빠른예매</a>
        </div>
        <div class="cm-header-link-left">
            <a href="#" class="cm-link-area-sitemap"></a>
            <a href="#" class="cm-link-area-movie"></a>
            <div>
                <a href="#" class="cm-link-text-movie">영화</a>
                <a href="#" class="cm-link-text-ticket">예매</a>
            </div>
        </div>
        <div class="cm-header-link-right">
            <div>
                <a href="#" class="cm-link-text-cinema">극장</a>
                <a href="#" class="cm-link-text-question">고객센터</a>
            </div>
            <a href="#" class="cm-link-area-ticket"></a>
            <a href="#" class="cm-link-area-mypage"></a>
        </div>
    </div>
    <nav class="cm-header-nav" style="display:none;">
        <div class="cm-header-nav-sub">
            <div class="cm-gnb-depth2" style="display:none;">
                <ul>
                    <li><a href="/movie/all"       title="전체영화">전체영화</a></li>
                    <li><a href="/movie/moviepost" title="무비포스트">무비포스트</a></li>
                </ul>
            </div>
            <div class="cm-gnb-depth2" style="display:none;">
                <ul>
                    <li><a href="/ticket"           title="빠른예매">빠른예매</a></li>
                    <li><a href="/ticket/timetable" title="상영시간표">상영시간표</a></li>
                </ul>
            </div>
            <div class="cm-gnb-depth2" style="display:none;">
                <ul>
                    <li><a href="/cinema"          title="전체극장">전체극장</a></li>
                    <li><a href="/cinema/special/" title="특별관">특별관</a></li>
                </ul>
            </div>
            <div class="cm-gnb-depth2" style="display:none;">
                <ul>
                    <li><a href="/question/"          title="고객센터 홈">고객센터 홈</a></li>
                    <li><a href="/question/faq"       title="자주묻는 질문">자주묻는 질문</a></li>
                    <li><a href="/question/notice"    title="고객센터 홈">공지사항</a></li>
                    <li><a href="/question/personal"  title="1:1문의">1:1 문의</a></li>
                    <li><a href="/question/borrow"    title="단체/대관 문의">단체/대관 문의</a></li>
                    <li><a href="/question/lost"      title="분실물 문의">분실물 문의</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div id="cm_layer_sitemap" class="cm-header-layer cm-layer-sitemap" style="display:none;">
        <!-- wrap -->
        <div class="cm-layer-sitemap-wrap">
            <p class="cm-tit">SITEMAP</p>

            <div class="cm-list cm-position-1">
                <p class="cm-tit-depth">영화</p>

                <ul class="cm-list-depth">
                    <li><a href="/movie"         title="전체영화">전체영화</a></li>
                    <li><a href="/moviepost/all" title="무비포스트">무비포스트</a></li>
                </ul>
            </div>

            <div class="cm-list cm-position-2">
                <p class="cm-tit-depth">예매</p>

                <ul class="cm-list-depth">
                    <li><a href="/ticket"           title="빠른예매">빠른예매</a></li>
                    <li><a href="/ticket/timetable" title="상영시간표">상영시간표</a></li>
                </ul>
            </div>

            <div class="cm-list cm-position-3">
                <p class="cm-tit-depth">극장</p>

                <ul class="cm-list-depth">
                    <li><a href="/cinema"         title="전체극장">전체극장</a></li>
                    <li><a href="/cinema/special" title="특별관">특별관</a></li>
                </ul>
            </div>

            <div class="cm-list cm-position-4">
                <p class="cm-tit-depth">고객센터</p>

                <ul class="cm-list-depth">
                    <li><a href="/question/"          title="고객센터 홈">고객센터 홈</a></li>
                    <li><a href="/question/faq"       title="자주묻는 질문">자주묻는 질문</a></li>
                    <li><a href="/question/notice"    title="고객센터 홈">공지사항</a></li>
                    <li><a href="/question/personal"  title="1:1문의">1:1 문의</a></li>
                    <li><a href="/question/borrow"    title="단체/대관 문의">단체/대관 문의</a></li>
                    <li><a href="/question/lost"      title="분실물 문의">분실물 문의</a></li>
                </ul>
            </div>
        </div>
        <!--// wrap -->
    </div>
    <div id="cm_layer_header_search" class="cm-header-layer cm-layer-header-search cm-appendHtml" style="display:none;">
        <div class="cm-header-search-wrap">
            <div class="cm-tab-rank cm-tab-layer">
                <ul>
                    <li class="on"><button type="button" class="cm-header-search-btn">예매율 순</button></li>
                </ul>
            </div>
            <div class="cm-rank-cont">
                <p class="cm-img">
                    <img src="https://img.megabox.co.kr/SharedImg/2023/12/18/9jyGCFBkMW31zk7XRFD3PkdTOdnEvZXd_316.jpg" alt="외계+인 2부">
                </p>
                <div class="cm-list">
                    <ol>
                        <li><em>1</em> <a href="javascript:gfn_moveDetail('23085100')" data-imgsrc="https://img.megabox.co.kr/SharedImg/2023/12/18/9jyGCFBkMW31zk7XRFD3PkdTOdnEvZXd_316.jpg">외계+인 2부</a></li>
                        <li><em>2</em> <a href="javascript:gfn_moveDetail('23097300')" data-imgsrc="https://img.megabox.co.kr/SharedImg/2023/12/29/SPkT9JIvqlfh06XYPy0WihdUI5jgrLm4_316.jpg">엔드 오브 에반게리온</a></li>
                        <li><em>3</em> <a href="javascript:gfn_moveDetail('23093500')" data-imgsrc="https://img.megabox.co.kr/SharedImg/2023/12/15/NWONgIDGBypWUvJSg3RHcUYbpt2sHPW3_316.jpg">시민덕희</a></li>
                        <li><em>4</em> <a href="javascript:gfn_moveDetail('23081200')" data-imgsrc="https://img.megabox.co.kr/SharedImg/2023/11/22/aM1zeiVGySigNObspcjcoH9NaebEPa2f_316.jpg">서울의 봄</a></li>
                        <li><em>5</em> <a href="javascript:gfn_moveDetail('23094700')" data-imgsrc="https://img.megabox.co.kr/SharedImg/2023/12/20/m5crrh1pa4RIS5SIC6u1cJsSAhx4Sjqs_316.jpg">위시</a></li>
                    </ol>
                </div>
            </div>
            <div class="cm-header-search-area">
                <input type="text"    id="cm_headerMovieName" title="영화명을 검색해 주세요" placeholder="영화를 검색하세요" class="cm-input-text">
                <button type="button" id="cm_btnHeaderSearch" class="cm-btn-search">검색</button>
            </div>
			<form name="cm_headerBoxoForm" id="cm_headerBoxoForm" method="post">
				<input type="hidden" name="cm_searchText" id="cm_searchText">
			</form>
        </div>
    </div>
    <div id="cm_layer-mypage" class="cm-header-layer cm-layer-mypage">
        <!-- wrap-->
        <div class="cm-mypage-wrap" >
    
            <div class="cm-login-after" style="display: none;">
                <div class="cm-inner">
                    <div class="cm-box">
                        <div class="cm-mbimg"><img src="https://img.megabox.co.kr/static/pc/images/2023/01/member_WELCOME_2.png" alt="WELCOME"></div>
                        <div class="cm-name">양우찬<span>님</span></div>
    
                        <a href="/mypage" class="cm-linkBtn" title="나의  테라박스">나의  테라박스</a>
                    </div>
                    <div class="cm-box cm-reserve">
                        <div class="cm-tit">
                            <a class="cm-linkA" href="/mypage/ticketlist" title="예매내역"><span>예매</span></a>
                        </div>
    
                        <div title="예매 수" class="cm-count"><div class="cm-txt">예매내역이 없어요!</div></div>
                    </div>
                </div>
            </div>
            <!-- 로그인 전 -->
            <div class="cm-login-before" style="display: none;">
                <div class="cm-txt">영화를 사랑하는 당신을 위한 꼭 맞는 혜택까지 확인해 보세요!</div>
    
                <div class="cm-linkBox">
                    <a href="#layer_login_common" id="cm_moveLogin" title="로그인" class="cm-btn-modal-open" w-data="850" h-data="484">로그인</a>
                    <a href="/join" class="cm-link" title="혹시 아직 회원이 아니신가요?">혹시 아직 회원이 아니신가요?</a>
                </div>
    
            </div>
        </div>
    </div>
</header>