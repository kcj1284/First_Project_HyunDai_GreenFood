<!-- 작성자 김찬중 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/Inc/Header.jspf"%>
<link rel="stylesheet" type="text/css" href="/First_Project_HyunDai_GreenFood/css/QnA/QnA_style.css">
<!-- container -->
<div class="container_area" id="contents">
	<!-- Body
    ################# -->
	<!-- contents : str -->
	<div class="sub_layout sub_visual_6">

		<!-- 하이어라키 -->
		<ul class="hierarchy_list">
			<li class="icon_home"><img src="/First_Project_HyunDai_GreenFood/img/ESG_infrasystem/icon_home.jpg" alt="Home" /></li>
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
			<!-- 타이틀 , 디스크립션 -->
			<div class="title_description">
				<h2 class="title_sub">IR 자료실</h2>
				<p class="sub_description">현대그린푸드의 IR자료실입니다.</p>
			</div>

			<!-- //타이틀 , 디스크립션 -->
			<div class="content-body">
				<h4>${IR_VO.title}</h4>
				<p></p>
				<ul>
					<li>작성자: ${IR_VO.user_id}</li>
					<li>조회 ${IR_VO.visiter}| ${IR_VO.wrdate}</li>
				</ul>
				<hr>
				<div class="board-content">
					<span>${IR_VO.main_text}</span>
				</div>
			</div>

			<div class="reply-box">
				<h5>전체 댓글</h5>
				<!-- 댓글목록이 나올 자리 -->
				<div id="replyList"></div>

				<!-- 댓글쓰기 -->
				<div id="replyWrite">
					<form method="post" id="replyFrm">
						<input type="hidden" name="IR_Id" value="${IR_VO.id}" />
						<div id="replyWrite-userid">댓글 작성</div>
						<textarea class="form-control" name="comment" id="comment"></textarea>
						<input type="submit" class="btn btn-default" id="comment-submit" value="댓글등록">
					</form>
				</div>
			</div>
			<div id="edit-box">
				<!-- 로그인 아이디와 글쓴이가 같을 경우 수정 -->
				<c:if test="${IR_VO.user_id == sessionScope.loginUser.user_id }">
					<a href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=IR_UpdateForm&id=${IR_VO.id}">수정</a>
					<a href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=IR_Delete&id=${IR_VO.id}">삭제</a>
				</c:if>
				<a href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=IR_Center_List">목록</a>
				<%-- <c:out value="${loginUser.user_id }" />
				<c:out value="${sessionScope.loginUser.user_id }" /> --%>
			</div>
			<!-- contents : end -->
		</div>
		<!-- //container -->
	</div>
</div>

<%@ include file="/Inc/Footer.jspf"%>