<!-- 
Index
@author 정구현
@since 2022.09.6

<pre>
수정일          수정자                 수정내용
----------  ---------    ---------------------------
2022.09.06     정구현      최초 생성

</pre> 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@include file="/Inc/Header.jspf" %>
	

		<!-- container -->
		<div class="container_area" id="contents">
			
			<div class="container container_main">
				<!-- 영상 영역 -->
				<div class="main_video_area">
					<!-- 영상 1 -->
					<div class="video_text_area video_text_area1">
						<video autoplay muted loop>
							<source src="/First_Project_HyunDai_GreenFood/video/1_cooking_dark.mp4" type="video/mp4" />
						</video>
	
						<div class="main_text">
							<img src="img/main/top_title1.png" alt="사람들의 맛있는 삶을 만들어 갑니다.">
						</div>
					</div>
					<!-- //영상 1 -->
				</div>
				<!-- //영상 영역 -->
	
				<!-- introduction -->
				<div class="cont_center introduction_area">
					<h2><img src="img/main/title_intro.png" alt="Introduction"></h2>
	
					<!-- introduction slide -->
					<div class="intro_slide_area">
						<div class="intro_business">
							<a href="#">
								<img src="img/main/intro_img1.jpg" alt="">
	
								<strong>급식사업</strong>
	
								오피스, 산업체, 병원환자식 등을 제공하며 <br>급식의 트렌드를 이끌어갑니다.
							</a>
						</div>
						<div class="intro_business">
							<a href="#">
								<img src="img/main/intro_img2.jpg" alt="">
	
								<strong>외식사업</strong>
	
								고품격 공간과 다양한 서비스로 외식문화의 <br>새로운 경험과 가치를 창조합니다.
							</a>
						</div>
						<div class="intro_business">
							<a href="#">
								<img src="img/main/intro_img3.jpg" alt="">
	
								<strong>리테일사업</strong>
	
								품질 좋고 믿을 수 있는 상품을 제공하며 <br>쇼핑과 앞선 라이프 스타일을 제안합니다.
							</a>
						</div>
						<div class="intro_business">
							<a href="#">
								<img src="img/main/intro_img4.jpg" alt="">
	
								<strong>식자재유통사업</strong>
	
								효율적인 시스템을 통해 신선하고 믿을 수 있는 <br>식자재를 합리적인 가격에 제공합니다.
							</a>
						</div>
						<div class="intro_business">
							<a href="#">
								<img src="img/main/intro_img5.jpg" alt="">
	
								<strong>해외사업</strong>
	
								현지 맞춤식 레시피와 상품공급 능력을 통해 세계로 <br>나아가고 있습니다. 
							</a>
						</div>
					<div class="intro_business">
							<a href="#">
								<img src="img/main/intro_img6.jpg" alt="">
	
								<strong>건강식사업</strong>
	
								매일 즐길 수 있는 맛있는 건강식을 연구하고, <br>고객에게 맞춤형 건강식단을 배송합니다. 
							</a>
						</div> 
						
					</div>
					<!-- //introduction slide -->
				</div>
				<!-- //introduction -->
	
				<!-- our brand story -->
				<div class="brand_story_area">
					<div class="cont_center">
						<h2><img src="img/main/title_our.png" alt="Our Brand Story"></h2>
	
						<ul class="clear m_brand_list">
							<li>
								<a href="#">
								<strong><img src="img/main/story_icon1.png" alt="건강식"></strong></a>
								내 몸에 안녕한 건강하고 맛있는 건강식 브랜드
							</li>
							<li>
								<a href="#">
								<strong><img src="img/main/story_icon2.png" alt="친환경"></strong></a>
								
								우수산지와 지정농장을 통해 연중 신선한 상품을 공급하는 친환경 브랜드
							</li>
							<li>
								<a href="#">
								<strong><img src="img/main/story_icon3.png" alt="외식"></strong></a>
								
								뛰어난 맛과 분위기로 새로운 경험과 가치를 창조하는 외식 브랜드
							</li>
							<li>
								<a href="#">
								<strong><img src="img/main/story_icon4.png" alt="상품"></strong></a>
								
								독자적인 기술과 엄격한 품질 관리로 만드는 상품 브랜드
							</li>
							<li>
								<a href="#">
								<strong><img src="img/main/story_icon5.png" alt="마켓"></strong></a>
								
								차별화되고 특화된 고객 맞춤형 리테일 브랜드
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- //container -->
		<script>

	$(document).ready( function(){
		/* header 스크롤 이벤트 */
		var wrap = $('.wrap');
		if (wrap.length > 0) {
			var iTop = wrap.offset().top;
			$(window).scroll(function () {
				if ($(this).scrollTop() > iTop) {
					wrap.removeClass("wrap_main");
				} else {
					wrap.addClass("wrap_main");
				}
			}).scroll();
		}
		/* header 스크롤 이벤트 */

		$(".main_video_area").on("init", function(ev, el){
			$("video").each(function () {
				this.play();
			});
		});

		$(".main_video_area").slick({
			dots: false,
			infinite: true,
			slidesToShow: 1,
			slidesToScroll: 1,
			arrows: false,
			autoplay: true,
			autoplaySpeed: 7000,
			fade: true,
			cssEase: 'linear'
		});

		$(".intro_slide_area").slick({
			dots: true,
			infinite: true,
			slidesToShow: 3,
			slidesToScroll: 3,
			responsive:[
				{
					breakpoint: 600,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 2
					}
				}
			]
		});

		$(".brand_site_slide").slick({
			dots: true,
			infinite: true,
			slidesToShow: 3,
			slidesToScroll: 3,
			responsive:[
				{
					breakpoint: 600,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 2
					}
				}
			]
		});
	});

	</script>
	<%@include file="/Inc/Footer.jspf" %> 
