<!-- 작성자 : 김민찬 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="/Inc/Header.jspf" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link href="../css/login.css" type="text/css" rel="stylesheet" />
    <title>회원가입 폼</title>
</head>

<body>
	<script>
	// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
		$("#user_id").blur(function() {
			// id = "id_reg" / name = "userId"
			var user_id = $('#user_id').val();
			$.ajax({
				url : '${pageContext.request.contextPath}/user/idCheck?userId='+ user_id,
				type : 'get',
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x : "+ data);							
					
					if (data == 1) {
							// 1 : 아이디가 중복되는 문구
							$("#id_check").text("사용중인 아이디입니다 :p");
							$("#id_check").css("color", "red");
							$("#reg_submit").attr("disabled", true);
						} else {
							
							if(idJ.test(user_id)){
								// 0 : 아이디 길이 / 문자열 검사
								$("#id_check").text("");
								$("#reg_submit").attr("disabled", false);
					
							} else if(user_id == ""){
								
								$('#id_check').text('아이디를 입력해주세요 :)');
								$('#id_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);				
								
							} else {
								
								$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다 :) :)");
								$('#id_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);
							}
							
						}
					}, error : function() {
							console.log("실패");
					}
				});
			});
	</script>

    <div class="signUpForm">
        <h1>회원가입</h1>
        <hr>
        <form action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=signUp" method="post">
        <!--  <form action="/First_Project_HyunDai_GreenFood/signUpAction" method="post"> -->
            <fieldset>
                <div class="input_F">
                    <input type="text" id="user_id" name="user_id" placeholder="아이디">
                </div>
                <div class="check_font" id="id_check">
                    //중복성검사결과 띄우기
                </div>
                <div class="input_F">
                    <input type="password" name="user_pw" placeholder="비밀번호">
                </div>
                <div class="input_F">
                    <input type="password" name="user_pw" placeholder="비밀번호확인">
                </div>
                <div class="input_F">
                    <input type="text" name="user_name" placeholder="이름">
                </div>
                <div class="input_F">
                    <input type="text" name="tel" placeholder="전화번호">
                </div>
                <div class="input_F">
                    <input type="text" name="email" placeholder="email">
                </div>
                
                

                <div class="radio">
                    <input type="radio" name="gender" value="1" checked> 남성
                    <input type="radio" name="gender" value="2"> 여성
                </div>
                
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
                </div>
                

                <div class="signUpForm-btn">
                    <input type="submit" value="등록"> &nbsp
                    <input type="reset" value =" 초기화">
                </div>
            </fieldset>
        </form>

    </div>

<%@ include file ="/Inc/Footer.jspf" %>
	
</body>

</html>