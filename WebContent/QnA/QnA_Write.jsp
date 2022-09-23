<!-- 
QnA_Write
@author 정구현
@since 2022.09.13

<pre>
수정일          수정자                 수정내용
----------  ---------    ---------------------------
2022.09.13     정구현      최초 생성
2022.09.14     정구현      Qna 게시글 작성 화면 연결
2022.09.15     정구현      카테고리 추가
2022.09.17     정구현      레이아웃 수정
</pre> 
-->


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/Inc/Header.jspf"%>
<link rel="stylesheet" type="text/css"
	href="/First_Project_HyunDai_GreenFood/css/QnA/QnA_style.css">
<style>
#subject {
	width: 99%;
	padding-left: 10px;
	padding: 10px 5px;
	height: 10px;
	border: 1px solid #bcbcbc;
}

#boardFrm li {
	padding: 8px 5px;
}

#category{
	width: 90px;
    text-align: center;
    border: 1px solid #bcbcbc;
}
</style>
<!-- 게시글 작성을 위한 ckeditor 플러그인 임포트 -->
<script src="https://cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
<link href="${url}/css/boardwrite.css" rel="stylesheet" type="text/css">
<script>
	$(function() {
		CKEDITOR.replace("content",{
			  height: 400
		});

		//게시글 제목, 내용 공백 체크
		$("#boardFrm").submit(function() {
			if ($("#subject").val() == '') {
				alert("글 제목을 입력하세요");
				return false;
			}
			if (CKEDITOR.instances.content.getData() == '') {
				alert("글내용을 입력하세요");
				return false;
			}
		});
	});
</script>
<!-- container -->
<div class="container_area" id="contents">
	<!-- contents -->
	<div class="sub_layout sub_visual_6">
		<!-- 하이어라키 -->
		<ul class="hierarchy_list">
			<li class="icon_home"><img
				src="/First_Project_HyunDai_GreenFood/img/icon/icon_home.png"
				alt="Home" /></li>
			<li class="depth_2"><a href="#" class="m_hierarchy">고객센터 </a>

				<ul class="hierarchy_depth" style="display: none;">
					<li><a href="#">고객센터</a></li>
				</ul></li>
			<li class="depth_3"><a href="#" class="t_block_hierarchy">고객의
					소리 </a>

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
			
			<!-- 게시글 작성 폼 -->
			<form method="post" action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaWrite" id="boardFrm">
				<ul>
					<!-- 카테고리 -->
					<li>
	                    분류:  &nbsp  &nbsp
	                    <select id="category" name="QNA_type">
	                        <option value="0">칭찬</option>
	                        <option value="1">불만</option>
	                        <option value="2">제안</option>
	                        <option value="3">기타</option>
	                    </select>
	                </li>
	                <!-- 카테고리 -->
					<li><input type="text" class="form-control" name="title" id="subject" placeholder="제목을 입력해 주세요."/></li>
					<li><textarea name="main_text" id="content"></textarea></li>
					<li><input type="submit" class="btn btn-default" id="boardwrite-submit" value="등록" /></li>
				</ul>
			</form>
			<!-- //게시글 작성 폼 -->
		</div>
		<!-- //서브 컨텐츠 -->	
<%@ include file="/Inc/Footer.jspf"%>