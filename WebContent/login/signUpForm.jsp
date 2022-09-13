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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
	$(function(){
		
		// 버튼 누를 필요 없이 실시간 이벤트
		$("#user_id").on("keyup", function(){
			var $checkID = $("#user_id").val();
			var params = "?user_id="+$checkID;
			var $msg = $("#msg");
			
			$.ajax({
				type : "POST",
				url: "/First_Project_HyunDai_GreenFood/HdgfServlet?command=idCheck",
				data : { "id" : $checkID },
				dataType : "html",
				async : true,		//비동기 유무
				success : function(data){
					console.log($checkID);
					// 이 데이터 넘어오는 부분을 수정해야된다
					console.log("data : "+data)
					if(data == 0){
						$msg.html("<h4>아이디가 이미 존재합니다</h4>");
					}else{
						$msg.html("<h4>사용가능한 아이디입니다</h4>")
					}
				}
			})
		})
	})
</script>
</head>

<body>
<!-- js 경로 가져오기 -->
	


    <div class="signUpForm">
        <h1>회원가입</h1>
        <hr>
        <form action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=signUp" method="post">
        <!--  <form action="/First_Project_HyunDai_GreenFood/signUpAction" method="post"> -->
            <fieldset>
                <div class="input_F">
                    <input type="text" class="user_id" id="user_id" name="user_id" placeholder="아이디">
                </div>
                <font id="checkId">

                </font>
                <input type="button" id="idcheck" value="중복확인"><span id="msg"></span>
                
                
                <div class="input_F">
                    <input type="password" name="user_pw" placeholder="비밀번호">
                </div>
                <div class="input_F">
                    <input type="password" name="pwcheck" placeholder="비밀번호확인">
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