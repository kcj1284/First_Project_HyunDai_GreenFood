<!-- 
IR_Center_List
@author 김찬중
@since 2022.09.07

<pre>
수정일          수정자                 수정내용
----------  ---------    ---------------------------
2022.09.07     김찬중      최초 생성
</pre> 
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IR자료실</title>
<link href="../css/II_style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<%@ include file="/Inc/Header.jspf"%>
	<div class="sub_contents analyst_box">
		<div class="title_description">
			<h2 class="title_sub">IR자료실</h2>

			<p class="sub_description">현대그린푸드의 IR자료실입니다.</p>
		</div>

		<ul class="tab_list tab_list_2">
			<li><a href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=IR_Center_List">IR 자료실</a></li>
			<li class="on"><a href="#">IR Contact</a></li>
		</ul>

		<div class="director_area">
			<h3 class="title_director">IR 관련 연락처를 안내드립니다.</h3>
			<table class="list_tb">
				<colgroup>
					<col width="50%" />
					<col width="50%" />
				</colgroup>
				<tbody>
					<tr>
						<td>현대그린푸드 경영관리팀<br /> - 회사소개, 기업탐방, 공시사항<br />
						</td>
						<td>Tel. 031-525-2097/ 031-525-2099<br /> e-mail. leejh@hyundaigreenfood.com<br /> soorin.lee@hyundaigreenfood.com<br />
						</td>
					</tr>
					<tr>
						<td>FAX<br />
						</td>
						<td>FAX. 031-525-2482<br />
						</td>
					</tr>
					<tr>
						<td>주소<br />
						</td>
						<td>경기도 용인시 수지구 문인로 30(동천동), 현대그린푸드 본사<br />
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<%@ include file="/Inc/Footer.jspf"%>
</body>
</html>