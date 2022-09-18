<!--  작성자 : 김민찬  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="/Inc/Header.jspf"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/mypage.css" type="text/css" rel="stylesheet" />
<link href="/First_Project_HyunDai_GreenFood/css/mypage.css" type="text/css" rel="stylesheet" />
<title>MyPage</title>

  <script>
     function confirmation(){
        var inputString = prompt('다음 문구를 입력하세요 "탈퇴합니다" ');
        if(inputString=="탈퇴합니다"){
           alert("90일동안 같은 아이디로 가입 불가능합니다")
           return true;
        }else{
           alert("문구를 다시 확인해주세요");
           return false;
        }
     }
  </script>

</head>
<body>

  <div class="myPage">
     <h1>MyPage</h1>
     <hr>

     <table>
        <tbody>
           <tr>
              <td>아이디</td>
              <td>${sessionScope.loginUser.user_id}</td>
           </tr>
           <tr>
              <td>이름</td>
              <td> ${sessionScope.loginUser.user_name}</td>
           </tr>
           <tr>
              <td>번호</td>
              <td> ${sessionScope.loginUser.tel}</td>
           </tr>
           <tr>
              <td>email</td>
              <td> ${sessionScope.loginUser.email}</td>
           </tr>
           <tr>
              <td>성별</td>
              <td>
               <script>
                  if(${sessionScope.loginUser.gender} ==1){
                     document.write('남자');
                 } else{
                    document.write('여자');
                 }
               </script>
              </td>
           </tr>
           <tr>
              <td>분야</td>
              <td>
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
               </script>
              </td>
           </tr>
        </tbody>
     </table>

     <form action="/First_Project_HyunDai_GreenFood/HdgfServlet?command=withdrawal" method="post" onsubmit="return confirmation()">
     <div class="myPage-btn">
        <div class="myclick" onclick="location.href='/First_Project_HyunDai_GreenFood/HdgfServlet?command=myPageUpdateForm';">수정</div>
        <input class="myclick" type="submit" value="탈퇴">
     </div>
     <!-- input type hidden과 같은 역할 -->
        <div style="display: none">
           <input type="text" name="user_id" value="${sessionScope.loginUser.user_id}">
        </div>
     </form>
  </div>

</body>
</html>
<%@ include file="/Inc/Footer.jspf"%>


