<!-- 
QnA_AnswerUpdate
@author 정구현
@since 2022.09.16

<pre>
수정일          수정자                 수정내용
----------  ---------    ---------------------------
2022.09.16     정구현      최초 생성
2022.09.16     정구현      답변 수정 폼 레이아웃 수정
</pre> 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/Inc/Header.jspf"%>
<link rel="stylesheet" type="text/css" href="/First_Project_HyunDai_GreenFood/css/QnA/QnA_style.css">

<!-- container -->
<div class="container_area" id="contents">
	<!-- contents-->
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
			<!-- //타이틀 , 디스크립션 -->	
			
			<!-- content-body -->
			<div class="content-body">
				
				<!-- view_top_area -->
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
						<li></li>
					</ul>
				</div>
				<!-- //view_top_area -->
				
				<div class="view_text_area">
					${qnaVO.main_text}
				</div>

			</div>
			<!-- //content-body -->
			
			<!-- reply-box -->
			<div class="reply-box">
				<input type="hidden" id="answerContent" name="answerContent" value="${qnaVO.answer}"/>
	
				<h5>전체 답변</h5>
				<!-- 답변목록이 나올 자리 -->
				<div id="replyList">
					<div id="replyMain">
						<!-- 작성자 -->
						<div id="replyUser">
							관리자
						</div>
						
						<!-- 내용 -->
						<div id="replyContent">
						</div>
						
						<!-- 작성, 수정 부분 -->
						<div id="replyBottom">
						</div>		
					</div>
				</div>
				<!-- //답변목록이 나올 자리 -->


				<!-- 답변 -->
				<!-- 로그인 아이디가 관리자일때 답변 작성 활성화 -->
				<c:if test="${sessionScope.loginUser.administrator == 1}">
					<div id="replyWrite">
						<form method="post" action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaAnswerUpdate&QNA_id=${qnaVO.QNA_id}" id="replyFrm">
							<input type="hidden" name="QNA_id" value="${qnaVO.QNA_id}" />
							<div id="replyWrite-userid">답변 수정</div>
							<textarea class="form-control" name="answer" id="comment">${qnaVO.answer}</textarea>
							<input type="submit" class="btn btn-default" id="comment-submit" value="수정">
						</form>
					</div>
				</c:if>
				<!-- //답변 -->
			</div>
			<!-- //reply-box -->
			
			<!-- edit-box -->
			<div id="edit-box">
				<div class="tool">
					<c:if test="${qnaVO.user_id == sessionScope.loginUser.user_id }">
						<input type='button' class='btn-view btn-edit' id='updateBtn' onclick='updatePost()' value='수정'/>
						<input type='button' class='btn-view btn-delete' id='deleteBtn' onclick='deletePost()' value='삭제'/>
					</c:if>
				</div>
				<input type='button' class='btn-view btn-menu' id='menuBtn' onclick='menu()' value='목록'/>
			</div>                                         
			<!-- //edit-box -->
		</div>
		<!-- //서브 컨텐츠 -->
<script>
	var answer = $('#answerContent').val();
	var replyContent = document.getElementById("replyContent");
	var replyBottom = document.getElementById("replyBottom");
	
	// 답변 공백여부 체크
	if(answer == 'waiting for answer' || answer == ""){
		replyContent.innerHTML = "<span>답변을 기다리고 있습니다.</span>";
		
	} else{ //관리자 여부 확인 후 수정, 작성 노출
		replyBottom.innerHTML = "<c:if test='${sessionScope.loginUser.administrator == 1}'>";
		replyBottom.innerHTML += "<input type='button' class='btn-view btn-delete' id='deleteAnswer' onclick='deleteAnswer()' value='삭제'/>";
		replyBottom.innerHTML += "</c:if>";
		replyContent.innerHTML = "<span>"+answer+"</span>";
	}
	
	
	//버튼 url 함수
	function updateAnswer(){ //답변 수정
		location.href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaAnswerUpdateForm&QNA_id=${qnaVO.QNA_id}"
	}
	
	function deleteAnswer(){ //답변 삭제
		location.href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaAnswerDelete&QNA_id=${qnaVO.QNA_id}"
	}
	
	function updatePost(){ //게시글 수정
		location.href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaUpdateForm&QNA_id=${qnaVO.QNA_id}"
	}
	
	function deletePost(){ //게시글 삭제
		location.href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaDelete&QNA_id=${qnaVO.QNA_id}"
	}
	
	function menu(){ //목록
		location.href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaList"
	}
</script>
<%@ include file="/Inc/Footer.jspf"%>