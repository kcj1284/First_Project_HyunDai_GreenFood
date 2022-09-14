<!--작성자 김찬중-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Mangerial_Objective</title>
	<link href="../css/EM_style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<%@ include file="/Inc/Header.jspf"%>
	<div class="container_area" id="contents">

		<div class="sub_layout esg_area">
			<div class="sub_visual">
				<ul class="hierarchy_list">
					<li class="icon_home"><img src="../img/icon/icon_home.png" alt="Home" /></li>
					<li class="depth_2">
						<a href="#" class="m_hierarchy">ESG 경영</a>
						<ul class="hierarchy_depth" style="display: none;">
							<li><a href="#">지배구조(G)</a></li>
						</ul>
					</li>
					<li class="depth_3"><a href="#" class="t_block_hierarchy">지배구조(G)</a>
						<ul class="hierarchy_depth">
							<li><a href="#">경영목표</a></li>
							<li><a href="#">환경경영(E)</a></li>
							<li><a href="#">사회공헌(S)</a></li>
							<li class="on"><a href="#">지배구조(G)</a></li>
							<li><a href="#">안전보건</a></li>
							<li><a href="#">상생경영</a></li>
							<li><a href="#">윤리경영</a></li>
						</ul>
					</li>
				</ul>
				<div class="title_description">
					<h2 class="title_sub">ESG 경영</h2>
					<p class="sub_description">
						현대그린푸드는 ‘건강’과 ‘지속가능성’ 이라는 비전을 위해
						<br>다양한 분야에서 사회적 가치를 창출하는 것을 목표로 합니다.
					</p>
				</div>
			</div>
			<div class="category">
				<ul>
					<li><a href="Managerial_Objective.jsp">경영목표</a></li>
					<li><a href="NetZero_2030.jsp">환경경영(E)</a></li>
					<li><a href="CRS.jsp">사회공헌(S)</a></li>
					<li class="on"><a href="Board_Policy.jsp">지배구조(G)</a></li>
					<li><a href="Safety_Health.jsp">안전보건</a></li>
					<li><a href="Win_Management.jsp">상생경영</a></li>
					<li><a href="Group_Ethical_Management.jsp">윤리경영</a></li>
				</ul>
			</div>
			<div class="sub_contents">
				<div class="sub_text">
					현대그린푸드는 고객에게 가장 신뢰받는 종합식품기업으로 거듭남과 동시에,
					<br class="pc">공정한 경쟁과 지속성장을 위해 안정적이고 투명한 지배구조를 갖추고자 노력하고 있습니다.
					<br>앞으로도 주주 등 모든 이해관계자에게 당사의 지배구조에 관한 구체적인 정보를 제공함으로써
					<br class="pc">신뢰를 확보하고 성실한 경영활동을 수행하고자 최선을 다하겠습니다.
				</div>

				<ul class="tab_list">
					<li class="on"><a href="Board_Policy.jsp">이사회정책</a></li>
					<li><a href="External_Auditor.jsp">외부감사인</a></li>
					<li><a href="General_Meeting.jsp">주주총회</a></li>
					<li><a href="Shareholder_info.jsp">주주정보</a></li>
					<li><a href="Corp_Governance_Chart.jsp">기업지배구조헌장</a></li>
					<li><a href="Corp_Governance_Report.jsp">기업지배구조보고서</a></li>
				</ul>

				<section class="esg_section cont4_1_1">
					<h3 class="esg_title">이사회 정책</h3>

					<div class="directorate_area">
						<h4 class="title_director">이사회 구성</h4>
						<table class="list_tb">
							<caption class="blind">이사회 구성</caption>
							<colgroup>
								<col width="10%">
								<col width="10%">
								<col width="16.666%">
								<col width="16.666%">
								<col width="10%">
								<col width="">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="first">구분</th>
									<th scope="col">성명</th>
									<th scope="col">선임일</th>
									<th scope="col">임기</th>
									<th scope="col">책임보험 <br>가입여부</th>
									<th scope="col">비고</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td class="first">대표이사</td>
									<td>박홍진</td>
									<td>2021년 03월 29일</td>
									<td>2023년 03월 29일</td>
									<td>가입</td>
									<td>이사회 의장</td>
								</tr>
								<tr>
									<td class="first">사내이사</td>
									<td>정지선</td>
									<td>2022년 03월 30일</td>
									<td>2024년 03월 30일</td>
									<td>가입</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td class="first">사내이사</td>
									<td>정교선</td>
									<td>2021년 03월 29일</td>
									<td>2023년 03월 29일</td>
									<td>가입</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td class="first">사내이사</td>
									<td>장호진</td>
									<td>2020년 03월 30일</td>
									<td>2022년 03월 30일</td>
									<td>가입</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td class="first">사내이사</td>
									<td>정지영</td>
									<td>2021년 03월 29일</td>
									<td>2023년 03월 29일</td>
									<td>가입</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td class="first">사내이사</td>
									<td>이진원</td>
									<td>2022년 03월 30일</td>
									<td>2024년 03월 30일</td>
									<td>가입</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td class="first">사외이사</td>
									<td>신수원</td>
									<td>2021년 03월 29일</td>
									<td>2023년 03월 29일</td>
									<td>가입</td>
									<td>감사위원회 위원장,<br />ESG 경영위원회 위원장</td>
								</tr>
								<tr>
									<td class="first">사외이사</td>
									<td>정병두</td>
									<td>2022년 03월 30일</td>
									<td>2024년 03월 30일</td>
									<td>가입</td>
									<td>내부거래위원회, 사외이사<br>후보추천위원회 위원장</td>
								</tr>
								<tr>
									<td class="first">사외이사</td>
									<td>유원곤</td>
									<td>2021년 03월 29일</td>
									<td>2023년 03월 29일</td>
									<td>가입</td>
									<td>보상위원회 위원장</td>
								</tr>
							</tbody>
						</table>
					</div>
				</section>

				<section class="esg_section cont4_1_2">
					<div class="activity_area">
						<div class="search_area">
							<h4 class="title_director">이사회 주요활동</h4>

							<label for="year" class="blind">년도 선택</label> <select id="year" class="select_box"
								onchange="">
								<option selected="true">2021년</option>
								<option>2020년</option>
								<option>2019년</option>
								<option>2018년</option>
								<option>2017년</option>
								<option>2016년</option>
								<option>2015년</option>
								<option>2014년</option>
								<option>2013년</option>
							</select> <button class="btn_search_ok" onclick="ChangeYear()">확인</button>
						</div>
						<div style="display:">
							<table class="list_tb">
								<caption class="blind">이사회 주요활동</caption>
								<colgroup>
									<col width="5%">
									<col width="15%">
									<col width="40%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" rowspan="2" class="first">회차</th>
										<th scope="col" rowspan="2">개최일자</th>
										<th scope="col" rowspan="2">구분</th>
										<th scope="col" rowspan="2">가결여부</th>
										<th scope="col" class="director_attend_th">참석이사수</th>
									</tr>
									<tr>
										<th scope="col" class="attend_outwork_th">사외이사</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">7</td>
										<td>2021.11.08</td>
										<td>
											<ol class="director_division_list">
												<li>1. ESG경영위원회 설치의 건</li>
												<li>2. 2022년 계열회사와의 내부거래 승인의 건</li>
												<li>3. 2021년 ESG 평가 결과 보고의 건</li>
												<li>4. 2021년 제3분기 실적 보고의 건</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>9/2</td>
									</tr>
									<tr>
										<td class="first">6</td>
										<td>2021.10.08</td>
										<td>
											<ol class="director_division_list">
												<li>1. 멕시코법인 증자 승인의 건</li>
												<li>2. (주)현대에버다임 분할 관련 주주총회 의결권 행사의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>10/3</td>
									</tr>
									<tr>
										<td class="first">5</td>
										<td>2021.08.09</td>
										<td>
											<ol class="director_division_list">
												<li>1. 해외법인 설립의 건</li>
												<li>2. 2021년 제2분기 실적 보고의 건</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>9/3</td>
									</tr>
									<tr>
										<td class="first">4</td>
										<td>2021.05.10</td>
										<td>
											<ol class="director_division_list">
												<li>1. 현대IT&E 투자자 지분 인수의 건</li>
												<li>2. 해외지사 설립의 건</li>
												<li>3. 평택센터 지점설립 및 등기의 건</li>
												<li>4. 2021년 제1분기 실적 보고의 건</li>
												<li>5. 공정거래 운영 실적 및 계획 보고의 건</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>9/3</td>
									</tr>
									<tr>
										<td class="first">3</td>
										<td>2021.03.29</td>
										<td>
											<ol class="director_division_list">
												<li>1. 대표이사 선임의 건</li>
												<li>2. 이사회 내 위원회 위원 선임의 건</li>
												<li>3. 이사 보수 집행 승인의 건</li>
												<li>4. 사외이사 후보 추천 위원회 규정 개정의 건</li>
												<li>5. 최고경영자 승계에 관한 규정 제정의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>7/3</td>
									</tr>
									<tr>
										<td class="first">2</td>
										<td>2021.02.22</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제53기 정기주주총회 소집의 건</li>
												<li>2. 제53기 정기주주총회 부의사항 결정의 건</li>
												<li>3. 멕시코법인 증자 승인의 건</li>
												<li>4. 2021년 사업계획 심의의 건</li>
												<li>5. 내부회계관리제도 운영실태 보고</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>9/3</td>
									</tr>
									<tr>
										<td class="first">1</td>
										<td>2021.02.08</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제53기 재무제표 및 영업보고서 승인의 건</li>
												<li>2. 배당정책 공표 승인의 건</li>
												<li>3. 안전보건관리 계획 승인의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>9/3</td>
									</tr>

								</tbody>
							</table>
						</div>
						<div style="display:none;">
							<table class="list_tb">
								<caption class="blind">이사회 주요활동</caption>
								<colgroup>
									<col width="5%">
									<col width="15%">
									<col width="40%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" rowspan="2" class="first">회차</th>
										<th scope="col" rowspan="2">개최일자</th>
										<th scope="col" rowspan="2">구분</th>
										<th scope="col" rowspan="2">가결여부</th>
										<th scope="col" class="director_attend_th">참석이사수</th>
									</tr>
									<tr>
										<th scope="col" class="attend_outwork_th">사외이사</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">8</td>
										<td>2020.12.15</td>
										<td>
											<ol class="director_division_list">
												<li>1. 이지웰㈜ 인수를 위한 주식매매계약 체결의 건</li>
												<li>2. 한화호텔앤드리조트㈜ 중국 급식법인 인수의 건</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>8/3</td>
									</tr>
									<tr>
										<td class="first">7</td>
										<td>2020.11.09</td>
										<td>
											<ol class="director_division_list">
												<li>1. 2020년 제3분기(누계) 실적 보고의 건</li>
												<li>2. 2020년 ESG평가 결과 보고의 건</li>
												<li>3. 멕시코법인 증자 승인의 건</li>
												<li>4. 2021년도 계열회사와의 거래 승인의 건</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>9/3</td>
									</tr>
									<tr>
										<td class="first">6</td>
										<td>2020.08.10</td>
										<td>
											<ol class="director_division_list">
												<li>1. 2020년 제2분기 실적 보고의 건</li>
											</ol>
										</td>
										<td>보고</td>
										<td>9/3</td>
									</tr>
									<tr>
										<td class="first">5</td>
										<td>2020.05.11</td>
										<td>
											<ol class="director_division_list">
												<li>1. 2020년 제1분기 실적 보고의 건</li>
												<li>2. ㈜현대HCN 분할 관련 주주총회 의결권 행사의 건</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>8/2</td>
									</tr>
									<tr>
										<td class="first">4</td>
										<td>2020.04.23</td>
										<td>
											<ol class="director_division_list">
												<li>1. ㈜현대HCN 분할 및 매각 추진 검토 보고의 건</li>

											</ol>
										</td>
										<td>보고</td>
										<td>9/3</td>
									</tr>
									<tr>
										<td class="first">3</td>
										<td>2020.03.30</td>
										<td>
											<ol class="director_division_list">
												<li>1. 이사회 내 위원회 위원 선임의 건</li>
												<li>2. 이사 보수 집행 승인의 건</li>
												<li>3. 이사회 및 이사회 내 위원회 규정 개정의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>7/3</td>
									</tr>
									<tr>
										<td class="first">2</td>
										<td>2020.02.24</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제52기 정기 주주총회 소집의 건</li>
												<li>2. 제52기 정기 주주총회 안건 부의의 건</li>
												<li>3. 임원 상여 지급규정 개정의 건</li>
												<li>4. 이사회 규정 개정의 건</li>
												<li>5. 2020년 사업계획 승인의 건</li>
												<li>6. 2019년 4분기 내부회계관리제도 운영 보고의 건</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>9/3</td>
									</tr>
									<tr>
										<td class="first">1</td>
										<td>2020.02.11</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제52기 재무제표 및 영업보고서 승인의 건</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>9/3</td>
									</tr>

								</tbody>
							</table>
						</div>
						<div style="display:none;">
							<table class="list_tb">
								<caption class="blind">이사회 주요활동</caption>
								<colgroup>
									<col width="5%">
									<col width="15%">
									<col width="40%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" rowspan="2" class="first">회차</th>
										<th scope="col" rowspan="2">개최일자</th>
										<th scope="col" rowspan="2">구분</th>
										<th scope="col" rowspan="2">가결여부</th>
										<th scope="col" class="director_attend_th">참석이사수</th>
									</tr>
									<tr>
										<th scope="col" class="attend_outwork_th">사외이사</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">8</td>
										<td>2019.11.11</td>
										<td>
											<ol class="director_division_list">
												<li>1. 동일인 등 출자계열회사와의 상품 용역거레 승인의 건</li>
												<li>2. 감사위원회 규정 개정의 건</li>
												<li>3. 2019년 제3분기 실적 보고의 건</li>
												<li>4. 2019년 ESG 평가결과 보고의 건</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>9/3</td>
									</tr>
									<tr>
										<td class="first">7</td>
										<td>2019.10.01</td>
										<td>
											<ol class="director_division_list">
												<li>1. 해외지사 설립의 건</li>

											</ol>
										</td>
										<td>가결</td>
										<td>9/3</td>
									</tr>
									<tr>
										<td class="first">6</td>
										<td>2019.08.09</td>
										<td>
											<ol class="director_division_list">
												<li>1. 기업지배구조헌장 제정의 건 </li>
												<li>2. 이사회 규정 개정의 건</li>
												<li>3. 2019년 제2분기 실적 보고의 건</li>

											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>9/3</td>
									</tr>
									<tr>
										<td class="first">5</td>
										<td>2019.05.13</td>
										<td>
											<ol class="director_division_list">
												<li>1. 전자투표제 도입의 건</li>
												<li>2. 2019년 제 1분기 실적 보고의 건</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>8/3</td>
									</tr>
									<tr>
										<td class="first">4</td>
										<td>2019.05.10</td>
										<td>
											<ol class="director_division_list">
												<li>1. 현대리바트 주식 매입의 건</li>

											</ol>
										</td>
										<td>가결</td>
										<td>7/3</td>
									</tr>
									<tr>
										<td class="first">3</td>
										<td>2019.03.29</td>
										<td>
											<ol class="director_division_list">
												<li>1. 대표이사 선임의 건</li>
												<li>2. 이사 보수 집행 승인의 건</li>
												<li>3. 이사회 내 위원회 위원 선임의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>6/3</td>
									</tr>
									<tr>
										<td class="first">2</td>
										<td>2019.02.25</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제 51기 정기주주총회 소집의 건</li>
												<li>2. 제 51기 정기주주총회 목적사항 부의의 건</li>
												<li>3. 유형자산(토지) 매각의 건</li>
												<li>4. 감사위원회 규정 개정의 건</li>
												<li>5. 내부회계관리제도 운영 실태 보고의 건</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>9/3</td>
									</tr>
									<tr>
										<td class="first">1</td>
										<td>2019.02.08
										</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제 51기 재무재표 및 영업보고서 승인의 건</li>
												<li>2. 2019년 사업계획 승인의 건</li>
												<li>3. 배당정책 공표 승인의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>7/3</td>
									</tr>

								</tbody>
							</table>
						</div>
						<div style="display:none">
							<table class="list_tb">
								<caption class="blind">이사회 주요활동</caption>
								<colgroup>
									<col width="5%">
									<col width="15%">
									<col width="40%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" rowspan="2" class="first">회차</th>
										<th scope="col" rowspan="2">개최일자</th>
										<th scope="col" rowspan="2">구분</th>
										<th scope="col" rowspan="2">가결여부</th>
										<th scope="col" class="director_attend_th">참석이사수</th>
									</tr>
									<tr>
										<th scope="col" class="attend_outwork_th">사외이사</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">13</td>
										<td>2018.12.31</td>
										<td>
											<ol class="director_division_list">
												<li>1. 성남 스마트푸드센터 설비투자 승인의 건</li>
												<li>2. 동일인 등 출자계열회사와의 상품ㆍ용역거래 승인의 건</li>
												<li>3. 자회사(금강에이앤디, 현대푸드시스템)와의 합병 종료 보고</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">12</td>
										<td>2018.11.22</td>
										<td>
											<ol class="director_division_list">
												<li>1. 자회사(금강에이앤디, 현대푸드시스템)와의 합병 승인의 건</li>
												<li>2. 자회사(현대IT&E) 지분 매각의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">11</td>
										<td>2018.11.12</td>
										<td>
											<ol class="director_division_list">
												<li>1. 2018년 제3분기 실적 보고의 건</li>
											</ol>
										</td>
										<td>보고</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">10</td>
										<td>2018.10.11</td>
										<td>
											<ol class="director_division_list">
												<li>1. 자회사(금강에이앤디)와의 합병계약 승인의 건</li>
												<li>2. 자회사(현대푸드시스템)와의 합병계약 승인의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">9</td>
										<td>2018.10.02</td>
										<td>
											<ol class="director_division_list">
												<li>1. 자회사(현대IT&E) 주주총회 정관 변경 의결권 행사의 건</li>
												<li>2. 투자부동산 매각의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">8</td>
										<td>2018.08.10</td>
										<td>
											<ol class="director_division_list">
												<li>1. 2018년 제2분기 실적 보고의 건</li>
											</ol>
										</td>
										<td>보고</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">7</td>
										<td>2018.07.03</td>
										<td>
											<ol class="director_division_list">
												<li>1. IT사업부 물적분할 완료 보고의 건</li>
											</ol>
										</td>
										<td>보고</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">6</td>
										<td>2018.05.11
										</td>
										<td>
											<ol class="director_division_list">
												<li>1. 2018년 제1분기 실적 보고의 건</li>
											</ol>
										</td>
										<td>보고</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">5</td>
										<td>2018.04.30</td>
										<td>
											<ol class="director_division_list">
												<li>1. 유형자산(토지) 매입의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">4</td>
										<td>2018.04.05</td>
										<td>
											<ol class="director_division_list">
												<li>1. 현대홈쇼핑 주식 매입의 건</li>
												<li>2. IT사업부문(신규사업 포함) 분할계획서 승인의 건</li>
												<li>3. 임시 주주총회 소집의 건</li>
												<li>4. 현대LED 주식 매각의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">3</td>
										<td>2018.03.30</td>
										<td>
											<ol class="director_division_list">
												<li>1. 대표이사 선임의 건</li>
												<li>2. 이사회의장 선임의 건</li>
												<li>3. 이사보수 집행 승인의 건</li>
												<li>4. 이사회 내 위원회 설치 승인의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">2</td>
										<td>2018.02.26</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제50기 정기주주총회 소집 결의의 건</li>
												<li>2. 제50기 재무제표(이익잉여금처분계산서포함) 및 연결재무제표 승인의 건</li>
												<li>3. 이사 선임의 건</li>
												<li>4. 감사위원 선임의 건</li>
												<li>5. 이사보수한도액 승인의 건</li>
												<li>6. 정관 개정의 건</li>
												<li>7. 내부회계관리제도 운영 보고의 건</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">1</td>
										<td>2018.02.08</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제50기 재무제표 및 영업보고서 승인의 건</li>
												<li>2. 2018년 사업계획 승인의 건</li>
												<li>3. 유형자산(토지) 매입의 건</li>
												<li>4. 중국 북경법인 증자의 건</li>
											</ol>
										</td>
										<td>가결 및 보고</td>
										<td>3/3</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div style="display: none">
							<table class="list_tb">
								<caption class="blind">이사회 구성</caption>
								<colgroup>
									<col width="5%">
									<col width="15%">
									<col width="40%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" rowspan="2" class="first">회차</th>
										<th scope="col" rowspan="2">개최일자</th>
										<th scope="col" rowspan="2">구분</th>
										<th scope="col" rowspan="2">가결여부</th>
										<th scope="col" class="director_attend_th">참석이사수</th>
									</tr>
									<tr>
										<th scope="col" class="attend_outwork_th">사외이사</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">8</td>
										<td>2017.12.28</td>
										<td>
											<ol class="director_division_list">
												<li>1. 동일인 등 출자 계열회사와의 상품용역거래 승인의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">7</td>
										<td>2017.11.14</td>
										<td>
											<ol class="director_division_list">
												<li>1. 3분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">6</td>
										<td>2017.09.20</td>
										<td>
											<ol class="director_division_list">
												<li>1. 현대리바트와 현대에이치앤에스 합병 동의의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">5</td>
										<td>2017.08.11</td>
										<td>
											<ol class="director_division_list">
												<li>1. 2017년 2분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">4</td>
										<td>2017.05.11</td>
										<td>
											<ol class="director_division_list">
												<li>1. 2017년 1분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">3</td>
										<td>2017.03.31</td>
										<td>
											<ol class="director_division_list">
												<li>1. 대표이사 선임의 건</li>
												<li>2. 이사회의장 선임의 건</li>
												<li>3. 이사보수 집행 승인의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">2</td>
										<td>2017.02.28</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제49기 정기주주총회 소집 결의의 건</li>
												<li>2. 제49기 재무제표(이익잉여금처분계산서포함) 및 연결재무제표 승인의 건</li>
												<li>3. 이사 선임의 건</li>
												<li>4. 감사위원 선임의 건</li>
												<li>5. 이사보수한도액 승인의 건</li>
												<li>6. 인원퇴직금 지급규정 개정의 건</li>
												<li>7. 내부회계관리제도 운영실태보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">1</td>
										<td>2017.02.13</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제49기 재무제표 및 영업보고서 승인의 건</li>
												<li>2. 2017년 사업계획 승인의 건</li>
												<li>3. 인원상여금 지급규정 개정의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div style="display: none">
							<table class="list_tb">
								<caption class="blind">이사회 구성</caption>
								<colgroup>
									<col width="5%">
									<col width="15%">
									<col width="40%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" rowspan="2" class="first">회차</th>
										<th scope="col" rowspan="2">개최일자</th>
										<th scope="col" rowspan="2">구분</th>
										<th scope="col" rowspan="2">가결여부</th>
										<th scope="col" class="director_attend_th">참석이사수</th>
									</tr>
									<tr>
										<th scope="col" class="attend_outwork_th">사외이사</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">7</td>
										<td>2016.12.28</td>
										<td>
											<ol class="director_division_list">
												<li>1. 동일인 등 출자 계열회사와의 상품용역거래 승인의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">6</td>
										<td>2016.11.14</td>
										<td>
											<ol class="director_division_list">
												<li>1. 3분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">5</td>
										<td>2016.08.12</td>
										<td>
											<ol class="director_division_list">
												<li>1. 2분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">4</td>
										<td>2016.05.20</td>
										<td>
											<ol class="director_division_list">
												<li>1. 1분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">3</td>
										<td>2016.03.25</td>
										<td>
											<ol class="director_division_list">
												<li>1. 대표이사 선임의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">2</td>
										<td>2016.02.26</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제48기 정기주주총회 소집의 건</li>
												<li>2. 제48기 재무제표 부의의 건</li>
												<li>3. 이사 선임(안) 부의의 건</li>
												<li>4. 감사위원 선임(안) 부의의 건</li>
												<li>5. 이사보수한도액(안) 부의의 건</li>
												<li>6. C&S푸드시스템 유상증자 참여의 건</li>
												<li>7. 내부회계관리제도 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">1</td>
										<td>2016.02.11</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제48기 재무제표 및 영업보고서 승인의 건</li>
												<li>2. 2016년 사업계획 승인의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div style="display: none">
							<table class="list_tb">
								<caption class="blind">이사회 구성</caption>
								<colgroup>
									<col width="5%">
									<col width="15%">
									<col width="40%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" rowspan="2" class="first">회차</th>
										<th scope="col" rowspan="2">개최일자</th>
										<th scope="col" rowspan="2">구분</th>
										<th scope="col" rowspan="2">가결여부</th>
										<th scope="col" class="director_attend_th">참석이사수</th>
									</tr>
									<tr>
										<th scope="col" class="attend_outwork_th">사외이사</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">9</td>
										<td>2015.11.29</td>
										<td>
											<ol class="director_division_list">
												<li>1. 동일인등 출자 계열회사와의 상품ㆍ용역거래 승인의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">8</td>
										<td>2015.11.27</td>
										<td>
											<ol class="director_division_list">
												<li>1. 2015년 3분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">7</td>
										<td>2015.09.25</td>
										<td>
											<ol class="director_division_list">
												<li>1. (주)에버다임 주식매매계약 체결의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">6</td>
										<td>2014.09.11</td>
										<td>
											<ol class="director_division_list">
												<li>1. 2015년 2분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">5</td>
										<td>2015.06.19</td>
										<td>
											<ol class="director_division_list">
												<li>1. (주)에버다임 인수관련 MOU체결의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">4</td>
										<td>2015.05.15</td>
										<td>
											<ol class="director_division_list">
												<li>1. 2015년 1분기 영업실적 보고의 건</li>
												<li>2. 멕시코 해외법인설립 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">3</td>
										<td>2015.03.27</td>
										<td>
											<ol class="director_division_list">
												<li>1. 대표이사 선임의 건</li>
												<li>2. 이사회 의장 선임의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">2</td>
										<td>2015.02.25</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제 47기 정기주주총회 소집의 건</li>
												<li>2. 제 47기 재무제표 부의의 건</li>
												<li>3. 이사 선임(안) 부의의 건</li>
												<li>4. 감사위원 선임(안) 부의의 건</li>
												<li>5. 이사보수한도액(안) 부의의 건</li>
												<li>6. 내부회계관리제도 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">1</td>
										<td>2015.02.12</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제 47기 재무제표 및 영업보고서 승인의 건</li>
												<li>2. 2015년 사업계획 승인의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div style="display: none">
							<table class="list_tb">
								<caption class="blind">이사회 구성</caption>
								<colgroup>
									<col width="5%">
									<col width="15%">
									<col width="40%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" rowspan="2" class="first">회차</th>
										<th scope="col" rowspan="2">개최일자</th>
										<th scope="col" rowspan="2">구분</th>
										<th scope="col" rowspan="2">가결여부</th>
										<th scope="col" class="director_attend_th">참석이사수</th>
									</tr>
									<tr>
										<th scope="col" class="attend_outwork_th">사외이사</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">7</td>
										<td>2014.12.30</td>
										<td>
											<ol class="director_division_list">
												<li>1. 동일인등 출자 계열회사와의 상품ㆍ용역거래 승인의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">6</td>
										<td>2014.12.02</td>
										<td>
											<ol class="director_division_list">
												<li>1. 3분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">5</td>
										<td>2014.08.29</td>
										<td>
											<ol class="director_division_list">
												<li>1. 중국법인증자 승인의 건 (현대복덕찬음산동유한공사)</li>
												<li>2. 2분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">4</td>
										<td>2014.05.30</td>
										<td>
											<ol class="director_division_list">
												<li>1. 자사주펀드 해지 승인의 건</li>
												<li>2. 1분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">3</td>
										<td>2014.03.28</td>
										<td>
											<ol class="director_division_list">
												<li>1. 대표이사 선임의 건</li>
												<li>2. 이사회 의장 선임의 건</li>
												<li>3. 이사회 규정 일부 개정의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">2</td>
										<td>2014.02.18</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제 46기 정기주주총회 소집의 건</li>
												<li>2. 제 46기 재무제표 부의의 건</li>
												<li>3. 이사 선임(안) 부의의 건</li>
												<li>4. 감사위원 선임(안) 부의의 건</li>
												<li>5. 이사보수한도액(안) 부의의 건</li>
												<li>6. 정관 일부 변경(안) 부의의 건</li>
												<li>7. 내부회계관리제도 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">1</td>
										<td>2014.02.10</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제 46기 재무제표 및 영업보고서 승인의 건</li>
												<li>2. 2014년 사업계획 승인의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div style="display: none">
							<table class="list_tb">
								<caption class="blind">이사회 구성</caption>
								<colgroup>
									<col width="5%">
									<col width="15%">
									<col width="40%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" rowspan="2" class="first">회차</th>
										<th scope="col" rowspan="2">개최일자</th>
										<th scope="col" rowspan="2">구분</th>
										<th scope="col" rowspan="2">가결여부</th>
										<th scope="col" class="director_attend_th">참석이사수</th>
									</tr>
									<tr>
										<th scope="col" class="attend_outwork_th">사외이사</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">8</td>
										<td>2013.12.13</td>
										<td>
											<ol class="director_division_list">
												<li>1. 동일인 등 출자계열회사와의 상품, 용역거래 승인의 건</li>
												<li>2. 2013년 3분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">7</td>
										<td>2013.09.30</td>
										<td>
											<ol class="director_division_list">
												<li>1. 타법인 지분 취득 승인의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">6</td>
										<td>2013.09.13</td>
										<td>
											<ol class="director_division_list">
												<li>1. 2013년 2분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">5</td>
										<td>2013.06.25</td>
										<td>
											<ol class="director_division_list">
												<li>1. 해외지사 설립의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">4</td>
										<td>2013.05.31</td>
										<td>
											<ol class="director_division_list">
												<li>1. 해외법인 설립 승인의 건</li>
												<li>2. 주주간 계약체결 승인의 건</li>
												<li>3. 2013년 1분기 영업실적 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">3</td>
										<td>2013.05.06</td>
										<td>
											<ol class="director_division_list">
												<li>1. 전자단기사채 발행한도 설정의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">2</td>
										<td>2013.03.29</td>
										<td>
											<ol class="director_division_list">
												<li>1. 대표이사 선임의 건</li>
												<li>2. 이사회 의장 선임의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
									<tr>
										<td class="first">1</td>
										<td>2013.03.05</td>
										<td>
											<ol class="director_division_list">
												<li>1. 제45기 정기주주총회 소집의 건</li>
												<li>2. 제45기 재무제표 부의의 건</li>
												<li>3. 이사 선임(안)부의의 건</li>
												<li>4. 감사위원 선임(안) 부의의 건</li>
												<li>5. 이사보수환도액(안) 부의의 건</li>
												<li>6. 자기주식 처분의 건</li>
												<li>7. 2013년 사업계획 심의의 건</li>
												<li>8. 내부회계관리제도 보고의 건</li>
											</ol>
										</td>
										<td>가결</td>
										<td>3/3</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</section>

				<section class="esg_section cont4_1_3">
					<div class="director_area">
						<div>
							<h4 class="title_director">이사회 내 위원회 현황</h4>
							<table class="list_tb">
								<caption class="blind">이사회 내 위원회 현황</caption>
								<colgroup>
									<col width="10%" />
									<col width="18%" />
									<col width="18%" />
									<col width="18%" />
									<col width="18%" />
									<col width="18%" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first">구분</th>
										<th scope="col">사외이사 후보<br>추천위원회</th>
										<th scope="col">보상위원회</th>
										<th scope="col">내부거래위원회</th>
										<th scope="col">감사위원회</th>
										<th scope="col">ESG 경영위원회</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">역 할</td>
										<td>사외이사 후보의<br>적정성 검증</td>
										<td>등기임원 보상정책 및<br>보수한도의 평가</td>
										<td>내부거래의 <br>적정성 심사</td>
										<td>회사 전반<br>회계/업무의 감사</td>
										<td>ESG 경영 관련 업무<br>검토 및 결과 보고</td>
									</tr>
									<tr>
										<td class="first">구 성</td>
										<td>사외이사 3명, <br>사내이사 1명</td>
										<td>사외이사 2명, <br>사내이사 1명</td>
										<td>사외이사 3명, <br>사내이사 1명</td>
										<td>사외이사 3명</td>
										<td>사외이사 3명, <br>사내이사 1명</td>
									</tr>
									<tr>
										<td class="first">위원장</td>
										<td>정병두(사외이사)</td>
										<td>유원곤(사외이사)</td>
										<td>정병두(사외이사)</td>
										<td>신수원(사외이사)</td>
										<td>신수원(사외이사)</td>
									</tr>
									<tr>
										<td class="first">위 원</td>
										<td>신수원(사외이사)<br>유원곤(사외이사)<br>박홍진(대표이사)</td>
										<td>신수원(사외이사)<br>정지영(사내이사)</td>
										<td>신수원(사외이사)<br>유원곤(사외이사)<br>이진원(사내이사)</td>
										<td>정병두, 유원곤<br>(전원 사외이사)</td>
										<td>정병두(사외이사)<br>유원곤(사외이사)<br>이진원 (사내이사)</td>
									</tr>
								</tbody>
							</table>
							<p class="korean_financial" style="text-align:left">※ESG 경영위원회는 2021년 이사회 결의로 설치되었습니다.</p>
						</div>
					</div>
				</section>

				<section class="esg_section cont4_1_4">
					<div class="director_area">
						<div class="committee_area">
							<h3 class="title_director">
								사외이사 현황
							</h3>
							<table class="list_tb">
								<caption class="blind">사외이사 현황</caption>
								<colgroup>
									<col width="10%" />
									<col width="15%" />
									<col width="20%" />
									<col width="" />
									<col width="20%" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first">구분</th>
										<th scope="col">성명</th>
										<th scope="col">최초 선임일</th>
										<th scope="col">현재 임기</th>
										<th scope="col">재직 기간<br />(현재 임기 포함)</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="3" class="first">사외이사</td>
										<td>신수원</td>
										<td>2019년 3월 29일</td>
										<td>2021년 3월 29일 ~ 2023년 3월 29일</td>
										<td>4년</td>
									</tr>
									<tr>
										<td>정병두</td>
										<td>2020년 3월 30일</td>
										<td>2022년 3월 30일 ~ 2024년 3월 30일</td>
										<td>4년</td>
									</tr>
									<tr>
										<td>유원곤</td>
										<td>2021년 3월 29일</td>
										<td>2021년 3월 29일 ~ 2023년 3월 29일</td>
										<td>2년</td>
									</tr>
								</tbody>
							</table>
							<p class="korean_financial" style="text-align:left">※당사 이사의 임기는 2년 입니다. (정관 제27조)</p>
						</div>
					</div>
				</section>
			</div>
		</div>
		<script>
			function ChangeYear() {
				$(".activity_area > div").eq(1).hide();
				$(".activity_area > div").eq(2).hide();
				$(".activity_area > div").eq(3).hide();
				$(".activity_area > div").eq(4).hide();
				$(".activity_area > div").eq(5).hide();
				$(".activity_area > div").eq(6).hide();
				$(".activity_area > div").eq(7).hide();
				$(".activity_area > div").eq(8).hide();
				$(".activity_area > div").eq($("#year")[0].selectedIndex + 1).show();
			}
		</script>
	</div>
	<%@include file="/Inc/Footer.jspf"%>
</body>

</html>