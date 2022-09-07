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
		<a href="Group_Ethical_Management.jsp">그룹윤리경영</a> <a href="Ethics_Report_Center.jsp">윤리신고센터</a> <br>
	</div>
	<div>
		<h3 class="esg_title">윤리신고센터</h3>
		<div class="esg_text">
			현대백화점그룹 윤리신고센터는 그룹 임직원이 부정 및 비리에 대해 상담·신고 할 수 있는 곳으로 <br class="pc">윤리경영을 기업의 최우선가치로 인식하고 또한 이를 모든 임직원의 <br class="pc">올바른 가치 판단 및 행동기준으로 삼고자 운영하고 있는 제도입니다.
		</div>

		<ul class="sinmungo_area">
			<li>
				<p class="check_sinmungo">
					<span>임직원의 부정, 비리, 금품수수</span> <strong>품위손상 등의 부당행위</strong>
				</p>
			</li>
			<li>
				<p class="check_sinmungo">
					<span>잘못된 관행이나 회사 정책 부문의</span> <strong>개선 및 제안 사항</strong>
				</p>
			</li>
			<li>
				<p class="check_sinmungo">
					<span>당사와 거래 관련한 제반</span> <strong>불이익 사항</strong>
				</p>
			</li>
		</ul>

		<div style="text-align: center;">
			<a href="http://www.ehyundai.com/newPortal/ir/ETH/ETH000008.do?ir=3" class="btn_action comm" target="_blank">제보하기</a>
		</div>
	</div>
	<%@ include file="/Inc/Footer.jspf"%>
</body>
</html>