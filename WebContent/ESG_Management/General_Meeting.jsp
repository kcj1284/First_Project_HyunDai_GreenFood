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
	<div class="wrap">
		<div class="tree">
			<img src="../img/ESG/visual_esg.jpg">
		</div>
		<div class="tree_text">
			<h1>ESG 경영</h1>
			<br> 현대그린푸드는 ‘건강’과 ‘지속가능성’ 이라는 비전을 위해<br> 다양한 분야에서 사회적 가치를 창출하는 것을 목표로 합니다.<br>
		</div>
	</div>

	<div class="category">
		<ul>
		<li class = "on">
		<a href="Managerial_Objective.jsp">경영목표</a> </li>
		<li class = "on"><a href="NetZero_2030.jsp">환경경영(E)</a></li> 
		<li class = "on"><a href="CRS.jsp">사회공헌(S)</a> </li>
		<li class = "on"><a href="Board_Policy.jsp">지배구조(G)</a> </li>
		<li class = "on"><a href="Safety_Health.jsp">안전보건</a> </li>
		<li class = "on"><a href="Win_Management.jsp">상생경영</a> </li>
		<li class = "on"><a href="Group_Ethical_Management.jsp">윤리경영</a> </li>
		</ul>
	</div>
	<div>
		<div class="sub_contents">
			<div class="sub_text">
				현대그린푸드는 고객에게 가장 신뢰받는 종합식품기업으로 거듭남과 동시에, <br class="pc">공정한 경쟁과 지속성장을 위해 안정적이고 투명한 지배구조를 갖추고자 노력하고 있습니다. <br>앞으로도 주주 등 모든 이해관계자에게 당사의 지배구조에 관한 구체적인 정보를 제공함으로써 <br class="pc">신뢰를 확보하고 성실한 경영활동을 수행하고자 최선을 다하겠습니다.
			</div>

			<div class="tab_list">
				<li><a href="Board_Policy.jsp">이사회정책</a></li>
				<li><a href="External_Auditor.jsp">외부감사인</a></li>
				<li class="on"><a href="General_Meeting.jsp">주주총회</a></li>
				<li><a href="Shareholder_info.jsp">주주정보</a></li>
				<li><a href="Corp_Governance_Chart.jsp">기업지배구조헌장</a></li>
				<li><a href="Corp_Governance_Report.jsp">기업지배구조보고서</a></li>
				<br>
			</div>
			<div class="committee_area">
				<h3 class="title_director">
					정기 주주총회 안건별 찬반 비율 <span class="boss_director">(2022년 3월 29일)</span>
				</h3>
				<table class="list_tb">
					<caption class="blind">정기 주주총회 안건별 찬반비율</caption>
					<colgroup>
						<col width="30%" />
						<col width="15%" />
						<col width="20%" />
						<col width="20%" />
						<col width="*" />
					</colgroup>
					<thead>

						<tr>
							<th scope="col">안건</th>
							<th scope="col">참석 주식 수</th>
							<th scope="col">찬성</th>
							<th scope="col">반대</th>
							<th scope="col">기권</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="first">제1호 : 제54기 재무제표 승인의 건</td>
							<td rowspan=2 class="right_td">63,959,779</td>
							<td class="right_td">60,776,566(95.0%)</td>
							<td class="right_td">2,960,929</td>
							<td class="right_td">222,284</td>
						</tr>
						<tr>
							<td class="first">제2호 : 정관 일부 변경의 건</td>

							<td class="right_td">63,652,677(99.5%)</td>
							<td class="right_td">121,567</td>
							<td class="right_td">185,535</td>
						</tr>
						<tr>
							<td class="first">제3호 : 이사 선임의 건</td>
							<td class="right_td"></td>
							<td class="right_td"></td>
							<td class="right_td"></td>
							<td class="right_td"></td>
						</tr>
						<tr>
							<td class="first">제3-1호 : 사내이사 정지선 선임의 건</td>
							<td rowspan=4 class="right_td">63,959,779</td>
							<td class="right_td">63,684,420(99.6%)</td>
							<td class="right_td">274,943</td>
							<td class="right_td">416</td>
						</tr>
						<tr>
							<td class="first">제3-2호 : 사내이사 장호진 선임의 건</td>

							<td class="right_td">63,434,901(99.2%)</td>
							<td class="right_td">508,584</td>
							<td class="right_td">16,294</td>
						</tr>
						<tr>
							<td class="first">제3-3호 : 사내이사 이진원 선임의 건</td>

							<td class="right_td">63,653,301(99.5%)</td>
							<td class="right_td">290,224</td>
							<td class="right_td">16,254</td>
						</tr>
						<tr>
							<td class="first">제3-4호 : 사외이사 정병두 선임의 건</td>

							<td class="right_td">60,377,345(94.4%)</td>
							<td class="right_td">3,566,160</td>
							<td class="right_td">16,274</td>
						</tr>
						<tr>
							<td class="first">제4호 : 감사위원회 위원 선임의 건</td>
							<td class="right_td"></td>
							<td class="right_td"></td>
							<td class="right_td"></td>
							<td class="right_td"></td>
						</tr>
						<tr>
							<td class="first">제4-1호 : 감사위원 정병두 선임의 건</td>
							<td class="right_td">25,761,465</td>
							<td class="right_td">22,486,600(87.3%)</td>
							<td class="right_td">3,274,612</td>
							<td class="right_td">253</td>
						</tr>
						<tr>
							<td class="first">제5호 : 이사 보수 한도 승인의 건</td>
							<td class="right_td">63,959,779</td>
							<td class="right_td">62,426,617(97.6%)</td>
							<td class="right_td">1,347,977</td>
							<td class="right_td">185,185</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="/Inc/Footer.jspf"%>
</body>
</html>