<!--  작성자 : 김민찬  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/Inc/Header.jspf"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
</head>
<body>

	<div class="signUpForm">
		<h1>MyPage</h1>
		<hr>
		<br>
		<form
			action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=signUp"
			method="post">
		
			<fieldset>
				<div class="input_F">
					<input type="text" class="user_id" id="user_id" name="user_id"
						placeholder="아이디"> 
						${sessionScope.loginUser.user_id}
				</div>
				<input type="button" id="idcheck" value="중복확인"><span
					id="msg"></span>

				<div class="input_F">
					<input type="password" class="user_pw" name="user_pw"
						placeholder="비밀번호">
						 ${sessionScope.loginUser.user_pw}
				</div>

				<div class="input_F">
					<input type="text" name="user_name" placeholder="이름">
					${sessionScope.loginUser.user_name}
				</div>
				<div class="input_F">
					<input type="text" name="tel" placeholder="전화번호">
					${sessionScope.loginUser.tel}
				</div>
				<div class="input_F">
					<input type="text" name="email" placeholder="email">
					${sessionScope.loginUser.email}
				</div>



				<div class="radio">
					<input type="radio" name="gender" value="1" checked> 남성 <input
						type="radio" name="gender" value="2"> 여성
					${sessionScope.loginUser.gender}
				</div>
	
										${sessionScope.loginUser.administrator}
					
					
				<div class="select">
					분야 &nbsp &nbsp <select name="com_type">
						<option value="0">급식</option>
						<option value="1">외식</option>
						<option value="2">식자재유통</option>
						<option value="3">소매유통</option>
						<option value="4">바이어</option>
						<option value="5">기타</option>
					</select> ${sessionScope.loginUser.com_type}
				</div>


				<div class="signUpForm-btn">
					<input type="submit" value="수정"> &nbsp 
					<input type="reset" value=" 탈퇴">
				</div>
			</fieldset>
		</form>
	</div>

</body>
</html>
<%@ include file="/Inc/Footer.jspf"%>