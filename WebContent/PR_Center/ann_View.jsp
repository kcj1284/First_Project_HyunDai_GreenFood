<!-- 작성자 장주연 -->
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
				<div class="view_top_area">
					<h3 class="view_title">
					<!-- 카테고리 출력 -->
					<span class="catagory"> [ <c:if test="${annVO.announ_type == 0}">
							<c:out value="보도자료" />
						</c:if>
						<c:if test="${annVO.announ_type == 1}">
							<c:out value="공지사항" />
						</c:if> ]
						</span> 
						<!-- 제목 -->
						${annVO.title}
					</h3>

					<ul class="date_hits_list">
						<li>작성자: ${annVO.u_id}</li>
						<!-- 작성일-->
						<li> ${annVO.wrdate} </li>
						<!-- 조회수 부분 -->
						<li> ${annVO.visiter} </li> 
					</ul>		
				</div>
				<div class="file-area">
					<c:if test="${fileVO.fileRealName != '' && not empty fileVO.fileRealName}">
							<span>첨부파일</span>  <c:if test="${fileVO.id != 0}"><a href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=download&file=${fileVO.id}">${fileVO.fileRealName}</a></c:if>
					</c:if> 
				</div>
				
				<!-- 글 내용 -->
				<div class="view_text_area">
					${annVO.main_text}
				</div>

			</div>
			
			<div id="edit-box">
				<!-- 로그인 아이디가 관리자일때 수정, 삭제 활성화 -->
				<div class="tool">
					<c:if test="${annVO.u_id == sessionScope.loginUser.user_id }">
						<input type='button' class='btn-view btn-edit' id='updateBtn' onclick='updatePost()' value='수정'/>
						<input type='button' class='btn-view btn-delete' id='deleteBtn' onclick='deletePost()' value='삭제'/>
					</c:if>
				</div>
				<input type='button' class='btn-view btn-menu' id='menuBtn' onclick='menu()' value='목록'/>
			</div>       
			<!-- contents : end -->
		</div>
		<!-- //container -->
		
		<script>
			function updateAnswer(){
				location.href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=annAnswerUpdateForm&id=${annVO.id}"
			}
			
			function deleteAnswer(){
				location.href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=annAnswerDelete&id=${annVO.id}"
			}
			
			function updatePost(){
				location.href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=annUpdateForm&id=${annVO.id}"
			}
			
			function deletePost(){
				location.href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=annDelete&id=${annVO.id}"
			}
			
			function menu(){
				location.href="/First_Project_HyunDai_GreenFood/HdgfServlet?command=notice"
			}
		</script>
		<%@ include file="/Inc/Footer.jspf"%>