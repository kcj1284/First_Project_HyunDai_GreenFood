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
			<li class="icon_home"><img src="/First_Project_HyunDai_GreenFood/img/icon/icon_home.png" alt="Home" /></li>
			<li class="depth_2"><a href="#" class="m_hierarchy">고객센터 </a>

				<ul class="hierarchy_depth" style="display: none;">
					<li><a href="#">고객센터</a></li>
				</ul></li>
			<li class="depth_3"><a href="#" class="t_block_hierarchy">고객의 소리 </a>

				<ul class="hierarchy_depth">
					<li><a href="#">자주 묻는 질문</a></li>
					<li><a href="#">거래·상담</a></li>
					<li class="on"><a href="#">고객의 소리</a></li>
				</ul></li>
		</ul>
		<!-- //하이어라키 -->
		<!-- 서브 컨텐츠 -->
		<div class="sub_contents">
			<!-- 타이틀 , 디스크립션 -->
			<div class="title_description">
				<h2 class="title_sub">고객의 소리</h2>

				<p class="sub_description">고객의 작은 목소리에도 귀 기울이겠습니다.</p>
			</div>

			<div class="content-body">
				<div class="view_top_area">
					<h3 class="view_title">
						<span class="catagory"> [ <c:if
								test="${qnaVO.QNA_type == 0}">
								<c:out value="칭찬" />
							</c:if> <c:if test="${qnaVO.QNA_type == 1}">
								<c:out value="불만" />
							</c:if> <c:if test="${qnaVO.QNA_type == 2}">
								<c:out value="제안" />
							</c:if> <c:if test="${qnaVO.QNA_type == 3}">
								<c:out value="기타" />
							</c:if> ]
						</span> ${qnaVO.title}
					</h3>

					<ul class="date_hits_list">
						<li>${qnaVO.wrdate}</li>
						<li>44</li>
					</ul>
				</div>

				<div class="view_text_area">
					${qnaVO.main_text}
				</div>

			</div>

			<div class="reply-box">
				<h5>전체 답변</h5>
				<!-- 댓글목록이 나올 자리 -->
				<div id="replyList">${qnaVO.answer}</div>

				<!-- 댓글쓰기 -->
				<div id="replyWrite">
					<form method="post" action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaAnswer" id="replyFrm">
						<input type="hidden" name="QNA_id" value="${qnaVO.QNA_id}" />
						<div id="replyWrite-userid">답변 작성</div>
						<textarea class="form-control" name="answer" id="comment"></textarea>
						<input type="submit" class="btn btn-default" id="comment-submit" value="답변등록">
					</form>
				</div>
			</div>
			<div id="edit-box">
				<!-- 로그인 아이디와 글쓴이가 같을 경우 수정 -->
				<c:if test="${qnaVO.user_id == sessionScope.loginUser.user_id }">
					<a href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaUpdateForm&QNA_id=${qnaVO.QNA_id}">수정</a>
					<a href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaDelete&QNA_id=${qnaVO.QNA_id}">삭제</a>
				</c:if>
				<a href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaList">목록</a>
			</div>                                         
			<!-- contents : end -->
		</div>
		<!-- //container -->
		<%@ include file="/Inc/Footer.jspf"%>