<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- kakao api -->
<script src="${conPath }/js/kakao.js" type="text/javascript"></script>
<link href="${conPath }/css/header.css" rel="stylesheet">
<script type="text/javascript">
Kakao.init('3153b15ee605504fc683c26e15e2324a')
console.log('kakao init : '+Kakao.isInitialized());
function logout() {
    /* if (!Kakao.Auth.getAccessToken()) {
      alert('Not logged in.');
      return
    } */
    if (Kakao.Auth.getAccessToken()) {
	    Kakao.Auth.logout(function() {
	    	console.log('kakao logout');
	    });    	
    } else {
    	console.log('not logged in kakao');
    }
    
    location.href='${conPath}/login.do?method=logout';
    
    /* var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    }); */
  }
</script>
</head>
<body>
	<header>
		<div class="gnb">
		<c:if test="${empty member && empty market && empty admin}">
			<ul>
				<li><a href="market.do?method=marketJoin">입점신청</a></li>
				<li><a href="login.do?method=join">회원가입</a></li>
				<li><a href="login.do?method=loginForm">로그인</a></li>
			</ul>
		</c:if>
		<c:if test="${not empty member}">
			<ul>
				<li><a href="">마이페이지</a></li>
				<li><a href="javascript:logout(this);">로그아웃</a></li>
				<li><a>${member.cname }님</a></li>
			</ul>
		</c:if>
		<c:if test="${not empty market}">
			<ul>
				<li><a href="">마이페이지</a></li>
				<li><a href="javascript:logout(this);">로그아웃</a></li>
				<li><a>${market.mname }님</a></li>
			</ul>
		</c:if>
		<c:if test="${not empty admin}">
			<ul>
				<li><a href="javascript:logout(this);">로그아웃</a></li>
				<li><a>관리자님</a></li>
			</ul>
		</c:if>
		</div>
		<div class="logo">
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;🆂-🅿🅻🅰🅲🅴
			<a href="main.do"><input type="image" name="logo" src="${conPath }/img/SP_Logo.png" width="65"></a>
			<div class="search">
				<select name="option">
					<option>전체</option>
					<option>의류/잡화</option>
					<option>식품</option>
					<option>디지털/가전/컴퓨터</option>
					<option>가구/인테리어</option>
				</select>
				<input type="text" id="search" placeholder="찾고 싶은 상품을 검색하세요">
				<input type="image" name="submit" src="${conPath }/img/loupe.png" alt="검색" width="25" />
			</div>
		</div>
		<div class="lnb">
			<div class="menu">
				<ul>
					<li><a href="">정기배송</a></li>
					<li><a href="">여행/티켓</a></li>
					<li><a href="">해외직구</a></li>
					<li><a href="">이벤트/쿠폰</a></li>
				</ul>
			</div>
		</div>
		<input type="checkbox" id="menuicon">
		<label for="menuicon">
			<span></span>
			<span></span>
			<span></span>
		</label>
		<div class="sidebar">
			<ul>
				<li><a href="">의류/잡화</a>
					<ul>
						<li><a href=""> 여성의류</a></li>
						<li><a href=""> 남성의류</a></li>
						<li><a href=""> 유아의류</a></li>
						<li><a href=""> 패션잡화</a></li>
					</ul>
				</li>
				<li><a href="">식품</a>
					<ul>
						<li><a href=""> 농산</a></li>
						<li><a href=""> 수산</a></li>
						<li><a href=""> 축산</a></li>
						<li><a href=""> 가공식품</a></li>
					</ul>
				</li>
				<li><a href="">디지털/가전/컴퓨터</a>
					<ul>
						<li><a href=""> TV</a></li>
						<li><a href=""> 컴퓨터</a></li>
						<li><a href=""> 냉장고</a></li>
						<li><a href=""> 휴대폰</a></li>
					</ul>
				</li>
				<li><a href="">가구/인테리어</a>
					<ul>
						<li><a href=""> 침실가구</a></li>
						<li><a href=""> 거실가구</a></li>
						<li><a href=""> 수납가구</a></li>
						<li><a href=""> 주방가구</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</header>
</body>
</html>