<!-- 
map
@author 정구현
@since 2022.09.7

<pre>
수정일          수정자                 수정내용
----------  ---------    ---------------------------
2022.09.07     정구현      최초 생성
</pre> 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/Inc/Header.jspf"%>
<link rel="stylesheet" type="text/css"
	href="/First_Project_HyunDai_GreenFood/css/Company_PR/Company_PR_style.css">
<!-- container -->
<div class="container_area" id="contents">
	<div class="sub_layout sub_visual_6">
		<div class="company">
			<!-- 하이어라키 -->
			<ul class="hierarchy_list">
				<li class="icon_home"><img
					src="/First_Project_HyunDai_GreenFood/img/icon/icon_home.png"
					alt="Home" /></li>
				<li class="depth_2"><a href="#" class="m_hierarchy">현대그린푸드
				</a> 
					<ul class="hierarchy_depth" style="display: none;">
						<li><a href="#">현대그린푸드</a></li>
					</ul></li>
				<li class="depth_3"><a href="#" class="t_block_hierarchy">현대그린푸드
				</a>

					<ul class="hierarchy_depth">
						<li class="on"><a href="#">회사소개</a></li>
						<li><a href="#">윤리경영</a></li>
						<li><a href="#">지속가능경영</a></li>
						<li><a href="#">사회공헌활동</a></li>
					</ul></li>
			</ul>
			<!-- //하이어라키 -->

			<!-- 타이틀 , 디스크립션 -->
			<div class="title_description">
				<h2 class="title_sub">회사소개</h2>

				<p class="sub_description">건강한 자연과 우리의 정직한 마음이 맛있는 삶을 만들어 갑니다.</p>
			</div>
			<!-- //타이틀 , 디스크립션 -->
		</div>

		<!-- 서브 컨텐츠 -->
		<div class="sub_contents">
			<!-- 탭 -->
			<ul class="tab_list">
				<li><a
					href="/First_Project_HyunDai_GreenFood/Company_PR/Green_Food.jsp">회사소개</a></li>
				<li><a
					href="/First_Project_HyunDai_GreenFood/Company_PR/history.jsp">연혁</a></li>
				<li class="on"><a href="#">오시는 길</a></li>
			</ul>
			<!-- //탭 -->

			<p class="sub_description new mo">
				건강한 자연과 우리의 정직한 <br>마음이 맛있는 삶을 만들어 갑니다.
			</p>

			<!-- 탭 -->
			<!-- <ul class="tab_list tab_list_2">
				<li class="on">
					<a href="#">본사</a>
					<img src="/Contents/images/t/icon/icon_tab_bubble.jpg" class="icon_tab_bubble" alt="" />
				</li>
				<li>
					<a href="CIDRT02C.hgc">물류센터</a>
					<img src="/Contents/images/t/icon/icon_tab_bubble.jpg" class="icon_tab_bubble" alt="" />
				</li>
				<li>
					<a href="CIDRT03C.hgc">영업지점</a>
					<img src="/Contents/images/t/icon/icon_tab_bubble.jpg" class="icon_tab_bubble" alt="" />
				</li>
				<li>
					<a href="CIDRT04C.hgc">바이어</a>
					<img src="/Contents/images/t/icon/icon_tab_bubble.jpg" class="icon_tab_bubble" alt="" />
				</li>
			</ul> -->
			<!-- //탭 -->

			<!-- 오시는길 -->
			<div class="info_company">
				<h3 class="title_company">오시는 길</h3>

				<ul class="list_location">
					<li>
						<h4 class="tit">현대그린푸드 본사</h4>

						<dl>
							<dt>주소</dt>
							<dd>경기도 용인시 수지구 문인로 30(동천동)</dd>

							<dt>전화번호</dt>
							<dd>031-525-2233</dd>
						</dl>
					</li>
					<li>
						<h4 class="tit">스마트푸드센터</h4>

						<dl>
							<dt>주소</dt>
							<dd>경기도 성남시 중원구 갈마치로 281번길 55(상대원동)</dd>

							<dt>전화번호</dt>
							<dd>031-639-6878</dd>
						</dl>
					</li>
					<li>
						<h4 class="tit">수지센터</h4>

						<dl>
							<dt>주소</dt>
							<dd>경기도 용인시 수지구 문인로 30 (동천동)</dd>

							<dt>전화번호</dt>
							<dd>031-525-2251</dd>
						</dl>
					</li>
					<li>
						<h4 class="tit">평택센터</h4>

						<dl>
							<dt>주소</dt>
							<dd>
								경기도 평택시 오성면 오성산단1로 131 <br class="pc">(한국초저온 B동 지하1층)
							</dd>

							<dt>전화번호</dt>
							<dd>031-686-9225</dd>
						</dl>
					</li>
					<li>
						<h4 class="tit">경인1센터</h4>

						<dl>
							<dt>주소</dt>
							<dd>경기도 광주시 도척면 도척로 401-61</dd>

							<dt>전화번호</dt>
							<dd>031-370-1910</dd>
						</dl>
					</li>
					<li>
						<h4 class="tit">경인2센터</h4>

						<dl>
							<dt>주소</dt>
							<dd>경기도 광주시 도척면 도척로 401</dd>

							<dt>전화번호</dt>
							<dd>031-370-1910</dd>
						</dl>
					</li>
					<li>
						<h4 class="tit">영남센터</h4>

						<dl>
							<dt>주소</dt>
							<dd>경상남도 밀양시 부북면 사포로 127</dd>

							<dt>전화번호</dt>
							<dd>055-350-9011</dd>
						</dl>
					</li>
					<li>
						<h4 class="tit">영남사업소</h4>

						<dl>
							<dt>주소</dt>
							<dd>울산광역시 북구 무룡1로 44-9(연암동)</dd>

							<dt>전화번호</dt>
							<dd>052-219-1492</dd>
						</dl>
					</li>
					<li>
						<h4 class="tit">호남센터</h4>

						<dl>
							<dt>주소</dt>
							<dd>광주광역시 광산구 상완길 177(수완동)</dd>

							<dt>전화번호</dt>
							<dd>062-959-2013</dd>
						</dl>
					</li>
					<li>
						<h4 class="tit">울산센터</h4>

						<dl>
							<dt>주소</dt>
							<dd>울산광역시 북구 무룡1로 44-9(연암동)</dd>

							<dt>전화번호</dt>
							<dd>052-219-1493</dd>
						</dl>
					</li>
				</ul>
			</div>
			<!-- //오시는길 -->

		</div>
		<!-- //서브 컨텐츠 -->

	</div>
	<!-- contents : end -->
</div>
<!-- //container -->

<%@ include file="/Inc/Footer.jspf"%>