<!-- 작성자 : 김민찬 -->
<%@ page import="com.hdgf.util.CookieManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file ="/Inc/Header.jspf" %>

<%
   //쿠키 확인
   String loginId = CookieManager.readCookie(request, "loginId");

   String cookieCheck = "";
   if(!loginId.equals("")){
       cookieCheck="checked";
   }
%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>로그인</title>
   <link href="/First_Project_HyunDai_GreenFood/css/login.css" type="text/css" rel="stylesheet" />
</head>

<body>


   <div class="login">
       <div>
        <div class="login-title">
              <h2 class="title">로그인</h2>
           </div>
           <form action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=login" name="Login" method="post" >
               <input type="hidden" id="openLogin1" name="openLogin" value="hpointLogin">
               <fieldset>

                   <div class="input_area">
                       <div class="input">
                           <input type="text" id="wrtUserId" name="j_username" placeholder="아이디" autocomplete="off"
                                   value="<%= loginId %>">

                           <div class="join">
                               <ul>
                               <!-- 쿠키체크여부 -->
                                   <li> <input type="checkbox" name="save_check" value="Y" <%= cookieCheck%>> <font style="color:#666666">아이디 저장하기</font></li>
                               </ul>
                           </div>

                       </div>
                       <div class="input">
                           <input type="password" autocomplete="off" id="j_password" maxlength="30" name="j_password"
                               data-enc="off" data-tk-kbdType="qwerty" placeholder="비밀번호" />
              
                       </div>

                       <div class="join">
                           <ul>
                               <li><a  href="/First_Project_HyunDai_GreenFood/login/signUpForm.jsp">회원가입</a></li>
                           </ul>
                       </div>
                       <div class="btn-login">
                           <input type=submit value="로그인">
                       </div>
                   </div>
               </fieldset>
           </form>
       </div>
   </div>

<%@ include file ="/Inc/Footer.jspf" %>

</body>

</html>
