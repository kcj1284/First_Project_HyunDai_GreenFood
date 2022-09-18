<!-- 작성자 장주연 -->
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
			<!-- 기존 작동 코드
			<form method="post" action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=annWrite" id="boardFrm">
				<ul>
					<li>
	                    분류:  &nbsp  &nbsp
	                    <select id="category" name="ann_type">
	                        <option value="0">보도자료</option>
	                        <option value="1">공지소식</option>
	                    </select>
	                </li>
					<li><input type="text" class="form-control" name="title" id="subject" placeholder="제목을 입력해 주세요."/></li>
					<li><textarea name="main_text" id="content"></textarea></li>
					<li> file:  &nbsp  &nbsp<input type="file" name="file"><br></li>
					<li><input type="submit" class="btn btn-default" id="boardwrite-submit" value="등록" /></li>
				</ul>
			</form>
			 -->
			
			<form method="post" action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=annWrite" id="boardFrm" enctype="multipart/form-data">
				<ul>
					<li>
	                    분류:  &nbsp  &nbsp
	                    <select id="category" name="ann_type">
	                        <option value="0">보도자료</option>
	                        <option value="1">공지소식</option>
	                    </select>
	                </li>
					<li><input type="text" class="form-control" name="title" id="subject" placeholder="제목을 입력해 주세요."/></li>
					<li><textarea name="main_text" id="content"></textarea></li>
					<li> file:  &nbsp  &nbsp<input type="file" name="file"><br></li>
					<li><input type="submit" class="btn btn-default" id="boardwrite-submit" value="등록" /></li>
				</ul>
			</form>
			 
			<!-- contents : end -->

		</div>
		<!-- //container -->
		<%@ include file="/Inc/Footer.jspf"%>