<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/Inc/Header.jspf"%>
<link rel="stylesheet" type="text/css"
	href="/First_Project_HyunDai_GreenFood/css/QnA/QnA_style.css">
<style>
#subject {
	width: 99.6%;
	padding: 10px 5p;
}

#boardFrm li {
	padding: 10px 5px;
}
</style>
<script src="https://cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
<link href="${url}/css/boardwrite.css" rel="stylesheet" type="text/css">
<script>
	$(function() {
		CKEDITOR.replace("content");

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
			
			<form method="post" action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=annUpdate&id=${annVO.id}" id="boardFrm">
				<input type="hidden" name="annId" value="${annVO.id}" />
				<ul>
					<li><input type="text" class="form-control" name="subject" id="subject" placeholder="제목을 입력해 주세요." value="${annVO.title}"/></li>
					<li><textarea name="content" id="content">${annVO.main_text}</textarea></li>
					<li><input type="submit" class="btn btn-default" id="boardwrite-submit" value="등록" /></li>
				</ul>
			</form>
			<!-- contents : end -->

		</div>
		<!-- //container -->
		<%@ include file="/Inc/Footer.jspf"%>