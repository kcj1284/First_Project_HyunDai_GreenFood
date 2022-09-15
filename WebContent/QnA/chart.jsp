<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/Inc/Header.jspf"%>
<link rel="stylesheet" type="text/css" href="/First_Project_HyunDai_GreenFood/css/QnA/QnA_style.css">

<!-- container -->
<div class="container_area" id="contents">

	<!-- Body ################# -->
	<!-- contents : str -->
	<div class="sub_layout sub_visual_6">

		<!-- 하이어라키 -->
		<ul class="hierarchy_list">
			<li class="icon_home"><img src="/First_Project_HyunDai_GreenFood/img/icon/icon_home.png" alt="Home" /></li>
			<li class="depth_2"><a href="#" class="m_hierarchy">고객센터 </a>

				<ul class="hierarchy_depth" style="display: none;">
					<li><a href="#">고객센터</a></li>
				</ul></li>
			<li class="depth_3"><a href="#" class="t_block_hierarchy">고객센터 </a>

				<ul class="hierarchy_depth">
					<li><a href="#">자주 묻는 질문</a></li>
					<li><a href="#">고객센터</a></li>
					<li class="on"><a href="#">통계 자료</a></li>
				</ul></li>
		</ul>
		<!-- //하이어라키 -->

		<div class="sub_contents">
			<!-- 타이틀 , 디스크립션 -->
			<div class="title_description">
				<h2 class="title_sub">통계 자료</h2>
			</div>
			<!-- //타이틀 , 디스크립션 -->
			<div style="width: 900px; height: 900px;">
				<!--차트가 그려질 부분-->
				<canvas id="myChart"></canvas>
			</div>
		</div>
	</div>
	<!-- contents : end -->
</div>
<!-- //container -->

<script type="text/javascript">
	var context = document.getElementById('myChart').getContext('2d');
	var myChart = new Chart(context,
			{
				type : 'var', // 차트의 형태 최종은 pie로 변경
				data : { // 차트에 들어갈 데이터
					labels : [
					//x 축
					'1', '2', '3', '4', '5', '6', '7' ],
					datasets : [ { //데이터
						label : 'test1', //차트 제목
						fill : false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
						data : [ 21, 19, 25, 20, 23, 26, 25 //x축 label에 대응되는 데이터 값
						],
						backgroundColor : [
						//색상
						'rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)',
								'rgba(255, 206, 86, 0.2)',
								'rgba(75, 192, 192, 0.2)',
								'rgba(153, 102, 255, 0.2)',
								'rgba(255, 159, 64, 0.2)' ],
						borderColor : [
						//경계선 색상
						'rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)',
								'rgba(255, 206, 86, 1)',
								'rgba(75, 192, 192, 1)',
								'rgba(153, 102, 255, 1)',
								'rgba(255, 159, 64, 1)' ],
						borderWidth : 1
					//경계선 굵기
					} ]
				},
				options : {
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					}
				}
			});
</script>
</body>
</html>
<%@ include file="/Inc/Footer.jspf"%>