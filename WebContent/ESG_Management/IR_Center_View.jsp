<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/Inc/Header.jspf"%>
<link rel="stylesheet" type="text/css"href="/First_Project_HyunDai_GreenFood/css/QnA/QnA_style.css">

<!-- container -->
<div class="container_area" id="contents">
	<!-- Body
    ################# -->
	<!-- contents : str -->
	<div class="sub_layout sub_visual_6">

		<!-- 하이어라키 -->
		<ul class="hierarchy_list">
			<li class="icon_home"><img
				src="/First_Project_HyunDai_GreenFood/img/icon/icon_home.png"
				alt="Home" /></li>
			<li class="depth_2"><a href="#" class="m_hierarchy">투자정보 </a>

				<ul class="hierarchy_depth" style="display: none;">
					<li><a href="#">투자정보</a></li>
				</ul></li>
			<li class="depth_3"><a href="#" class="t_block_hierarchy">IR자료실</a>

				<ul class="hierarchy_depth">
					<li><a href="#">자주 묻는 질문</a></li>
					<li><a href="#">거래·상담</a></li>
					<li class="on"><a href="#">IR자료실</a></li>
				</ul></li>
		</ul>
		<!-- //하이어라키 -->
		<!-- 서브 컨텐츠 -->
		<div class="sub_contents">
			<!-- 타이틀 , 디스크립션 -->
			<div class="title_description">
				<h2 class="title_sub">IR자료실</h2>

				<p class="sub_description">현대그린푸드의 IR자료실입니다.</p>
			</div>
			
			<div class="content-body">
			
				<h4>${qnaVO.title}</h4>
				<ul>
					<li> ${qnaVO.user_id} | ${qnaVO.wrdate}</li>
					<li>조회 10</li>
				</ul>
				<hr>
				<div class="board-content">
					<span>${qnaVO.main_text}</span>
				</div>
			</div>

			<div class="reply-box">
				<h5>전체 댓글</h5>
				<!-- 댓글목록이 나올 자리 -->
				<div id="replyList"></div>

				<!-- 댓글쓰기 -->
				<div id="replyWrite">
						<form method="post" id="replyFrm">
							<input type="hidden" name="no" value="" />
							<div id="replyWrite-userid">댓글 작성</div>
							<textarea class="form-control" name="comment" id="comment"></textarea>
							<input type="submit" class="btn btn-default" id="comment-submit" value="댓글등록">
						</form>
				</div>
			</div>
			<div id="edit-box">
				<!-- 로그인 아이디와 글쓴이가 같을 경우 수정 -->
				<c:if test="${logId == vo.userid }">
					<a href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaUpdate">수정</a>
					<a href="javascript:delCheck()">삭제</a>
				</c:if>
			</div>
			<!-- contents : end -->
		</div>
		<!-- //container -->
		<%@ include file="/Inc/Footer.jspf"%>