<!--  작성자 : 김민찬  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file ="/Inc/Header.jspf" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/mypage.css" type="text/css" rel="stylesheet" />
<title>MyPage</title>
</head>
<body>

	<div class="myPage">
		<h1>MyPage</h1>
		<hr>
		
		<table>
			<tbody>
			<tr>
				<td>아이디</td><td> 확인 ${sessionScope.loginUser.user_id} 확인</td>
			</tr>
			<tr>
				<td>이름</td><td>ㅁㄴㅇ ${sessionScope.loginUser.user_name} </td>
			</tr>
			<tr>
				<td>번호</td><td>ㅁㄴㅇ ${sessionScope.loginUser.tel}</td>
			</tr>
			<tr>
				<td>email</td><td>ㅁㄴㅇ ${sessionScope.loginUser.email}</td>
			</tr>
			<tr>
				<td>성별</td><td>ㅁㄴㅇ ${sessionScope.loginUser.gender} 1 또는 2</td>
			</tr>
			<tr>
				<td>분야</td><td>ㅁㄴㅇ ${sessionScope.loginUser.com_type} 1~5</td>
			</tr>
			
				
			</tbody>
		</table>
		
		
		<div class="myPage-btn">
			<div class="myclick">수정</div>
			<div class="myclick">탈퇴</div>

		</div>
	</div>

</body>
</html>
<%@ include file="/Inc/Footer.jspf"%>