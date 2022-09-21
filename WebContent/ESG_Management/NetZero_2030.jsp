<!--작성자 김찬중-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NetZero_2030</title>
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
					<li class="depth_2"><a href="#" class="m_hierarchy">ESG 경영</a>
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

			<div class="contents">
				<ul class="tab_list">
					<li class="on"><a href="#;">넷제로2030</a></li>
					<li><a href="Eco_Management.jsp">친환경경영</a></li>
				</ul>

				<div class="sus_area cont2_1_1">
					<section class="cont4_1">
						<h3 class="sus_title">탄소중립2030 목표</h3>
						<p class="sus_text">
							현대그린푸드는 건강과 지속가능이라는 비전 아래 에너지 사용 뿐만 아니라 <br class="pc">사업을
							영위하는 Value Chain 전 영역에서 탄소배출을 줄일 수 있는 부분을 측정하여 <br class="pc">
							<span>2030년까지 온실가스 20%를 감축하고자 합니다.</span>
						</p>

						<div class="sus_image">
							<img src="../img/ESG/nz_01.jpg" class="pc" alt="" />
						</div>
					</section>

					<section class="cont4_2">
						<h3 class="sus_title">주요 추진 전략</h3>
						<p class="sus_text">
							환경에 부정적인 영향을 최소화하고자 <br class="pc">
							<span>폐기물, 에너지, 제품, 일회용품 영역별로 2030년 세부 목표를 수립하였습니다.</span> <br
								class="pc">향후 상품소싱에서 제품의 판매와 폐기에 이르기까지 탄소배출을 최소화하기 위한 노력을 할
							것입니다.
						</p>

						<div class="sus_image">
							<img src="../img/ESG/nz_02.jpg" class="pc" alt="" />
						</div>
					</section>

					<section class="cont4_4">
						<div class="box1">
							<h3 class="sus_title">
								<span class="">01</span>지속가능상품 개발
							</h3>
							<div class="sus_image">
								<div class="text">
									탄소배출량이 높은 육류를 대체하고자 식물성 단백질로 <br class="pc">구성한 '저탄소메뉴'를
									지속적으로 개발하고, <br class="pc">농·수·축산물 등 식재료 및 상품을 소싱하는 <br
										class="pc">전 영역에서 지속가능한 상품을 지속적으로 발굴하겠습니다.
								</div>
								<ul>
									<li><img src="../img/ESG/nz_03.jpg" alt="" /></li>
									<li><img src="../img/ESG/nz_04.jpg" alt="" /></li>
								</ul>
							</div>
						</div>

						<div class="box2">
							<h3 class="sus_title">
								<span class="">02</span>폐기물 발생 절감
							</h3>
							<div class="sus_image">
								<div class="text">
									온실가스 배출의 주범인 음식물쓰레기를 줄이기 위해 급식 사업장을 중심으로 <br class="pc">친환경
									음식물처리기 도입을 확대하고, 잔반제로 캠페인을 지속하여 <br class="pc">음식물 쓰레기
									발생량을 줄이겠습니다.
								</div>
								<ul>
									<li><img src="../img/ESG/nz_05.jpg" alt="" /></li>
									<li><img src="../img/ESG/nz_06.jpg" alt="" /></li>
									<li class="pc"><img src="../img/ESG/nz_07.jpg" alt="" /></li>
								</ul>
							</div>
						</div>

						<div class="box3">
							<h3 class="sus_title">
								<span class="">03</span>에너지 사용량 절감
							</h3>
							<div class="sus_image">
								<div class="text">
									2030년까지 본사, 스마트푸드센터, 물류센터 등에 <br class="pc">재생에너지 사용을
									확대하고, 영업 및 물류 차량을 단계별로 <br class="pc">전기 및 수소차량으로 전환하겠습니다.
									<br>
									<p class="pc">
										또한, 절전·절수 등 에너지 절감 캠페인을 시행하여 <br class="pc">불필요한 에너지 사용을
										줄이겠습니다.
									</p>
								</div>
								<ul>
									<li><img src="../img/ESG/nz_08.jpg" alt="" /></li>
									<li><img src="../img/ESG/nz_09.jpg" alt="" /></li>
								</ul>

							</div>
						</div>

						<div class="box4">
							<h3 class="sus_title">
								<span class="">04</span>일회용품 사용 축소
							</h3>
							<div class="sus_image">
								<div class="text">
									자연으로 버려지는 폐기물을 최소화하기 위해 사업장에서 발생하는 <br class="pc">일회용품의
									사용을 최소화하고, 친환경 일회용품 사용을 확대하겠습니다.
									<p class="pc">
										또한, 포장재 재질구조 개선을 통하여 재활용율 향상에 힘쓰고, <br class="pc">주요 패키징
										제품들에 대한 수거 · 재활용 프로세스를 구축하여 <br class="pc">자체 자원 순환 체계를
										마련하겠습니다.
									</p>
								</div>
								<ul>
									<li class="pc"><img src="../img/ESG/nz_10.jpg" alt="" /></li>
									<li><img src="../img/ESG/nz_11.jpg" alt="" /></li>
								</ul>

							</div>

							<div class="sus_text">
								<strong>주요 포장재 재질구조 개선 사례</strong> <span>·주요 매장 PLA컵 사용 :
									35 ton/年</span> <span>·단일재질 보냉백 도입 : 7 ton/年</span>
							</div>
						</div>
					</section>

					<section class="cont4_5">
						<h3 class="sus_title">인증 현황</h3>

						<div class="sus_slide_area normal_slide">
							<div class="sus_slide">
								<div class="img">
									<img src="../img/ESG/nz_12.jpg">
								</div>
								<div class="txt">
									<div class="box">
										<strong>ISO14001 환경경영시스템 인증 획득</strong>
										<p>
											ISO14001은 국제표준화기구(ISO) 기술위원회(TC 207)에서 제정한 <br class="pc">환경경영체제에
											관한 인증으로 현대그린푸드는 환경 보호에 도움이 되는 <br class="pc">안전 먹거리 개발과
											일회용 포장재 사용 축소 등 환경 경영에 대한 <br class="pc">공감대 형성을 인정받아 해당
											인증을 획득하였습니다.
										</p>
									</div>
								</div>
							</div>

							<div class="sus_slide">
								<div class="img">
									<img src="../img/ESG/nz_13.jpg">
								</div>
								<div class="txt">
									<div class="box">
										<strong>K-RE100 가입</strong>
										<p>
											K-RE100은 Korean Renewable Electricity 100%의 약자로 <br
												class="pc">국내에 RE100제도를 도입하여 기업의 자발적인 재생에너지 사용 촉진 및 <br
												class="pc">국내 재생에너지 확대에 기여하기 위해 21년부터 시행된 제도입니다. <br
												class="pc">현대그린푸드는 태양광 패널 설치 등 다양한 이행 수단을 통해 <br
												class="pc">재생에너지 사용을 확대하고자 K-RE100사업에 참여하였습니다.

										</p>
									</div>
								</div>
							</div>

							<div class="sus_slide">
								<div class="img">
									<img src="../img/ESG/nz_14.jpg">
								</div>
								<div class="txt">
									<div class="box">
										<strong>GRP인증 AAA등급 획득</strong>
										<p>
											<span>GRP란?</span> <br class="pc">GRP는 UN SDGs 협회가 발표하는
											글로벌 환경 가이드라인으로 <br class="pc">현대그린푸드는 그간 추진한 다양한 친환경 노력을
											인정받아 <br class="pc">국내 식품업계 최초로 2020년 GRP인증에서 최우수 등급에
											해당하는 <br class="pc">AAA등급을 획득하였습니다.
										</p>
									</div>
								</div>
							</div>

							<div class="sus_slide">
								<div class="img">
									<img src="../img/ESG/nz_15.jpg">
								</div>
								<div class="txt">
									<div class="box">
										<strong>산림경영인증시스템 FSC인증 패키지 사용</strong>
										<p>
											케어식단 브랜드 ‘그리팅(Greating)’에는 친환경 소재를 적용한 <br class="pc">‘에코
											패키지’가 사용되고 있습니다. 식품에 직접 닿지 않는 모든 포장재는 <br class="pc">플라스틱
											대신 종이를 사용하였고, 아이스팩은 보냉재를 물로만 대체한 <br class="pc">종이
											아이스팩을, 박스는 국재산림관리협의회의 산림경영인증시스템(FSC) <br class="pc">인증을
											받은 친환경 박스를 사용하고 있습니다.
										</p>
									</div>
								</div>
							</div>

						</div>
					</section>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$(document).ready(function () {
						$(".sus_slide_area").each(function () {
							$(this).slick({
								dots: true,
								infinite: true,
								slidesToShow: 1,
								slidesToScroll: 1,
								arrows: true,
								autoplay: false,
								autoplaySpeed: 7000,
								adaptiveHeight: true
							});
						});
		</script>

	</div>
	<%@ include file="/Inc/Footer.jspf"%>
</body>

</html>