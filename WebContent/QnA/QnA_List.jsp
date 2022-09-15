<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<link rel="stylesheet" type="text/css"
	href="/First_Project_HyunDai_GreenFood/css/QnA/QnA_style.css">
<%@ include file="/Inc/Header.jspf"%>
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
			<div class="board-body">
				<!-- 리스트 -->
				<div id="record-no">게시글 수 :</div>

				<div class="list-div">

					<form method="post" action="" id="listFrm">
						<ul class="boardList">
							<li>번호</li>
							<li>분류</li>
							<li>제목</li>
							<li>글쓴이</li>
							<li>조회수</li>
							<li>등록일</li>
							<c:forEach var="qnaVO" items="${qnaList}">
								<li>
									${qnaVO.QNA_id}
								</li>
								<li>
								<c:if test="${qnaVO.QNA_type == 0}">
									<c:out value="칭찬" />
								</c:if>
								<c:if test="${qnaVO.QNA_type == 1}">
									<c:out value="불만" />
								</c:if>
								<c:if test="${qnaVO.QNA_type == 2}">
									<c:out value="제안" />
								</c:if>
								<c:if test="${qnaVO.QNA_type == 3}">
									<c:out value="기타" />
								</c:if>
								
								
								</li>
								<li><a href="HdgfServlet?command=qnaView&QNA_id=${qnaVO.QNA_id}">${qnaVO.title}</a></li>
								<li>${qnaVO.user_id}</li>
								<li>10</li>
								<li>${qnaVO.wrdate}</li>
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
							</select> <input type="text" name="searchWord" id="searchWord"> <input
								class="btn btn-default" type="submit" id="search-btn" value="검색">
						</form>
					</div>

					<div class="item">
						<!-- 글쓰기 버튼 -->
						<button class="btn btn-default" id="btn-boardwrite"	onclick="location.href='/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaWriteForm'">글쓰기</button>
					</div>
				</div>
			</div>
			<!-- contents : end -->

		</div>
		<!-- //container -->
		<%@ include file="/Inc/Footer.jspf"%>