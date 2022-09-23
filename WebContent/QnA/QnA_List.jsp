<!-- 
QnA_List
@author 정구현
@since 2022.09.13

<pre>
수정일          수정자                 수정내용
----------  ---------    ---------------------------
2022.09.13     정구현      최초 생성
2022.09.14     정구현      Qna 게시글 목록 화면 연결
2022.09.15     정구현      Qna 페이징 추가
2022.09.18     정구현      Qna 목록 레이아웃 수정
</pre> 
-->


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/Inc/Header.jspf"%>
<link rel="stylesheet" type="text/css" href="/First_Project_HyunDai_GreenFood/css/QnA/QnA_style.css">
<!-- container -->
<div class="container_area" id="contents">
	<!-- contents -->
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
			
			<!-- 게시글 바디 -->
			<div class="board-body">
			
				<!-- 검색 -->
				<form method="post" action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaList" id="searchFrm">
					<input type="text" name="key" id="searchWord"> <input class="btn btn-default" type="submit" id="search-btn" value="검색">
				</form>
				<!-- //검색 -->
				
				<!-- 리스트 -->
				<div class="list-div">

					<form method="post" action="" id="listFrm">
						<ul class="boardList">
							<li>번호</li>
							<li>분류</li>
							<li>제목</li>
							<li>글쓴이</li>
							<li></li>
							<li>등록일</li>
							<c:choose>
								<c:when test="${qnaListSize<=0}"> 
							        <span">등록된 게시글이 없습니다.</span>
							    </c:when>
								<c:otherwise>
									<c:forEach var="qnaVO" items="${qnaList}">
										<li>${qnaVO.QNA_id}</li>
										<!-- 카테고리 -->
										<li><c:if test="${qnaVO.QNA_type == 0}"> 
												<c:out value="칭찬" />
											</c:if> <c:if test="${qnaVO.QNA_type == 1}">
												<c:out value="불만" />
											</c:if> <c:if test="${qnaVO.QNA_type == 2}">
												<c:out value="제안" />
											</c:if> <c:if test="${qnaVO.QNA_type == 3}">
												<c:out value="기타" />
											</c:if></li>
										<!-- //카테고리 -->
										<li><a href="HdgfServlet?command=qnaView&QNA_id=${qnaVO.QNA_id}">${qnaVO.title}</a></li>
										<li>${qnaVO.user_id}</li>
										<li></li>
										<li>${qnaVO.wrdate}</li>
									</c:forEach>
								</c:otherwise>
							</c:choose>
							</ul>
						</form>
					</div>
					<!-- //리스트 -->
				
				<!-- 게시판 하단 영역 -->
				<div class="flex-container">
					<div class="item">
					</div>
					
					<div class="item">
						<!-- 페이징 -->
						<div class="page_wrap">
					   		<div class="page_nation">
						      ${paging}
						   </div>
						</div>
						<!-- //페이징 -->
					</div>
					
					<div class="item">
						<!-- 글쓰기 버튼 -->
						<button class="btn btn-default" id="btn-boardwrite" onclick="location.href='/First_Project_HyunDai_GreenFood/HdgfServlet?command=qnaWriteForm'">글쓰기</button>
						<!-- //글쓰기 버튼 -->
					</div>
				</div>
				<!-- //게시판 하단 영역 -->
			</div>
			<!-- //게시글 바디 -->
		</div>
		<!-- //서브 컨텐츠 -->
<%@ include file="/Inc/Footer.jspf"%>