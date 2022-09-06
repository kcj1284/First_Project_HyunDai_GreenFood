<!-- 작성자 : 김민찬 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link href="../css/login.css" type="text/css" rel="stylesheet" />
</head>

<body>


    <div class="login">
        <div>
            <h3 class="title">로그인</h3>
            <form    action="" name="Login" method="post"
                onsubmit="return validateme(this);">
                <input type="hidden" id="openLogin1" name="openLogin" value="hpointLogin">
                <fieldset>

                    <div class="input_area">
                        <div class="input">
                            <input type="text" id="wrtUserId" name="j_username" placeholder="아이디">
    
                        </div>
                        <div class="input">
                            <input type="password" autocomplete="off" id="j_password" maxlength="30" name="j_password"
                                data-enc="off" data-tk-kbdType="qwerty" placeholder="비밀번호" />
                
                        </div>
                        <span class="caution_txt">
                        </span>
                        <div class="join">
                            <ul>
                                <li><a  href="./signUpForm.jsp">회원가입</a></li>
                            </ul>
                        </div>
                        <div class="btn-login">
                            <button type="submit"><span>로그인</span></button>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>



</body>

</html>