
<!-- 

  signUpForm.jsp
  @author 김민찬, 장주연
  @since 2022.09.06
  
  <pre>
  수정일           수정자                    수정내용
  ----------  --------------    ------------------------------
  2022.09.06     김민찬                    최초 생성
  2022.09.06     김민찬                  header, footer 연결
  2022.09.12   김민찬, 장주연           ajax를 활용해 실시간 아이디중복체크
  2022.09.13     김민찬                 비밀번호 일치 여부 출력
  2022.09.15     김민찬               유효성검사 실패시 가입불가 적용
  2022.09.16     김민찬                 아이디 유효성 조건 추가
  2022.09.19     김민찬                 회원가입 폼에 null일시 가입불가
   </pre>
 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file ="/Inc/Header.jspf" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
    <link href="/First_Project_HyunDai_GreenFood/css/login.css" type="text/css" rel="stylesheet" />
  <title>회원가입 폼</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

  <script>
      let idCheck=false
      let pwCheck=false
  </script>
 <script>
 $(function(){
  
	 //jquery를 이용 keyup할때마다 이벤트 발생
    $("#user_id").on("keyup", function(){
       var $checkID = $("#user_id").val();
       var $msg = $("#msg");
       var regExp = /^[a-z][a-z\d]{2,12}$/; // 소문자로 시작, 소문자와 숫자만, 3자리에서 13자리 - js정규식
	
       // 비동기 방식으로 URL을 타고들어간다
       $.ajax({
          type : "POST",
          url: "/First_Project_HyunDai_GreenFood/HdgfServlet?command=idCheck",
          data : { "user_id" : $checkID },
          dataType : "html",
          async : true,     //비동기 유무
          //data로 결과 값을 받아온다
          success : function(data){
             console.log($checkID);
             console.log("data : "+data)
              if( regExp.test($checkID) ){
                 if(data == 1){
                    $msg.html("<h4 style=\"color:red\"> ※ 아이디가 이미 존재합니다 ※</h4>");
                          idCheck=false;
                 }else{
                    $msg.html("<h4 style=\"color:green\">사용가능한 아이디입니다</h4>");
                          idCheck=true;
                 }
              } else if($checkID==""){
                  $msg.html("<h4 style=\"color:gray\"> 소문자로 시작, 소문자와 숫자만, 3자리에서 13자리 </h4>");
                  idCheck = false;
              }  else {
                  $msg.html("<h4 style=\"color:red\"> ※ 조건이 맞지않습니다 ※</h4>");
                  idCheck = false;
              }
          }
       })
    })
 })



</script>



<script>

$(function(){
 $(".user_pw2").on("keyup", function(){
    if($(".user_pw2").val() == ""){
       $(".pwcheck").text(" ");
    }
    else if($(".user_pw2").val() == $(".user_pw").val()){
       $(".pwcheck").text("비밀번호가 일치합니다.");
       $(".pwcheck").css("color", "green");
          pwCheck=true;

     
    } else{
       $(".pwcheck").text("비밀번호가 일치하지 않습니다.");
       $(".pwcheck").css("color", "red");
          pwCheck=false;
    }
 })
  $(".user_pw").on("keyup", function(){
      if($(".user_pw").val() == ""){
          $(".pwcheck").text(" ");
      }
      else if($(".user_pw2").val() == $(".user_pw").val()){
          $(".pwcheck").text("비밀번호가 일치합니다.");
          $(".pwcheck").css("color", "green");
          pwCheck=true;

      } else{
          $(".pwcheck").text("비밀번호가 일치하지 않습니다.");
          $(".pwcheck").css("color", "red");
          pwCheck=false;
      }
  })
})
</script>

  <script>
      function Check(){
          var nullCheck = true;
          if( !$("#user_name").val()) {
              nullCheck=false;
          }
          if(!$("#tel").val() ) {
              nullCheck=false;
          }
          if( !$("#email").val() ) {
              nullCheck=false;
          }
          if(!(pwCheck&&idCheck&&nullCheck)){alert("다시 확인 부탁드립니다");}
          else{alert("가입성공")}
          return pwCheck&&idCheck&&nullCheck;
      }
  </script>



</head>

<body>

  <div class="signUpForm">
      <h1>회원가입</h1>
      <hr>
      <!-- onsubmit으로 submit 할때 check함수를 호출해서 조건들을 달성해야지 넘어갈수있게끔 작성 -->
      <form action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=signUp" method="post" onsubmit="return Check()">
     
          <fieldset>
              <div class="input_F">
                  <input type="text" class="user_id" id="user_id" name="user_id" placeholder="아이디" autocomplete="off">
              </div>
              <input type="button" id="idcheck" value="중복확인">
              <span id="msg"><h4 style="color:gray"> 소문자로 시작, 소문자와 숫자만, 3자리에서 13자리 </h4></span>
            
              <div class="input_F">
                  <input type="password" class="user_pw" name="user_pw" placeholder="비밀번호">
              </div>
              <div class="input_F">
                  <input type="password" class="user_pw2" name="user_pw2" placeholder="비밀번호확인">
              </div>
              <div class="pwcheck">
              </div>
              <div class="input_F">
                  <input type="text" name="user_name" id="user_name" placeholder="이름" autocomplete="off">
              </div>
              <div class="input_F">
                  <input type="text" name="tel" id="tel" placeholder="전화번호" autocomplete="off">
              </div>
              <div class="input_F">
                  <input type="text" name="email" id="email" placeholder="email" autocomplete="off">
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


























