<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="/Inc/Header.jspf" %>
<link href="../css/brand_story/brandstory_style.css" type="text/css" rel="stylesheet" />

		<!-- container -->
		<div class="container_area" id="contents">
		
		 <!-- Body
    ################# --> 

    <!-- contents : str -->
    
<div class="sub_layout sub_visual_6">
	
		<!-- 하이어라키 -->
		<ul class="hierarchy_list">
			<li class="icon_home"><img src="../img/ESG_infrasystem/icon_home.jpg" alt="Home" /></li>
			<li class="depth_3">
				<a href="#" class="t_block_hierarchy">브랜드 이야기</a>

				<ul class="hierarchy_depth">
					<li class="on"><a href="#">브랜드 이야기</a></li>
				</ul>
			</li>
		</ul>
		<!-- //하이어라키 -->

		<!-- 서브 컨텐츠 -->

		<div class="sub_contents">
			<!-- 타이틀 , 디스크립션 -->
			<div class="title_description">
				<h2 class="title_sub">브랜드 이야기</h2>

				<p class="sub_description">현대그린푸드의 브랜드 이야기를 소개합니다.</p>
			</div>
			<!-- //타이틀 , 디스크립션 -->		
			
			<!-- 탭 -->
			<ul class="tab_list tab_list_brand">
				<li class="on" brandtp="">
					<a href="#">전체 (24)</a>
					<img src="../img/icon_tab_bubble.jpg" class="icon_tab_bubble" alt="" />
				</li>
				<li brandtp="health">
					<a href="#"><i class="icon_health"></i> 건강식 (1)</a>
					<img src="../img/icon_tab_bubble.jpg" class="icon_tab_bubble" alt="" />
				</li>
				<li brandtp="eco">
					<a href="#"><i class="icon_eco"></i> 친환경 (1)</a>
					<img src="../img/icon_tab_bubble.jpg" class="icon_tab_bubble" alt="" />
				</li>
				<li brandtp="out">
					<a href="#"><i class="icon_out"></i> 외식 (11)</a>
					<img src="../img/icon_tab_bubble.jpg" class="icon_tab_bubble" alt="" />
				</li>
				<li brandtp="product">
					<a href="#"><i class="icon_product"></i> 상품 (8)</a>
					<img src="../img/icon_tab_bubble.jpg" class="icon_tab_bubble" alt="" />
				</li>
				<li brandtp="market">
					<a href="#"><i class="icon_market"></i> 마켓 (3)</a>
					<img src="../img/icon_tab_bubble.jpg" class="icon_tab_bubble" alt="" />
				</li>
			</ul>
			<!-- //탭 -->
			
			<!-- 브랜드 이야기 : 상단 탭 선택시 그 탭에 맞는 li에 select 클래스 추가, 나머지 li에는 off 클래스 추가 -->
			<ul class="brand_story_list">
				<li class="select">
					<a target="_blank" title="새창으로 열림" href="https://www.greating.co.kr/" class="health">
						<img src="../img/brand_story/greating_logo.jpg" alt="그리팅" />
						<span class="brand_name">그리팅</span>

						<span class="over_text over_text_1 over_health">
							우리집 밥상주치의
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" title="새창으로 열림" class="eco">
						<img src="../img/brand_story/greatingfresh_logo.jpg" alt="산들내음" />
						<span class="brand_name">산들내음</span>

						<span class="over_text over_text_2 over_eco">
							대한민국 친환경<br />대표브랜드
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="https://www.instagram.com/eatalykorea" title="새창으로 열림" class="out">
						<img src="../img/brand_story/eataly_logo.jpg" alt="이탈리" />
						<span class="brand_name">이탈리</span>

						<span class="over_text over_text_2 over_out">
							Eat, Shop, Learn<br>All about Italy
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="http://www.instagram.com/joeandthejuicekorea" title="새창으로 열림" class="out">
						<img src="../img/brand_story/joenthejuice_logo.jpg" alt="조앤더주스" />
						<span class="brand_name">조앤더주스</span>

						<span class="over_text over_text_2 over_out">
							덴마크 프리미엄<br>주스바
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="https://www.instagram.com/texasroadhouse_kr/" title="새창으로 열림" class="out">
						<img src="../img/brand_story/texas_logo.jpg" alt="텍사스로드하우스" />
						<span class="brand_name">텍사스로드하우스</span>

						<span class="over_text over_text_2 over_out">
							Legendary Food!<br />Lengendary Service! 
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" title="새창으로 열림" class="out">
						<img src="../img/brand_story/hseries_logo.jpg" alt="에이치 450, 541,123" />
						<span class="brand_name">에이치 450,541,123,315,50</span>

						<span class="over_text over_text_2 over_out">
							미식가들의 거리,<br>미식가들의 향연
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="https://www.instagram.com/h_garden_official/" title="새창으로 열림" class="out">
						<img src="../img/brand_story/hgarden_logo.jpg" alt="에이치가든" />
						<span class="brand_name">에이치가든</span>

						<span class="over_text over_text_2 over_out">
							호텔 셰프들이 선보이는 <br>All Day 다이닝 뷔페
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="/brand/vezzly.html" title="새창으로 열림" class="out">
						<img src="../img/brand_story/vezzly_logo.jpg" alt="베즐리" />
						<span class="brand_name">베즐리</span>

						<span class="over_text over_text_2 over_out">
							정통 유럽풍<br />클래식 베이커리
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="https://www.instagram.com/h_oven_garden5" title="새창으로 열림" class="out">
						<img src="../img/brand_story/hoven_logo.jpg" alt="에이치오븐" />
						<span class="brand_name">에이치오븐</span>

						<span class="over_text over_text_2 over_out">
							가장 맛있는 지금,<br>Fresh Now!
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="/brand/hkitchenfoodcourt.html" title="새창으로 열림" class="out">
						<img src="../img/brand_story/hkitchen_logo.jpg" alt="h’_Kitchen" />
						<span class="brand_name">에이치키친</span>

						<span class="over_text over_text_2 over_out">
							뛰어난 맛과 분위기,<br />고품격 푸드코트
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="/brand/bongasushi.html" title="새창으로 열림" class="out">
						<img src="../img/brand_story/bongasushi_logo.jpg" alt="본가스시" />
						<span class="brand_name">본가스시</span>

						<span class="over_text over_text_2 over_out">
							정통 일본식<br />회전초밥 전문점
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="/brand/hansolnoodle.html" title="새창으로 열림" class="out">
						<img src="../img/brand_story/hansol_logo.jpg" alt="한솔냉면" />
						<span class="brand_name">한솔냉면</span>

						<span class="over_text over_text_1 over_out">
							뿌리깊은 우리의 맛
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" title="새창으로 열림" class="out">
						<img src="../img/brand_story/dol_logo.jpg" alt="돌장각" />
						<span class="brand_name">돌장각</span>

						<span class="over_text over_text_1 over_out">
							울진에서 따온<br/>자연산 돌미역국 전문점
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" title="새창으로 열림" class="product">
						<img src="../img/brand_story/1table_logo.jpg" alt="원테이블" />
						<span class="brand_name">원테이블</span>

						<span class="over_text over_text_2 over_product">
							현대백화점에서<br>만나는 간편식
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="https://www.thehyundai.com/front/dpa/sbSect.thd?sectId=149650&sectId=149650" title="새창으로 열림" class="product">
						<img src="../img/brand_story/farmstroy_logo.jpg" alt="산지스토리관" />
						<span class="brand_name">산지스토리관</span>

						<span class="over_text over_text_2 over_product">
							농부들이<br>전하는 진심
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="/brand/yorien.html" title="새창으로 열림" class="product">
						<img src="../img/brand_story/yoli_logo.jpg" alt="요리앤 좋을재" />
						<span class="brand_name">요리앤 좋을재</span>

						<span class="over_text over_text_2 over_product">
							좋은재료!<br />즐거운요리!
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" title="새창으로 열림" class="product">
						<img src="../img/brand_story/hplate_logo.jpg" alt="에이치플레이트" />
						<span class="brand_name">에이치플레이트</span>

						<span class="over_text over_text_2 over_product">
							레스토랑을 <br />집에서 즐긴다
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" title="새창으로 열림" class="product">
						<img src="../img/brand_story/hcook_logo.jpg" alt="에이치쿡 " />
						<span class="brand_name">에이치쿡 </span>

						<span class="over_text over_text_1 over_product">
							간편하고 맛있게!
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" title="새창으로 열림" class="product">
						<img src="../img/brand_story/vergnano_logo.jpg" alt="베르나노" />
						<span class="brand_name">베르나노</span>

						<span class="over_text over_text_2 over_product">
							이탈리아 대표<br />명품커피
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" title="새창으로 열림" class="product">
						<img src="../img/brand_story/dallmayr_logo.jpg" alt="달마이어" />
						<span class="brand_name">달마이어</span>

						<span class="over_text over_text_2 over_product">
							독일 황실에서<br>선택한 ‘황제커피’
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" title="새창으로 열림" class="product">
						<img src="../img/brand_story/chaedaum_logo.jpg" alt="채다움" />
						<span class="brand_name">채다움</span>

						<span class="over_text over_text_2 over_product">
							현대그린푸드의<br>프리미엄 청과 브랜드
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="/brand/hsupermarket.html" title="새창으로 열림" class="market">
						<img src="../img/brand_story/hmart_logo.jpg" alt="Hmart" />
						<span class="brand_name">에이치마트</span>

						<span class="over_text over_text_2 over_market">
							편리하고 믿을 수 있는<br />Hmart
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="/brand/h24plus.html" title="새창으로 열림" class="market">
						<img src="../img/brand_story/h24_logo.jpg" alt="H24+H24GREEN" />
						<span class="brand_name">에이치24, 에이치24그린</span>

						<span class="over_text over_text_2 over_market">
							언제 어디서나 즐길 수 있는<br />편의점 브랜드
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>
				<li class="select">
					<a target="_blank" href="/brand/dailynmarket.html" title="새창으로 열림" class="market">
						<img src="../img/brand_story/nmarket_logo.jpg" alt="Daily N Market" />
						<span class="brand_name">데일리앤마켓</span>

						<span class="over_text over_text_1 over_market">
							편리하고 쾌적한 쇼핑공간
							<img src="../img/brand_story/icon_plus.png" alt="" />
						</span>
					</a>
				</li>

			</ul>
			<!-- //브랜드 이야기 -->
	
		</div>

		<!-- //서브 컨텐츠 -->

	</div>
<%@ include file ="/Inc/Footer.jspf" %>