<!-- 작성자 : 김민찬 -->
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link href="../css/login.css" type="text/css" rel="stylesheet" />
    <title>회원가입 폼</title>
</head>

<body>

    <div class="signUpForm">
        <h1>회원가입</h1>
        <hr>
        <form>
            <fieldset>
                <div class="input_F">
                    <input type="text" name="user_id" placeholder="아이디">
                </div>
                <div>
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
                    <input type="radio" name="gender" value="남성" checked> 남성
                    <input type="radio" name="gender" value="여성"> 여성
                </div>
                
                <div class="select">
                    분야 &nbsp  &nbsp
                    <select>
                        <option value="급식">급식</option>
                        <option value="외식">외식</option>
                        <option value="식자재유통">식자재유통</option>
                        <option value="소매유통">소매유통</option>
                        <option value="바이어">바이어</option>
                        <option value="기타">기타</option>
                    </select>
                </div>
                

                <div class="signUpForm-btn">
                    <input type="submit" value="등록">&nbsp
                    <input type="reset" value=" 초기화">
                </div>
            </fieldset>
        </form>

    </div>

</body>

</html>