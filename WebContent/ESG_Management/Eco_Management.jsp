<!--작성자 김찬중-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Eco_Management</title>
<link href="../css/EM_style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<%@ include file="/Inc/Header.jspf"%>
	<div class="container_area" id="contents">


		<div class="sub_layout esg_area">
			<div class="sub_visual">
				<ul class="hierarchy_list">
					<li class="icon_home"><img src="../img/ESG/icon_home.png"
						alt="Home" /></li>
					<li class="depth_2"><a href="#" class="m_hierarchy">ESG 경영
					</a>
						<ul class="hierarchy_depth" style="display: none;">
							<li><a href="#">환경경영(E)</a></li>
						</ul></li>
					<li class="depth_3"><a href="#" class="t_block_hierarchy">환경경영(E)</a>
						<ul class="hierarchy_depth">
							<li><a href="#">경영목표</a></li>
							<li><a href="#">환경경영(E)</a></li>
							<li class="on"><a href="#">사회공헌(S)</a></li>
							<li><a href="#">지배구조(G)</a></li>
							<li><a href="#">안전보건</a></li>
							<li><a href="#">상생경영</a></li>
							<li><a href="#">윤리경영</a></li>
						</ul></li>
				</ul>
				<div class="title_description">
					<h2 class="title_sub">ESG 경영</h2>
					<p class="sub_description">
						현대그린푸드는 ‘건강’과 ‘지속가능성’ 이라는 비전을 위해 <br>다양한 분야에서 사회적 가치를 창출하는 것을
						목표로 합니다.
					</p>
				</div>
			</div>

			<div class="category">
				<ul>
					<li><a href="Managerial_Objective.jsp">경영목표</a></li>
					<li class="on"><a href="NetZero_2030.jsp">환경경영(E)</a></li>
					<li><a href="CRS.jsp">사회공헌(S)</a></li>
					<li><a href="Board_Policy.jsp">지배구조(G)</a></li>
					<li><a href="Safety_Health.jsp">안전보건</a></li>
					<li><a href="Win_Management.jsp">상생경영</a></li>
					<li><a href="Group_Ethical_Management.jsp">윤리경영</a></li>
				</ul>
			</div>
			<div class="sub_contents">
				<ul class="tab_list">
					<li><a href="/po/esg/b/ESGB01C.hgc">넷제로2030</a></li>
					<li class="on"><a href="NetZero_2030.jsp">친환경경영</a></li>
				</ul>

				<section class="esg_section cont2_2_1">
					<h3 class="esg_title">추진조직</h3>
					<div class="esg_text">
						현대그린푸드는 사업활동 전 과정에서 환경을 먼저 생각합니다. <br>EHS담당을 중심으로 각 사업부가 참여한
						친환경 경영 협의체를 구축하고, 친환경 부문 현안과 이슈사항을 발굴·파악하여 <br class="pc">부문별
						중점 개선과제를 수립·이행하고 있습니다.
					</div>

					<div class="esg_text2">
						<span>E:환경, H:건강, S:안전</span>
					</div>
					<div class="esg_img">
						<img src="../img/ESG/em_01.jpg" alt="">
					</div>
				</section>

				<section class="esg_section cont2_2_2">
					<h3 class="esg_title">환경경영목표</h3>
					<div class="esg_text">
						현대그린푸드는 매년 환경성과 측정을 위한 목표를 수립하고, <br class="pc">전 사업장인 본사 外
						3개 센터의 환경목표에 대한 성과를 CEO에 보고하며, <br class="pc">다양한 탄소중립활동을 통한
						환경지표 개선 노력을 지속하고 있습니다.
					</div>

					<div class="directorate_area">
						<h4 class="title_director">○ 2021년 목표 대비 환경경영목표 달성 현황</h4>
						<table class="list_tb">
							<caption class="blind">○ 2021년 목표 대비 환경경영목표 달성 현황</caption>
							<colgroup>
								<col width="10%">
								<col width="">
								<col width="">
								<col width="">
								<col width="">
								<col width="">
								<col width="">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="first">구 분</th>
									<th scope="col">에너지 사용량</th>
									<th scope="col">온실가스 배출량</th>
									<th scope="col">용수 사용량</th>
									<th scope="col">지속가능상품 <br>구매액
									</th>
									<th scope="col">폐기물 배출량</th>
									<th scope="col">폐기물 재활용율</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="first">실적</td>
									<td>2,110 toe</td>
									<td>4,424 tCO₂</td>
									<td>53,046ℓ</td>
									<td>10,269 백만원</td>
									<td>1,102ton</td>
									<td>79%</td>
								</tr>
								<tr>
									<td class="first">목표</td>
									<td>2,222 toe</td>
									<td>4,825 tCO₂</td>
									<td>54,919ℓ</td>
									<td>10,782 백만원</td>
									<td>1,157ton</td>
									<td>79%</td>
								</tr>
								<tr>
									<td class="first">달성여부</td>
									<td>○</td>
									<td>○</td>
									<td>○</td>
									<td></td>
									<td>○</td>
									<td>○</td>
								</tr>
							</tbody>
						</table>
					</div>
				</section>

				<section class="esg_section cont2_2_4">
					<h3 class="esg_title">현대그린푸드 ESG 평가 결과 (2021년)</h3>
					<div class="esg_img">
						<img src="../img/ESG/em_02.jpg" alt="">
					</div>
					<div class="esg_btn">
						<a target="frm"
							href="/cm/download.hg?PHYSC_FILE_NM=/static/pdf/ESG_EVALUATION_2021.pdf&amp;LOGIC_FILE_NM=esg.pdf"
							class="esg_btn_down">한국기업지배구조원 보도자료(2021년)</a>
					</div>

					<section class="cont2_2_2">
						<h4 class="esg_sub_title">에너지 사용량 감축</h4>
						<div class="esg_img">
							<img src="../img/ESG/em_03.jpg" alt="">
						</div>

						<h4 class="esg_sub_title">온실가스 배출량 감축</h4>
						<div class="esg_img">
							<img src="../img/ESG/em_04.jpg" alt="">
						</div>

						<h4 class="esg_sub_title">폐기물 배출량 감축</h4>
						<div class="esg_img">
							<img src="../img/ESG/em_05.jpg" alt="">
						</div>

						<h4 class="esg_sub_title">용수 사용량 감축</h4>
						<div class="esg_img">
							<img src="../img/ESG/em_06.jpg" alt="">
						</div>

						<ul class="list">
							<li>
								<h4 class="esg_sub_title">지속가능상품 구매 확대</h4>
								<div class="esg_img">
									<img src="../img/ESG/em_07.jpg" alt="">
								</div>
							</li>
							<li>
								<h4 class="esg_sub_title">친환경 제품 매출 확대</h4>
								<div class="esg_img">
									<img src="../img/ESG/em_08.jpg" alt="">
								</div>
							</li>
						</ul>

					</section>
				</section>


				<section class="esg_section cont2_2_3">
					<h3 class="esg_title">환경경영 투자 실적</h3>
					<div class="esg_text">
						현대그린푸드는 2021년 친환경 경영을 위하여 총 8.7억원을 투자하였습니다. <br>이는 당초 계획 대비
						20%, 2020년 대비 44%증가한 규모입니다.
					</div>

					<div class="directorate_area">
						<table class="list_tb">
							<caption class="blind"></caption>
							<colgroup>
								<col width="10%">
								<col width="">
								<col width="">
								<col width="">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="first">구 분</th>
									<th scope="col">에너지 사용량</th>
									<th scope="col">온실가스 배출량</th>
									<th scope="col">용수 사용량</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="first">폐기물
										<p style="font-size: 80%;">(설비시설)</p>
									</td>
									<td>친환경 음식물 처리기 도입
										<p style="font-size: 80%;">· ‘21년 152대 도입 완료</p>
									</td>
									<td>단체급식업장 125개소</td>
									<td>622백만원</td>
								</tr>
								<tr>
									<td class="first" rowspan="2">에너지
										<p style="font-size: 80%;">(설비시설)</p>
									</td>
									<td>태양광 패널 설치
										<p style="font-size: 80%;">· 연간 13만kw 전기 자체 생산</p>
									</td>
									<td>본사 1개소</td>
									<td>120백만원</td>
								</tr>
								<tr>
									<td>고효율 조명(LED) 설치
										<p style="font-size: 80%;">· 연간 31만kw 전력 절감 계획</p>
									</td>
									<td>본사, 센터 4개소</td>
									<td>60백만원</td>
								</tr>
								<tr>
									<td class="first">캠페인</td>
									<td>친환경(그리너리) 캠페인 운영
										<p style="font-size: 80%;">· 잔반제로 포인트 프로그램</p>
									</td>
									<td>단체급식업장 188개소</td>
									<td>64백만원</td>
								</tr>
							</tbody>
						</table>
					</div>

					<ul class="esg_guide">
						<li>※ LED 설치사업은 ‘14년부터 진행중인 에너지 효율개선 사업으로, <br class="pc">7개년간
							173백만원을 투자하여 총 4,128개의 조명을 고효율 장비로 교체하였습니다.
						</li>
						<li>※ 현대그린푸드는 2022년에 전년 대비 15% 증가한 10억원의 환경경영 투자를 계획하고 있습니다.
							<br>특히, ‘21년 설치한 태양광 패널을 전국의 센터에 확대하여 신재생에너지 생산 투자를 늘릴
							계획입니다.
						</li>
					</ul>
				</section>

				<section class="esg_section cont2_2_5">
					<h3 class="esg_title">기후 변화 리스크·기회 요인 분석</h3>
					<div class="esg_text">
						현대그린푸드는 ISO 14001 등을 기반으로 기후변화 요인에 따른 영향을 정기적으로 분석하고 있으며, <br
							class="pc">리스크 최소화 및 사업기회 확대를 통해 실질적인 환경경영이 이루어 질 수 있도록
						노력합니다. <br>또한, 향후 발생 가능한 이슈에 대해 지속적인 분석을 통해 선제적으로 대응해 나갈
						예정입니다.
					</div>

					<div class="esg_slider">
						<div>
							<img src="../img/ESG/em_09.jpg" alt="">
						</div>
						<div>
							<img src="../img/ESG/em_10.jpg" alt="">
						</div>
					</div>
				</section>

				<section class="esg_section cont2_2_6">
					<h3 class="esg_title">
						신규사업 부문 및 기존 사업에 대한 <br>환경점검 대응 전략 및 프로세스
					</h3>
					<div class="esg_text">
						당사는 신규사업 추진 시, 위의 기후 변화 요인에 대해 점검하고 있으며, <br class="pc">환경에
						대한 이슈 발생 시, 내부적인 점검 프로세스를 통해 적극적으로 대응하고 있습니다. <br class="pc">기존
						사업과 신규 사업 추진 과정에서 발생할 수 있는 환경 리스크 및 기회 요인 점을 통해 <br class="pc">환경
						경영에 최선을 다하고자 노력합니다.
					</div>

					<dl class="esg_list">
						<dt>
							<span>환경 점검 Flow</span>
						</dt>
						<dd>
							<img src="../img/ESG/em_11.jpg" alt="">
						</dd>
					</dl>

					<dl class="esg_list">
						<dt>
							<span>신규 사업 환경 점검 체크리스트</span>
						</dt>
						<dd>1. 신규로 추진하는 사업이 정부 환경 규제에 대해 민감한 사업인가? (Y/N)</dd>
						<dd>2. 사업 추진 과정에서 재생에너지 사용을 확대시킬 수 있는가? (Y/N)</dd>
						<dd>3. 환경 이슈에 따른 고객 행동변화에 많은 영향을 받는 사업인가? (Y/N)</dd>
						<dd>4. 홍수, 폭설 등 자연재해 발생 시, 상품 공급 및 판매에 문제가 발생하는가? (Y/N)</dd>
						<dd>5. 사업 운영 과정에서 발생하는 온실가스 배출량이 기존 사업보다 증가하는가? (Y/N)</dd>
					</dl>
				</section>

				<section class="esg_section cont2_2_7">
					<h3 class="esg_title">환경법규 위반 현황</h3>
					<div class="esg_text">현대그린푸드는 최근 3개년 환경관련 법규 위반 사실이 없습니다.</div>
					<div class="esg_btn">
						<a
							href="/cm/download.hg?PHYSC_FILE_NM=/static/pdf/CISSM01C_1.pdf&LOGIC_FILE_NM=환경경영방침.pdf"
							class="btn_action comm">환경경영방침</a> <a
							href="/cm/download.hg?PHYSC_FILE_NM=/static/pdf/CISSM01C_2.pdf&LOGIC_FILE_NM=녹색구매방침.pdf"
							class="btn_action comm">녹색구매방침</a>

						<div class="box">
							<a
								href="/cm/download.hg?PHYSC_FILE_NM=/static/pdf/CISSM01C_3.zip&LOGIC_FILE_NM=환경경영 법규 규제관리.zip"
								class="btn_action comm">환경경영 법규 규제관리</a> <a
								href="/cm/download.hg?PHYSC_FILE_NM=/static/pdf/CISSM01C_4.pdf&LOGIC_FILE_NM=환경성과평가체계.pdf"
								class="btn_action comm">환경성과 평가체계</a>
						</div>

						<div class="box">
							<a
								href="/cm/download.hg?PHYSC_FILE_NM=/static/pdf/CISSM01C_5.zip&LOGIC_FILE_NM=환경 리스크 중대성 평가.zip"
								class="btn_action comm">환경 리스크 중대성 평가</a>
						</div>
					</div>
				</section>
			</div>
		</div>

		<script type="text/javascript">
			$(document).ready(function() {
				$(".esg_slider").each(function() {
					$(this).slick({
						arrows : false,
						infinite : false,
						variableWidth : true
					});
				});
			});
		</script>


	</div>
	<%@ include file="/Inc/Footer.jspf"%>
</body>
</html>