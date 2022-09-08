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
					<li class="icon_home"><img src="/First_Project_HyunDai_GreenFood/img/icon/icon_home.png">
					<li class="depth_2">
						<a href="#" class="m_hierarchy">ESG 경영 </a>
						<ul class="hierarchy_depth" style="display: none;">
							<li><a href="#">경영목표</a></li>
						</ul>
					</li>
					<li class="depth_3"><a href="#" class="t_block_hierarchy">경영목표</a>
						<ul class="hierarchy_depth">
							<li class="on"><a href="#">경영목표</a></li>
							<li><a href="#">환경경영(E)</a></li>
							<li><a href="#">사회공헌(S)</a></li>
							<li><a href="#">지배구조(G)</a></li>
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
					<li class="on"><a href="Managerial_Objective.jsp">경영목표</a></li>
					<li><a href="NetZero_2030.jsp">환경경영(E)</a></li>
					<li><a href="CRS.jsp">사회공헌(S)</a></li>
					<li><a href="Board_Policy.jsp">지배구조(G)</a></li>
					<li><a href="Safety_Health.jsp">안전보건</a></li>
					<li><a href="Win_Management.jsp">상생경영</a></li>
					<li><a href="Group_Ethical_Management.jsp">윤리경영</a></li>

				</ul>
			</div>

			<div class="sub_contents">
				<section class="esg_section cont1_1">
					<h3 class="esg_title">ESG 경영목표</h3>
					<div class="esg_text">
						현대그린푸드는 미래세대에 ‘희망’을 제시하고
						<br class="pc">‘신뢰’받는 기업으로 성장하는 선순환 체계 구축을 목표로 합니다.
					</div>

					<div class="esg_img"><img src="../img/ESG/mo_01.jpg" alt=""></div>
				</section>

				<section class="esg_section cont1_2">
					<h3 class="esg_title">ESG 추진방향</h3>

					<div class="esg_box">
						<ul>
							<li>
								<i>E</i>
								<div>
									<strong>미래 세대에 희망적 환경조성</strong>
									<p>
										지속가능한 생태환경 조성을 위한
										<br class="pc">경영전반의 친환경 가치 창출
										<br class="pc">(친환경 상품/서비스 개발)
									</p>
								</div>
							</li>
							<li>
								<i>S</i>
								<div>
									<strong>미래의 삶에 희망을 더하는 회사</strong>
									<p>
										단순 기부가 아닌
										<br class="pc">사회문제 해결에 기여하는
										<br class="pc">사업 개발, 추진
									</p>
								</div>
							</li>
							<li>
								<i>G</i>
								<div>
									<strong>투명하고 신뢰받는 지배구조 구축</strong>
									<p>
										주주 친화 정책 추진
										<br class="pc">및 투명한 정보 공개를 통한
										<br class="pc">신뢰도 제고
									</p>
								</div>
							</li>
						</ul>
					</div>
				</section>
			</div>
		</div>

	</div>
	<%@ include file="/Inc/Footer.jspf"%>
</body>

</html>
