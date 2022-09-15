<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<li class="icon_home"><img src="/First_Project_HyunDai_GreenFood/img/ESG_infrasystem/icon_home.jpg" alt="Home" /></li>
			<li class="depth_2"><a href="#" class="m_hierarchy">홍보센터 </a>
				<ul class="hierarchy_depth" style="display: none;">
					<li><a href="#">홍보센터</a></li>
				</ul></li>
			<li class="depth_3"><a href="#" class="t_block_hierarchy">공지소식 </a>
				<ul class="hierarchy_depth">
					<li class="on"><a href="#">공지소식</a></li>
					<li><a href="#">활동소식</a></li>
					<li><a href="#">사보</a></li>
				</ul></li>
		</ul>
		<!-- //하이어라키 -->
		<!-- 서브 컨텐츠 -->
		<div class="sub_contents">
			<!-- 타이틀 , 디스크립션 -->
			<div class="title_description">
				<h2 class="title_sub">공지소식</h2>
				<p class="sub_description">
					현대그린푸드의 새로운 공지소식과 보도자료를 <span class="t_block_w_inline">가장 먼저 알려드립니다.</span>
				</p>
			</div>
			
			<!-- //타이틀 , 디스크립션 -->
			
			<div class="content-body">
				<h4>${annVO.title}</h4>
				<p>
					
				</p>
				<ul>
					<li>
						분류 : 
						<c:if test="${annVO.announ_type == 0}">
							<c:out value="보도자료" />
						</c:if>
						<c:if test="${annVO.announ_type == 1}">
							<c:out value="공지사항" />
						</c:if>
						 | 작성자: ${annVO.u_id}
					</li>
					<li>조회 ${annVO.visiter}| ${annVO.wrdate}</li>
				</ul>
				<hr>
				<div class="board-content">
					<span>${annVO.main_text}</span>
				</div>
			</div>

			<div class="reply-box">
				<h5>전체 댓글</h5>
				<!-- 댓글목록이 나올 자리 -->
				<div id="replyList"></div>

				<!-- 댓글쓰기 -->
				<div id="replyWrite">
						<form method="post" id="replyFrm">
							<input type="hidden" name="annId" value="${annVO.id}" />
							<div id="replyWrite-userid">댓글 작성</div>
							<textarea class="form-control" name="comment" id="comment"></textarea>
							<input type="submit" class="btn btn-default" id="comment-submit" value="댓글등록">
						</form>
				</div>
			</div>
			<div id="edit-box">
				<!-- 로그인 아이디와 글쓴이가 같을 경우 수정 -->
				<c:if test="${annVO.u_id == sessionScope.loginUser.user_id }">
					<a href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=annUpdateForm&id=${annVO.id}">수정</a>
					<a href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=annDelete&id=${annVO.id}">삭제</a>
				</c:if>
				<a href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=notice">목록</a>
<%-- 				<c:out value="${loginUser.user_id }" />
				<c:out value="${sessionScope.loginUser.user_id }" /> --%>
			</div>
			<!-- contents : end -->
		</div>
		<!-- //container -->
		<%@ include file="/Inc/Footer.jspf"%>