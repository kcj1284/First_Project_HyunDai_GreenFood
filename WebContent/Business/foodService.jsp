<!-- 작성자 :    김민찬  -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>현대그린푸드</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=8,IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width; initial-scale=1.0" />
<link href="/css/business.css" type="text/css" rel="stylesheet" />



<link href="/Contents/css/layout.css?dt=20220808" type="text/css" rel="stylesheet" />
<link href="/Contents/css/main.css?dt=20210827" type="text/css" rel="stylesheet" />
<link href="/Contents/css/sub.css?dt=20220812" type="text/css" rel="stylesheet" />
<link href="/Contents/css/font.css?dt=20210729" type="text/css" rel="stylesheet" />
<link href="/Contents/css/jquery-ui.css" type="text/css" rel="stylesheet" />
<link href="/Contents/css/add.css" type="text/css" rel="stylesheet" />

<style>
	div.ui-datepicker{
	 	font-size:12px;	 
	}
	
	img.ui-datepicker-trigger{
	 	border:1px solid #ccc;	 
	}
</style>

<script src="/Contents/js/jquery.min.js" type="text/javascript"></script>
<script src="/Contents/js/json2.js" type="text/javascript"></script>
<script src="/Contents/js/hdgf.string.js"></script>
<script src="/Contents/js/jquery.form.js" type="text/javascript"></script>
<script src="/Contents/js/jquery.browser.js" type="text/javascript"></script>
<script src="/Contents/js/design.js?dt=20210312a" type="text/javascript"></script>
<script src="/Contents/js/jquery.imagesloaded.js"></script>
<script src="/Contents/js/jquery.wookmark.js"></script>
<script src="/Contents/js/jquery.ui.datepicker.js"></script>
<script src="/Contents/js/jquery.ui.datepicker-ko.js"></script>
<script src="/Contents/js/jquery.tmpl.js"></script>
<script src="/Contents/js/hdgf.var.js"></script>
<script src="/Contents/js/hdgf.dialog.js"></script>
<script src="/Contents/js/hdgf.load.js"></script>
<script src="/Contents/js/hdgf.ajax.js"></script>
<script src="/Contents/js/hdgf.valid.js?dt=20210602"></script>
<script src="/Contents/js/hdgf.addr.js"></script>
<script src="/Contents/js/hdgf.date.js"></script>
<script src="/Contents/js/jquery.cookie.js"></script>
<script src="/Contents/js/hdgf.font.js"></script>
<script src="/Contents/js/hdgf.init.js?dt=20210809"></script>
<script src="/Contents/js/hdgf.map.js"></script>
<script src="/Contents/js/hdgf.print.js"></script>
<script src="/Contents/js/jquery.zclip.js"></script>        
<link href="/Contents/css/slick.css" rel="stylesheet" type="text/css">
<script src="/Contents/js/slick.js" type="text/javascript"></script>
<script src="/Contents/js/jquery.counterup.js" type="text/javascript"></script>

</head>

<body>

<%-- 헤더파일만들고 주석해제--%>
<%--    <%@ include file="/admin/header.jsp"%>--%>

	<p class="f_layer_bg"></p>	
	<div class="layout_total">

	<div class="wrap">


<meta name="google-translate-customization" content="c1a169cae9eaf2a0-8c7a1467aab3e1c8-gcf4b0cb06f70569c-19" />



		<div class="container_area" id="contents">

    
<style>

.btn_area > .biz_button{
	display: inline-block;
    width: 80px;
    height: 32px;
   	position:fixed;
    margin-left: 20px;
    background: rgb(10,152,130);
    text-indent: 0;
    color: #fff;
    line-height: 28px;
    text-align: center;
    border-radius:10px;
    right:20px;
    bottom:10px;
    z-index:1;
    text-decoration:none;
    }

