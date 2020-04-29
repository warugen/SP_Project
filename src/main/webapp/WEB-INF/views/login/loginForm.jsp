<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link href="${conPath }/css/style.css" rel="stylesheet">
<link href="${conPath }/css/login/login.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../main/header.jsp" />
	<div id="contentWrap" class="userWrap">
			<h3>회원종류를 선택해 주세요.</h3>
		<section class="joinSelectWrap">
			<table>
				<tr>
					<th id="buttonWrap">
							<a href="login.do?method=memberLogin" class="btn1">일반회원로그인</a>
							<a href="market.do?method=marketLogin" class="btn2">입점상점로그인</a>
					</th>
				</tr>
			</table>
		</section>
	</div>
	<jsp:include page="../main/footer.jsp" />	
</body>
</html>