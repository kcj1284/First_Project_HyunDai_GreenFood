<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/Inc/Header.jspf"%>

<link rel="stylesheet" type="text/css" href="/First_Project_HyunDai_GreenFood/css/Company_PR/Company_PR_style.css">
<!-- container -->
<div class="container_area" id="contents">

	<!-- Body
	    ################# -->

	<!-- contents : str -->

	<div class="sub_layout sub_visual_6">
		<div class="company">
			<!-- 하이어라키 -->
			<ul class="hierarchy_list">
				<li class="icon_home"><img src="/First_Project_HyunDai_GreenFood/img/icon/icon_home.png"
					alt="Home" /></li>
				<li class="depth_2"><a href="#" class="m_hierarchy">현대그린푸드
				</a>

					<ul class="hierarchy_depth" style="display: none;">
						<li><a href="#">현대그린푸드</a></li>
					</ul></li>
				<li class="depth_3"><a href="#" class="t_block_hierarchy">현대그린푸드
				</a>

					<ul class="hierarchy_depth">
						<li class="on"><a href="#">회사소개</a></li>
						<li><a href="#">윤리경영</a></li>
						<li><a href="#">지속가능경영</a></li>
						<li><a href="#">사회공헌활동</a></li>
					</ul></li>
			</ul>
			<!-- //하이어라키 -->

			<!-- 타이틀 , 디스크립션 -->
			<div class="title_description">
				<h2 class="title_sub">회사소개</h2>

				<p class="sub_description">건강한 자연과 우리의 정직한 마음이 맛있는 삶을 만들어 갑니다.</p>
			</div>
			<!-- //타이틀 , 디스크립션 -->
		</div>

		<!-- 서브 컨텐츠 -->
		<div class="contents">
			<!-- 탭 -->
			<ul class="tab_list">
				<li class="on"><a href="#">회사소개</a></li>
				<li><a href="/po/ci/his/CIHIS01L.hgc">연혁</a></li>
				<li><a href="/po/ci/drt/CIDRT01V.hgc">오시는 길</a></li>
			</ul>
			<!-- //탭 -->

			<p class="sub_description new mo">
				건강한 자연과 우리의 정직한 <br>마음이 맛있는 삶을 만들어 갑니다.
			</p>

			<div class="info_company">

				<div class="cont cont1_1">
					<h3 class="title_company">
						고객을 위한 마음 위에 <br class="mo">신뢰와 품격을 더합니다
					</h3>

					<p class="text_company">
						현대그린푸드는 1968년 법인 설립 이후 50여년 동안 급식, 식자재유통(B2B), 리테일, 외식(B2C)등 <br
							class="pc">식품과 관련된 다양한 사업을 운영하며 식품 산업에서 많은 경험과 인프라를 쌓아왔습니다.
						<br> <br class="mo">앞으로도 기존 사업의 경쟁력을 강화하고 자연과 건강을 지킨다는
						비전 아래 <br class="pc">그 가치를 올바르게 전달할 수 있는 채널과 서비스를 개발해 나갈
						것입니다.
					</p>
				</div>

				<div class="cont cont1_2">
					<h3 class="title_company">Vision 2030</h3>

					<p class="text_company">「 사람들의 식생활에 긍정적인 영향을 미치는 회사 」</p>

					<div class="list_company">
						<div class="img">
							<div class="img_slide">
								<img src="/First_Project_HyunDai_GreenFood/img/Company_PR/img_company_slide1.jpg">
							</div>
							<div class="img_slide">
								<img src="/First_Project_HyunDai_GreenFood/img/Company_PR/img_company_slide2.jpg">
							</div>
							<div class="img_slide">
								<img src="/First_Project_HyunDai_GreenFood/img/Company_PR/img_company_slide3.jpg">
							</div>
							<div class="img_slide">
								<img src="/First_Project_HyunDai_GreenFood/img/Company_PR/img_company_slide4.jpg">
							</div>
						</div>

						<div class="txt">
							<h4>
								<img src="/First_Project_HyunDai_GreenFood/img/Company_PR/img_company_txt1.jpg"
									alt="Vision">
							</h4>

							<dl>
								<dt>정직한 마음</dt>
								<dd>우리는 약속을 지키고 신뢰를 소중히 여깁니다.</dd>

								<dt>지속 가능한 자연</dt>
								<dd>우리는 건강한 천연 식재료를 조달하고 사용합니다.</dd>

								<dt>건강한 삶</dt>
								<dd>우리는 고객의 건강한 삶을 위한 최상의 솔루션을 제공합니다.</dd>
							</dl>
						</div>
					</div>
				</div>

				<div class="cont cont1_3">
					<p>
						<img src="/First_Project_HyunDai_GreenFood/img/Company_PR/img_company_txt2.jpg" alt="Vision">
					</p>
					<h3 class="title_company">
						자연을 지키는 기업 No.1 <span class="pc">｜</span> <br class="mo">건강을
						지키는 기업 No.1
					</h3>

					<p class="text_company">
						우리는 친환경 상품(식재료/음식)을 공급하여 고객의 건강하고 맛있는 삶을 추구합니다. <br class="pc">우리는
						좋은 상품의 지속 거래를 통해 국내 농수축산업의 지속 성장에 기여합니다.
					</p>
				</div>

				<div class="cont cont1_3">
					<a
						href="/cm/download.hg?LOGIC_FILE_NM=HYUNDAI_GREENFOOD_BROCHURE.pdf&PHYSC_FILE_NM=/static/pdf/BROCHURE.pdf"
						class="btn_action comm" target="frm">회사브로셔 다운로드</a>
				</div>
			</div>
		</div>
		<!-- //서브 컨텐츠 -->

	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$(".list_company .img").slick({
				dots : false,
				infinite : true,
				fade : true,
				slidesToShow : 1,
				slidesToScroll : 1,
				arrows : false,
				autoplay : true,
				autoplaySpeed : 1000,
				adaptiveHeight : true
			});
		});
	</script>

	<!-- contents : end -->

</div>
<!-- //container -->
<%@include file="/Inc/Footer.jspf"%>
