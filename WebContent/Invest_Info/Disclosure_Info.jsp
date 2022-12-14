<!--작성자 김찬중-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공시정보</title>
<link href="../css/II_style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<%@ include file="/Inc/Header.jspf"%>
	<div class="sub_contents">
		<div class="title_description">
			<h2 class="title_sub">공시정보</h2>
			<p class="sub_description">현대그린푸드의 공시정보를 알려드립니다.</p>
		</div>
		<div class="director_area">
			<div class="iframe_area_korea iframe_area_korea2" style="width: 750px">
				<iframe width="100%" height="90%" frameborder="0" scrolling="no" marginheight="0" topmargin="0" leftmargin="0" src="https://dart.fss.or.kr/html/search/SearchCompanyIR3_M.html?textCrpNM=005440"></iframe>
			</div>
			<div class="btn_rule_acrobat">
				<p class="btn_rule">
					<a href="asd.pdf"><img src="../img/Invest/di_01.jpg" alt="공시정보 관리규정" /></a>
				</p>
				<p class="acrobat_text">
					<img src="../img/Invest/di_02.jpg" class="icon_gray_ball" alt="" /> PDF 내용을 보시려면 Acrobat Reader를 설치해야 합니다. <span><img src="../img/Invest/di_03.jpg" alt="Get Adobe Reader" /></span>
				</p>
			</div>
		</div>
	</div>

	<%@ include file="/Inc/Footer.jspf"%>
</body>

</html>