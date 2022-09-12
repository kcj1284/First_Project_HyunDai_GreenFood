<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="/Inc/Header.jspf" %>
<link href="../css/PR_Center/notice.css" type="text/css" rel="stylesheet" />

		<!-- container -->
		<div class="container_area" id="contents">
		
		 <!-- Body
    ################# --> 

    <!-- contents : str -->
    
<!-- include jQuery -->




<!-- Once the images are loaded, initalize the Wookmark plug-in. -->

<div class="sub_layout sub_visual_6">
    <!-- 하이어라키 -->
    <ul class="hierarchy_list">
        <li class="icon_home"><img src="../img/ESG_infrasystem/icon_home.jpg" alt="Home" /></li>
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
        <!-- 검색영역 -->
        <div class="list_search_area">
            <label for="notice_search" class="blind">공지사항 검색</label> <input type="text" id="notice_search" class="text_input_search" /><input
                type="button" value="검색" class="btn_search" />
        </div>
        <!-- //검색영역 -->
    	
    	<div class="notice_block" role="notice">
        <!-- 공지사항 -->
        <ul class="block_list" id="tiles">
                
        </ul>
          
        <!-- //공지사항 -->
        <p class="btn_more_notice" id="btnJsonList">
            <a href="#"><img src="../img/PR_Center/icon_more_plus.jpg" alt="더보기" /> 더보기</a>
        </p>
        <br />
     </div>
        
     </div>
   </div>
</div>
<%@ include file ="/Inc/Footer.jspf" %>