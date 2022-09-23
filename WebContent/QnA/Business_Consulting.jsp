<!-- 
Business_Consulting
@author 정구현
@since 2022.09.8

<pre>
수정일          수정자                 수정내용
----------  ---------    ---------------------------
2022.09.08     정구현      최초 생성

</pre> 
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/Inc/Header.jspf"%>
<link rel="stylesheet" type="text/css"
	href="/First_Project_HyunDai_GreenFood/css/QnA/QnA_style.css">

<!-- container -->
<div class="container_area" id="contents">
	<!-- contents -->
	<div class="sub_layout sub_visual_6">
		<!-- 하이어라키 -->
		<ul class="hierarchy_list">
			<li class="icon_home"><img
				src="/First_Project_HyunDai_GreenFood/img/icon/icon_home.png" alt="Home" /></li>
			<li class="depth_2"><a href="#" class="m_hierarchy">거래·상담 </a>

				<ul class="hierarchy_depth" style="display: none;">
					<li><a href="#">고객센터</a></li>
				</ul></li>
			<li class="depth_3"><a href="#" class="t_block_hierarchy">거래·상담
			</a>

			<ul class="hierarchy_depth">
				<li><a href="#">자주 묻는 질문</a></li>
				<li><a href="#">거래·상담</a></li>
				<li class="on"><a href="#">고객의 소리</a></li>
			</ul></li>
		</ul>
		<!-- //하이어라키 -->

		<!-- sub_contents -->
		<div class="sub_contents">
			<!-- 타이틀 , 디스크립션 -->
			<div class="title_description">
				<h2 class="title_sub">거래·상담</h2>
			</div>
			<!-- //타이틀 , 디스크립션 -->

			<div class="social_children">
				<img src="/First_Project_HyunDai_GreenFood/img/QnA/BizCounsel.jpg">
			</div>
		</div>
		<!-- //sub_contents -->
	</div>
	<!-- contents : end -->
</div>
<!-- //container -->

<%@ include file="/Inc/Footer.jspf"%>