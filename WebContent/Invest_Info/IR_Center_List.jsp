<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css" href="/First_Project_HyunDai_GreenFood/css/QnA/QnA_style.css">
<%@ include file="/Inc/Header.jspf"%>
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
				</ul>
				</li>
		</ul>
		<!-- //하이어라키 -->
		<!-- 서브 컨텐츠 -->
		<div class="sub_contents">
			<!-- 타이틀 , 디스크립션 -->
			<div class="title_description">
				<h2 class="title_sub">IR 자료실</h2>
				<p class="sub_description">
					현대그린푸드의 IR자료실입니다.
				</p>
			</div>
			<ul class="tab_list tab_list_2">
			<li class="on"><a href="#;">IR 자료실</a></li>
			<li><a href="IR_Contact.jsp">IR Contact</a></li>
		</ul>
			
			
			<!-- //타이틀 , 디스크립션 -->
			<div class="board-body">
				<!-- 리스트 -->
				<div id="record-no">게시글 수 :</div>

				<div class="list-div">

					<form method="post" action="" id="listFrm">
						<ul class="boardList">
							<li>번호</li>
							<li>제목</li>
							<li>글쓴이</li>
							<li>조회수</li>
							<li>등록일</li>
							<c:forEach var="IRVO" items="${IRList}">
								<li>${IRVO.id}</li>
								<li><a href="HdgfServlet?command=IR_Center_View&id=${IRVO.IR_id}">${IRVO.title}</a></li>
								<li>${IRVO.IR_id}</li>
								<li>${IRVO.visiter}</li>
								<li>${IRVO.wrdate}</li>
							</c:forEach>
						</ul>
					</form>
				</div>

				<div class="flex-container">
					<!-- 선택 삭제 -->
					<div class="item">
						<button class="btn btn-default" id="multiDel">선택 삭제</button>
					</div>
					<div class="item">
						<!-- 검색 -->
						<form method="get" action="/myapp/board/boardList" id="searchFrm">
							<select name="searchKey">
								<option value="subject">제목</option>
								<option value="content">글내용</option>
								<option value="userid">글쓴이</option>
							</select> <input type="text" name="searchWord" id="searchWord"> <input class="btn btn-default" type="submit" id="search-btn" value="검색">
						</form>
					</div>

					<div class="item">
						<!-- 글쓰기 버튼 -->
						<button class="btn btn-default" id="btn-boardwrite" onclick="location.href='/First_Project_HyunDai_GreenFood/HdgfServlet?command=IRWriteForm'">글쓰기</button>
					</div>
				</div>
			</div>
			<!-- contents : end -->

		</div>
		<!-- //container -->
		<%@ include file="/Inc/Footer.jspf"%>