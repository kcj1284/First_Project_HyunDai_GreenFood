<!--작성자 김찬중-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Business_Performance</title>
<link href="../css/II_style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div class="sub_contents">
		<!-- 타이틀 , 디스크립션 -->
		<div class="title_description">
			<h2 class="title_sub">배당정보</h2>
			<p class="sub_description">현대그린푸드의 배당정보를 알려드립니다.</p>
		</div>
		<!-- //타이틀 , 디스크립션 -->
		<!-- 탭 -->
		<ul class="tab_list tab_list_2">
			<li class="on">
				<button onclick="location='Dividend_Info.jsp'">배당현황</button>
			</li>
			<li>
				<button onclick="location='Dividend_Policy.jsp'">배당정책</button>
			</li>
		</ul>
		<!-- //탭 -->
		<!-- 배당현황 테이블 영역 -->
		<div class="directorate_area">
			<table class="list_tb">
				<caption class="blind">당사 배당 현황</caption>
				<colgroup>
					<col width="15.6%">
					<col width="15.6%">
					<col width="15.6%">
					<col width="15.6%">
					<col width="15.6%">
					<col width="15.6%">
				</colgroup>
				<thead>
					<tr>
						<th scope="col" rowspan="2" class="first">구분</th>
						<th scope="col" class="director_attend_th">2021년</th>
						<th scope="col" class="director_attend_th">2020년</th>
						<th scope="col" class="director_attend_th">2019년</th>
						<th scope="col" class="director_attend_th">2018년</th>
						<th scope="col" class="director_attend_th">2017년</th>
					</tr>
					<tr>
						<th scope="col" class="attend_outwork_th">제54기</th>
						<th scope="col" class="attend_outwork_th">제53기</th>
						<th scope="col" class="attend_outwork_th">제52기</th>
						<th scope="col" class="attend_outwork_th">제51기</th>
						<th scope="col" class="attend_outwork_th">제50기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="first">배당총액(백만원)</td>
						<td>18,334</td>
						<td>18,334</td>
						<td>18,334</td>
						<td>18,334</td>
						<td>6,985</td>
					</tr>
					<tr>
						<td class="first">배당종류</td>
						<td>현금배당</td>
						<td>현금배당</td>
						<td>현금배당</td>
						<td>현금배당</td>
						<td>현금배당</td>
					</tr>
					<tr>
						<td class="first">연결기준 배당성향(%)</td>
						<td>42.1</td>
						<td>25.8</td>
						<td>33.5</td>
						<td>17.8</td>
						<td>6.2</td>
					</tr>
					<tr>
						<td class="first">별도기준 배당성향(%)</td>
						<td>30.2</td>
						<td>48.6</td>
						<td>29.7</td>
						<td>22.6</td>
						<td>6.9</td>
					</tr>
					<tr>
						<td class="first">배당수익률(%)</td>
						<td>2.5</td>
						<td>2.4</td>
						<td>1.8</td>
						<td>1.5</td>
						<td>0.5</td>
					</tr>
					<tr>
						<td class="first">주당 배당금(원)</td>
						<td>210</td>
						<td>210</td>
						<td>210</td>
						<td>210</td>
						<td>80</td>
					</tr>
				</tbody>
			</table>
			<span>※ 당사 주식의 액면가는 500원/주 입니다.</span>
		</div>
	</div>

</body>

</html>