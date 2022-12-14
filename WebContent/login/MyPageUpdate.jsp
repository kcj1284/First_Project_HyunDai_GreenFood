<!-- 

  MyPageUpdate.jsp
  @author 김민찬
  @since 2022.09.15
  
  <pre>
  수정일           수정자                    수정내용
  ----------  --------------    ------------------------------
  2022.09.15     김민찬                    최초 생성

   </pre>
 
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/Inc/Header.jspf"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/mypage.css" type="text/css" rel="stylesheet" />
<link href="/First_Project_HyunDai_GreenFood/css/mypage.css"
	type="text/css" rel="stylesheet" />
<title>MyPage</title>

<script>
     function confirm(){
           alert("수정되었습니다");
     }
  </script>

</head>
<body>

	<div class="myPage">
		<h1>MyPage 수정</h1>
		<hr>

		<form
			action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=myPageUpdate"
			method="post" onsubmit="confirm()">
			<table>
				<tbody>
					<tr>
						<td>ID</td>
						<td>${sessionScope.loginUser.user_id}</td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="user_name" autocomplete="off"
							value="${sessionScope.loginUser.user_name}"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="user_pw" 
							value="${sessionScope.loginUser.user_pw}"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><input type="text" name="tel" autocomplete="off"
							value="${sessionScope.loginUser.tel}"></td>
					</tr>
					<tr>
						<td>email</td>
						<td><input type="text" name="email" autocomplete="off"
							value="${sessionScope.loginUser.email}"></td>
					</tr>
					<tr>
						<td>성별</td>
						<td>
						<div class="radio">
	                   		<input type="radio" name="gender" value="1" checked> 남성
	                   		<input type="radio" name="gender" value="2"> 여성
	                   		<br>
               			</div>
               			현재 : 
						<script>
		                  if(${sessionScope.loginUser.gender} ==1){
		                     document.write('남자');
		                 } else{
		                    document.write('여자');
		                 }
		               </script></td>
					</tr>
					<tr>
						<td>분야</td>
						<td>
						<div class="select">
		                   분야  &nbsp  &nbsp
		                   <select name="com_type">
		                       <option value="0">급식</option>
		                       <option value="1">외식</option>
		                       <option value="2">식자재유통</option>
		                       <option value="3">소매유통</option>
		                       <option value="4">바이어</option>
		                       <option value="5">기타</option>
		                   </select>
		                   <br>
		               </div>
						현재 : 
						<script>
			                  if(${sessionScope.loginUser.com_type} ==0){
			                     document.write('급식');
			                 } else if(${sessionScope.loginUser.com_type}==1){
			                    document.write('외식');
			                 } else if(${sessionScope.loginUser.com_type}==2){
			                    document.write('식자재유통');
			                 } else if(${sessionScope.loginUser.com_type}==3){
			                    document.write('소매유통');
			                 } else if(${sessionScope.loginUser.com_type}==4){
			                    document.write('바이어');
			                 } else{
			                    document.write('기타');
			                 }
		               </script></td>
					</tr>
				</tbody>
			</table>

			<div class="myPage-btn">
				<input class="myclick" type="submit" value="수정"> 
				<input class="myclick" type="text" value="뒤로"
					   onclick="location.href='/First_Project_HyunDai_GreenFood/HdgfServlet?command=mypage';">
			</div>

	</form>
	</div>

</body>
</html>
<%@ include file="/Inc/Footer.jspf"%>


