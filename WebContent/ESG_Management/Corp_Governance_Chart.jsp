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
			<h1 class="title_sub">ESG 경영</h1>
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

			<div>
				<a href="Board_Policy.jsp">이사회정책</a> <a href="External_Auditor.jsp">외부감사인</a> <a href="General_Meeting.jsp">주주총회</a> <a href="Shareholder_info.jsp">주주정보</a> <a href="Corp_Governance_Chart.jsp">기업지배구조헌장</a> <a href="Corp_Governance_Report.jsp">기업지배구조보고서</a> <br>
			</div>
			<h3 class="esg_title">기업지배구조 헌장</h3>

			<h4 class="title_director">
				주요내용 <a target="frm" href="/cm/download.hg?PHYSC_FILE_NM=/static/pdf/GF_CORPORATEGOVERNANCE.pdf&LOGIC_FILE_NM=GF_CORPORATEGOVERNANCE.pdf" class="esg_btn_down">기업지배구조헌장</a>
			</h4>
			<table class="cogo_table">
				<colgroup>
					<col width="40%" />
					<col width="40%" />
					<col width="20%" />
				</colgroup>


				<tbody>
					<tr>
						<td style="text-align: left; vertical-align: top;">
							<p>I. 주주</p> &nbsp; - 주주의 권리<br> &nbsp; - 주주의 공평한 대우<br> &nbsp; - 주주의 책임<br> <br>
							<p>II. 이사회</p> &nbsp; - 이사회의 기능<br> &nbsp; - 이사회의 구성 및 운영<br> &nbsp; - 이사의 선임 및 후보 추천<br> &nbsp; - 이사의 자격 및 독립성<br> &nbsp; - 이사의 책임<br> &nbsp; - 이사회 내 위원회<br> &nbsp; - 사외이사<br> &nbsp; - 평가 및 보상<br>

						</td>
						<td width="175"></td>
						<td style="text-align: left; vertical-align: top;">
							<p>III. 감사기구</p> &nbsp; - 감사위원회<br> &nbsp; - 외부감사인<br> &nbsp; <br> &nbsp; <br>




							<p>IV. 이해관계자</p> &nbsp; <br> &nbsp; <br> &nbsp; <br>


							<p>V. 공시</p>

						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<%@ include file="/Inc/Footer.jspf"%>
</body>
</html>