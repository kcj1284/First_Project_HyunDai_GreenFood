<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mangerial_Objective</title>
<link href="../ESG_Management_CSS/MO_style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div class="wrap">
		<div class="tree">
			<img src="../img/visual_esg.jpg">
		</div>
		<div class="tree_text">
			<h1>ESG 경영</h1>
			<br> 현대그린푸드는 ‘건강’과 ‘지속가능성’ 이라는 비전을 위해<br> 다양한 분야에서 사회적 가치를 창출하는 것을 목표로 합니다.<br>
		</div>
	</div>

	<div>
		<button onclick="location='Managerial_Objective.jsp'">경영목표</button>
		<button onclick="location='NetZero_2030.jsp'">환경경영(E)</button>
		<button onclick="location='CSR.jsp'">사회공헌(S)</button>
		<button onclick="location='Board_Poricy.jsp'">지배구조(G)</button>
		<button onclick="location='Safety_Health.jsp'">안전보건</button>
		<button onclick="location='Win_Management.jsp'">상생경영</button>
		<button onclick="location='Group_Ethical_Management.jsp'">윤리경영</button>
		<br>
	</div>
	<div>
		<div class="sub_contents">
			<div class="sub_text">
				현대그린푸드는 고객에게 가장 신뢰받는 종합식품기업으로 거듭남과 동시에, <br class="pc">공정한 경쟁과 지속성장을 위해 안정적이고 투명한 지배구조를 갖추고자 노력하고 있습니다. <br>앞으로도 주주 등 모든 이해관계자에게 당사의 지배구조에 관한 구체적인 정보를 제공함으로써 <br class="pc">신뢰를 확보하고 성실한 경영활동을 수행하고자 최선을 다하겠습니다.
			</div>

			<div>
				<button onclick="location='Board_Poricy.jsp'">이사회정책</button>
				<button onclick="location='External_Auditor.jsp'">외부감사인</button>
				<button onclick="location='General_Meeting.jsp'">주주총회</button>
				<button onclick="location='Shareholder_info.jsp'">주주정보</button>
				<button onclick="location='Corp_Governance_Chart.jsp'">기업지배구조헌장</button>
				<button onclick="location='Corp_Governance_Report.jsp'">기업지배구조보고서</button>
				<br>
			</div>
			<h3 class="esg_title">주주정보</h3>
			<h4 class="title_director">주주제안 처리 절차</h4>

			<ul class="esg_box">
				<li>
					<div>
						<i>01</i> <strong>주주제안 접수</strong>
						<ol>
							<li>· 서면 또는 전자문서</li>
							<li>· 총회일 6주 전까지</li>
						</ol>
					</div>
				</li>
				<li>
					<div>
						<i>02</i> <strong>주주제안 내용 검토</strong>
						<ol>
							<li>· 관련법령 또는 정관에 <br>위배되는지 여부 등
							</li>
						</ol>
					</div>
				</li>
				<li>
					<div>
						<i>03</i> <strong>주주총회 상정안건 의결 <br>(이사회)
						</strong>
						<ol>
							<li>· 주주총회시 표결</li>
						</ol>
					</div>
				</li>
			</ul>

			<a target="frm" href="/cm/download.hg?PHYSC_FILE_NM=/static/pdf/SHAREHOLDER_PROPOSAL.pdf&LOGIC_FILE_NM=proposal.pdf" class="esg_btn_down">주주제안 관련 법령</a>

			<ul class="guide_txt">
				<li>※ 당사는 상법 제363조의 2 (주주제안권) 에서 규정하는 주주제안권의 특례규정인 상법 제542조의 6 (소수주주권)의 적용을 받아, <br class="pc">지분율 1% 이상 주주는 단독 또는 타 주주와 합산하여 주주제안권을 행사할 수 있습니다.
				</li>
				<li>※ 주주제안 내용은 관련법령인 상법 시행령 제12조 (주주제안의 거부) 및 당사 정관을 근거로 주주총회 상정 여부를 이사회에서 판단하며, <br class="pc">법령 및 정관 위배시 사유를 들어 주주제안이 거부될 수 있습니다.
				</li>
			</ul>
			<h4 class="title_director">
				주주제안 처리 절차 <br>
				<span class="boss_director">· 총 발행주식 수 97,704,482 / 자기주식 수 10,397,555</span>
			</h4>

			<table class="list_tb">
				<caption class="blind">주주구성</caption>
				<colgroup>
					<col width="33%" />
					<col width="33%" />
					<col width="33%" />
				</colgroup>
				<thead>
					<tr>
						<th scope="col" class="first">구분</th>
						<th scope="col">보통 주식 수</th>
						<th scope="col">보상위원회</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="first">최대주주 및 특수관계인</td>
						<td>37,558,097</td>
						<td>38.44%</td>
					</tr>
					<tr>
						<td class="first">소액주주</td>
						<td>41,258,323</td>
						<td>42.23%</td>
					</tr>
					<tr>
						<td class="first">국민연금</td>
						<td>8,490,507</td>
						<td>8.69%</td>
					</tr>
				</tbody>
			</table>

		</div>
		<!-- //서브 컨텐츠 -->
	</div>
</body>
</html>