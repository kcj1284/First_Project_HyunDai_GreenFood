<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/Inc/Header.jspf"%>

<link href="../css/ESG_infrasystem/infrasystem_style.css"
	type="text/css" rel="stylesheet" />

<!-- 하이어라키 -->
<ul class="hierarchy_list">
	<li class="icon_home"><img
		src="../img/ESG_infrasystem/icon_home.jpg" alt="Home" /></li>
	<li class="depth_2"><a href="#" class="m_hierarchy">사업영역 </a>

		<ul class="hierarchy_depth" style="display: none;">
			<li><a href="#">사업영역</a></li>
		</ul></li>
	<li class="depth_3"><a href="#" class="t_block_hierarchy">식품안전시스템
	</a>

		<ul class="hierarchy_depth">
		</ul></li>
</ul>
<!-- //하이어라키 -->

<!-- 서브 컨텐츠 -->
<div class="sub_contents">
	<!-- 타이틀 , 디스크립션 -->
	<div class="title_description">
		<h2 class="title_sub">식품안전시스템</h2>

		<p class="sub_description">위생사고 제로의 안전한 식사를 위한 식품안전시스템을 소개합니다.</p>
	</div>
	<!-- //타이틀 , 디스크립션 -->

	<!-- 탭 -->
	<ul class="tab_list tab_list_2">
		<li class="on"><a href="#">개요</a> <img
			src="../img/ESG_infrasystem/food_safety_system/icon_tab_bubble.jpg"
			class="icon_tab_bubble" alt="" /></li>
		<li><a href="./food_sanitation_research_institute.jsp">식품위생연구소</a>
			<img
			src="../img/ESG_infrasystem/food_safety_system/icon_tab_bubble.jpg"
			class="icon_tab_bubble" alt="" /></li>
	</ul>
	<!-- //탭 -->

	<div class="infra_area">

		<!-- 개요 -->
		<div class="infra_text_area">
			<h3 class="title_infra">개요</h3>

			<p class="text_infra">
				처음 식재료 선택에서 식탁에 오르기까지 식품의 안전을 위해서는 어떤 것도 소홀히 할 수 없습니다.<br />위생사고
				제로를 기록한 현대그린푸드는 이중, 삼중의 철저한 식품안전시스템을 통해 안전의 약속을 지켜가고 있습니다.
			</p>
		</div>
		<!-- //개요 -->

		<!-- 3STEP 관리체계 -->
		<div class="infra_text_area">
			<h3 class="title_infra">3STEP 관리체계</h3>

			<div class="img_3depth">
				<img src="../img/ESG_infrasystem/food_safety_system/img_3step.jpg"
					alt="" />

				<ul class="blind">
					<li>
						<div>
							<strong>영업점</strong> <span>자체공정<br />위생관리 체계
							</span>
						</div>
					</li>
					<li>
						<div>
							<strong>운영팀</strong> <span>운영관리 및<br />중점위생관리 체계
							</span>
						</div>
					</li>
					<li>
						<div>
							<strong>본사 식품안전팀</strong> <span>총괄 위생관리 및<br />자체 품질인증제
							</span>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- //3STEP 관리체계 -->

		<!-- HACCP 시스템 -->
		<div class="infra_text_area">
			<ul class="haccp_list">
				<li><img
					src="../img/ESG_infrasystem/food_safety_system/icon_haccp1.jpg"
					alt="" />
					<dl>
						<dt>HACCP 이란?</dt>
						<dd>
							식품의 원재료부터 최종소비자가 섭취하기까지 각 단계에서<br />발생할 우려가 있는 위해요소를 규명하고,<br />이를
							중점적으로 관리하기 위한 중요관리점을 결정하여<br />식품의 안전성을 확보하기 위한 과학적인 위생관리체계라고 할
							수 있다.
						</dd>
					</dl></li>
				<li><img
					src="../img/ESG_infrasystem/food_safety_system/icon_haccp2.jpg"
					alt="" />
					<dl>
						<dt>총 23개 HACCP 지정</dt>
						<dd>
							급식 사업장 4개소, <br />자체 물류 및 가공센터 6개소, <br />식품 판매장 13개소 보유
						</dd>
					</dl></li>
			</ul>

			<div class="haccp_step_area">
				<h3 class="title_infra">HACCP 시스템</h3>

				<div class="haccp_step_img">
					<img
						src="../img/ESG_infrasystem/food_safety_system/haccp_process.jpg"
						alt="" />

					<ul class="blind">
						<li>재배(생산)</li>
						<li>구매업체관리</li>
						<li>입고</li>
						<li>가공</li>
						<li>배송</li>
						<li>조리</li>
						<li>제공</li>
					</ul>
				</div>
			</div>

		</div>
		<!-- //HACCP 시스템 -->

		<!-- 공정별 안전체계 -->
		<div class="infra_text_area infra_safe_area">
			<h3 class="title_infra">공정별 안전체계</h3>

			<ul class="safe_process">
				<li class="process_1">
					<dl>
						<dt>배송전(협력사)</dt>
						<dd>
							정기점검(위생안전 AUDIT)<br />개인위생, 시설위생 등 점검
						</dd>
					</dl>
				</li>
				<li class="process_2">
					<dl>
						<dt>협력사 보관창고 입고시</dt>
						<dd>
							보관 창고 청결상태<br />배송차량 청결 및 온도관리
						</dd>
					</dl>
				</li>
				<li class="process_3">
					<dl>
						<dt>식당 입고 시</dt>
						<dd>
							식자재 검수철저<br />선도 및 수량 관리<br />유통기한 확인<br />신속한 냉장, 냉동고 분리 입고
						</dd>
					</dl>
				</li>
				<li class="process_4">
					<dl>
						<dt>배식 후</dt>
						<dd>
							잔식 폐기<br />식당, 홀, 주방시설 점검 및 청소
						</dd>
					</dl>
				</li>
				<li class="process_5">
					<dl>
						<dt>조리 및 배식</dt>
						<dd>
							전처리시 위생관리<br />조리시 교차오염방지, 개인위생관리철저<br />배식전 검식철저
						</dd>
					</dl>
				</li>
			</ul>
		</div>
		<!-- //공정별 안전체계 -->

	</div>
</div>
<!-- //서브 컨텐츠 -->
<%@ include file="/Inc/Footer.jspf"%>