</style>

	<div class="container">
    
        <!-- 상단 비쥬얼 -->
		<div class="visual_business meal">
		</div>
		<!-- //상단 비쥬얼 -->
		<div class="btn-float"> <a href="https://hyundai-1st-project.notion.site/hyundai-1st-project/IT-E-1-96f9619abda64388a2d5e57069ae30bd"> 
            사업 문의</a></div>

		<h2 class="title_business">급식사업</h2>

		<p class="description_business">
			“ 우리나라 단체급식의 역사를 만드는 선도기업으로서,<br>건강한 음식을 더 많은 사람들이 편하게 먹을 수 있도록 음식에 신뢰를 더합니다”
		</p>

		<div class="business_info">
			<ul class="clear cont_center business_info_list">
				<li>
					<img src="../img/business/icon_meal1.png" alt="">

					<strong><span class="count_num">2</span>억끼</strong>

					1년 식사 제공 수
				</li>
				<li>
					<img src="../img/business/icon_meal2.png" alt="">

					<strong><span class="count_num">8</span>천개</strong>

					풍부한 레시피
				</li>
				<li>
					<img src="../img/business/icon_meal3.png" alt="">

					<strong><span class="count_num">9700</span>명</strong>

					전문셰프 및 영양사
				</li>
				<li>
					<img src="../img/business/icon_meal4.png" alt="">

					<strong><span class="count_num">570</span>개</strong>

					운영 영업장 수
				</li>
			</ul>
		</div>
		
		<div class="cont_center">
			<div class="clear business_text_area business_left">
				<div class="business_info_text">
					<h3 class="title_business_sub">
						식문화의 역사를 만들어가는 <br>급식사업
					</h3>

					<p class="description_business_sub">
						현대그린푸드는 우리나라 대한민국 산업을 이끌어가는 직원들과 사막 모래바람을 뚫고 일하는 근로자들을 위한 ‘따뜻한 밥 한끼’로 성장한 회사입니다. 하루에 한끼 부터 많게는 세끼까지 현대그린푸드는 엄마의 마음이자 직원들을 격려하는 따뜻한 마음으로 고객들의 곁에 있습니다. 매년 2억끼의 음식을 약 1만명의 직원들이 만들어 내는 곳. 현대그린푸드 급식사업은 앞으로도 자연을 통해 사람을 통해 역사를 만들어 나갈 것입니다.
					</p>
				</div>

				<div class="business_img">
					<img src="../img/business/meal_img1.jpg" alt="">
				</div>
			</div>

			<div class="clear business_text_area business_right">
				<div class="business_info_text">
					<h3 class="title_business_sub">
						소박하고 정갈하게 그리고 <br>정직하게 만듭니다
					</h3>

					<p class="description_business_sub">
						현대그린푸드는 자연의 기운을 머금은 건강한 식재료에 재료 본연의 맛을 
						살리는 정성스러운 손길을 담아 참되고 바른 밥상을 차립니다. 천연 조미료를 사용하고, 매끼 채소를 섭취하도록 구성하며, 직장인들을 위한 당과 지방은 낮게하는 등 고객들이 더 건강하고 맛있게 즐기기 위한 노력을 
						지속하고 있습니다. 
					</p>
				</div>

				<div class="business_img">
					<img src="../img/business/meal_img2.jpg" alt="">
				</div>
			</div>
		</div>

		<ul class="clear meal_list">
			<li class="f">
				<div class="meal_area">
					<h3 class="title_business_sub">
						맛있게 즐기는 정갈한 한 끼, <br>순수밥상
					</h3>

					<p class="description_business_sub">
						한식은 대한민국 사람들이 제일 좋아하는 음식이자 힘입니다. <br>현대그린푸드는 우리나라 사람들이 가장 좋아하고 선호하는 메뉴에 <br>대한 데이터를 분석하여 음식을 제공하고 있습니다. 다양한 연령층을 <br>고려하면서도 매끼 채소를 섭취하도록 구성한 순수밥상은 <br>현대그린푸드가 자신있게 내세우는 메뉴입니다. 
					</p>
				</div>
			</li>
			<li class="s">
				<div class="meal_area">
					<h3 class="title_business_sub">
						전문화된 외식브랜드로 즐기는 <br>글로벌 메뉴 
					</h3>

					<p class="description_business_sub">
						현대그린푸드가 운영하는 급식의 메뉴는 한계가 없습니다. 현대백화점에서 운영하는 외식 브랜드의 레시피는 급식에서도 제공이 가능합니다. 섬세한 플레이팅, 수준 높은 서비스와 글로벌 메뉴는 고객들의 식사 시간을 더욱 즐겁게 합니다. EATALY, Magnolia Bakery, h’_450, h’_Kitchen, Vezzly 등 외식브랜드가 가진 레시피 노하우를 그대로 구내식당에서 즐길 수 있습니다.
					</p>
				</div>
			</li>
			<li class="t">
				<div class="meal_area">
					<h3 class="title_business_sub">
						간편한 식사를 원하는 고객에게 <br>제공하는 델리 메뉴 
					</h3>

					<p class="description_business_sub">
						짧은 점심시간을 효율적으로 활용하기 원하는 고객들에게 제공하는 간편하면서도 든든한 테이크아웃 메뉴를 제공합니다. 패키지로 제공하는 런치박스부터 샌드위치, 버거, 컵밥 등 식당에서 빠르게 드실 수 있게 제공해 드립니다. 
					</p>
				</div>
			</li>
		</ul>

		<div class="cont_center">
			<div class="clear business_text_area business_left">
				<div class="business_info_text">
					<h3 class="title_business_sub">
						900명의 전문 셰프들이 고객의 <br>만족을 위해 노력합니다 
					</h3>

					<p class="description_business_sub">
						현대그린푸드 급식 전문 셰프들 900명이 따뜻한 음식의 이야기를 제공하고 있습니다. 급식에 관련된 최적화된 레시피와 이를 충실하게 잘 구현할 수 있는 20여년 경력 이상을 가진 조리 명장들이 품격 높은 메뉴 제공을 선사하고 있습니다. 또한, 프랑스 요리 전문학교 ‘르 꼬르동 블루’ 출신의 전문 셰프와 국립 이탈리아호텔학교를 이수한 셰프 등 글로벌 메뉴에 대해 지식을 갖춘 전문셰프가 있습니다. 고객이 만족할 때까지 맛에 대한 연구는 오늘도 계속됩니다.    
					</p>
				</div>

				<div class="business_img">
					<img src="../img/business/meal_img3.jpg" alt="">
				</div>
			</div>

			<div class="clear business_text_area business_right">
				<div class="business_info_text">
					<h3 class="title_business_sub">
						고객의 일상 속 라이프스타일을 <br>새롭게 만들어 나갑니다
					</h3>

					<p class="description_business_sub">
						편리한 건강함은 현대그린푸드가 가장 잘 하는 일입니다. 이제 급식사업 뿐만 아니라 고객의 일상을 케어하는 헬스케어 전문 프로그램을 운영하여 전문적인 맞춤형 식단, 체질 측정 등 누구나 편리하고 언제나 건강하게 즐길 수 있는 식문화를 창조하기 위한 미래를 만들어 가고 있습니다.
					</p>
				</div>

				<div class="business_img">
					<img src="../img/business/meal_img4.jpg" alt="">
				</div>
			</div>
		</div>

    </button>	
    
    
    <!-- greating -->
	<div class="business_greating flex flex_center">
		<div>
			<h3 class="title_greating">내 몸이 안녕한 식사, GrEat!ng</h3>

			<p class="description_greating">
				건강식에 대한 수많은 방송과 정보 속에 사람들은 건강에 대해 관심을 갖지만 아이러니하게도 대사질환 유병율은 <br>
				점점 증가하고 있습니다. “어떻게 먹는 것이 건강한가요?”에 대한 대답은 “골고루 적당히”가 정답이지만 <br>
				매 끼 균형잡힌 영양식을 챙겨 먹기는 매우 어려운 일입니다. 누군가 나에게 맛있는 영양균형식을 차려준다면<br> 
				얼마나 좋을까? 그 해답을 찾기 위해 대사증후군 예방을 위한 기능식 ‘그리팅’을 만들었습니다. <br>
				열량, 소금, 당, 지방을 동시에 케어하고 지정농장 친환경 채소와 장인이 만든 살아있는 양념으로 <br>
				만들어 신선함과 깊은 맛을 더 했습니다. 
			</p>
		</div>
	</div>
	<!-- //greating -->


<%--		푸터추가 후 주석해제--%>
<%--		<%@ include file="footer.jsp"%>--%>

</body>
</html>
