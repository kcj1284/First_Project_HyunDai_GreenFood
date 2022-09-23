<!-- 작성자 김찬중 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/Inc/Header.jspf"%>
<link rel="stylesheet" type="text/css"
	href="/First_Project_HyunDai_GreenFood/css/QnA/QnA_style.css">
<!-- container -->
<div class="container_area" id="contents">
	<!-- Body
    ################# -->
	<!-- contents : str -->
	<div class="sub_layout sub_visual_6">

		<!-- 하이어라키 -->
		<ul class="hierarchy_list">
			<li class="icon_home"><img
				src="/First_Project_HyunDai_GreenFood/img/ESG_infrasystem/icon_home.jpg"
				alt="Home" /></li>
			<li class="depth_2"><a href="#" class="m_hierarchy">투자정보</a>
				<ul class="hierarchy_depth" style="display: none;">
					<li><a href="#">투자정보</a></li>
				</ul></li>
			<li class="depth_3"><a href="#" class="t_block_hierarchy">IR자료실</a>
				<ul class="hierarchy_depth">
					<li class="on"><a href="#">IR자료실</a></li>
					<li><a href="#">활동소식</a></li>
				</ul></li>
		</ul>

		<!-- //하이어라키 -->
		<!-- 서브 컨텐츠 -->
		<div class="sub_contents">
			<!-- //타이틀 , 디스크립션 -->
			<div class="title_description">
				<h2 class="title_sub">IR 자료실</h2>
				<p class="sub_description">현대그린푸드의 IR자료실입니다.</p>
			</div>
			<div class="content-body">
				<div class="view_top_area">
					<h3 class="view_title">
						<!-- 제목 -->
						${IR_VO.title}
					</h3>

					<ul class="date_hits_list">
						<li>작성자: ${IR_VO.user_id}</li>
						<!-- 작성일-->
						<li>${IR_VO.wrdate}</li>
						<!-- 조회수 부분 -->
						<li>${IR_VO.visiter}</li>
					</ul>
				</div>
				<!-- 글 내용 -->
				<div class="view_text_area">${IR_VO.main_text}</div>

			</div>

			<div id="edit-box">
				<!-- 로그인 아이디가 관리자일때 수정, 삭제 활성화 -->
				<div class="tool">
					<c:if test="${IR_VO.user_id == sessionScope.loginUser.user_id }">
						<input type='button' class='btn-view btn-edit' id='updateBtn'
							onclick='updatePost()' value='수정' />
						<input type='button' class='btn-view btn-delete' id='deleteBtn'
							onclick='deletePost()' value='삭제' />
					</c:if>
				</div>
				<input type='button' class='btn-view btn-menu' id='menuBtn'
					onclick='menu()' value='목록' />
			</div>
			<!-- contents : end -->
		</div>
		<!-- //container -->
	</div>
</div>
<script>
	function updatePost() {
		location.href = "/First_Project_HyunDai_GreenFood/HdgfServlet?command=IR_UpdateForm&id=${IR_VO.id}"
	}

	function deletePost() {
		location.href = "/First_Project_HyunDai_GreenFood/HdgfServlet?command=IR_Delete&id=${IR_VO.id}"
	}

	function menu() {
		location.href = "/First_Project_HyunDai_GreenFood/HdgfServlet?command=IR_Center_List"
	}
</script>
<%@ include file="/Inc/Footer.jspf"%>