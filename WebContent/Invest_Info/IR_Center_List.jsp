<!-- 작성자 김찬중 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css" href="/First_Project_HyunDai_GreenFood/css/QnA/QnA_style.css">
<%@ include file="/Inc/Header.jspf"%>
<!-- container -->
<script>
	var recentlist = function(url) {
		$.ajax({
			type : "post",
			url : "HdgfServlet?command=IR_Center_List",
			data : "latest",
			success : function(data) {
				$('.container_area').html(data);
				$("#latest").css("color", "#0a9882");
			}
		})
	}

	var oldlist = function(url) {
		$.ajax({
			type : "post",
			url : "HdgfServlet?command=IR_Center_List",
			data : "oldest",
			success : function(data) {
				$('.container_area').html(data);
				$("#oldest").css("color", "#0a9882");
			}
		})
	}

	var viewlist = function(url) {
		$.ajax({
			type : "post",
			url : "HdgfServlet?command=IR_Center_List",
			data : "views",
			success : function(data) {
				$('.container_area').html(data);
				$("#views").css("color", "#0a9882");
			}
		})
	}
</script>

<style>
a:link {
	color: #4b4b4b
}
</style>
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
			<ul class="tab_list tab_list_2">
				<li class="on"><a href="#;">IR 자료실</a></li>
				<li><a href="IR_Contact.jsp">IR Contact</a></li>
			</ul>


			<!-- //타이틀 , 디스크립션 -->
			<div class="board-body">

				<!-- 
				<div id="sort_list">
					<p>
						<a href="javascript:recentlist();" id="latest" color="#4b4b4b">최신순</a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp <a href="javascript:oldlist();" id="oldest" color="#4b4b4b">오래된 순</a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp <a href="javascript:viewlist();" id="views" color="#4b4b4b">조회순</a>
					</p>

				</div>
				-->

				<div class="list-div">

					<form method="post" action="" id="listFrm">
						<ul class="boardList">
							<li>번호</li>
							<li>&nbsp</li>
							<li>제목</li>
							<li>글쓴이</li>
							<li>조회수</li>
							<li>등록일</li>

							<c:forEach var="IR_VO" items="${IR_List}">
								<li>${IR_VO.id}</li>
								<li>&nbsp</li>
								<li><a href="HdgfServlet?command=IR_Center_View&id=${IR_VO.id}">${IR_VO.title}</a></li>
								<li>${IR_VO.user_id}</li>
								<li>${IR_VO.visiter}</li>
								<li>${IR_VO.wrdate}</li>
							</c:forEach>
						</ul>
					</form>
				</div>

				<div class="flex-container">
					<!-- 선택 삭제 -->
					<div class="item">
						<button class="btn btn-default" id="multiDel" style="display:none">선택 삭제</button>
					</div>
					<div class="item">
						<!-- 검색 -->
						<form method="post" action="HdgfServlet?command=IR_Center_List" id="searchFrm">
							<select name="searchKey">
								<option value="subject">제목</option>
								<option value="content">본문</option>
							</select> <input type="text" name="searchWord" id="searchWord" value="${keyword}"> <input class="btn btn-default" type="submit" id="search-btn" value="검색">
						</form>
					</div>

					<div class="item">
						<c:if test="${sessionScope.loginUser.administrator == 1}">
							<!-- 글쓰기 버튼 -->
							<button class="btn btn-default" id="btn-boardwrite" onclick="location.href='/First_Project_HyunDai_GreenFood/HdgfServlet?command=IR_Center_WriteForm'">글쓰기</button>
						</c:if>
					</div>
				</div>
			</div>
			<!-- contents : end -->

		</div>
		<!-- //container -->
	</div>
</div>
<%@ include file="/Inc/Footer.jspf"%>