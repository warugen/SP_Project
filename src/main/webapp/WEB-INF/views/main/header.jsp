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
				<li><a href="">정보수정</a></li>
				<li><a href="javascript:logout(this);">로그아웃</a></li>
				<li><a>${member.cname }님</a></li>
			</ul>
		</c:if>
		<c:if test="${not empty market}">
			<ul>
				<li><a href="">정보수정</a></li>
				<li><a href="javascript:logout(this);">로그아웃</a></li>
				<li><a>${market.mname }님</a></li>
			</ul>
		</c:if>
		<c:if test="${not empty admin}">
			<ul>
				<li><a href="">정보수정</a></li>
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
				<li><a href="main.do?typecode=1-">의류/잡화</a>
					<ul>
						<li><a href="main.do?typecode=1-1"> 여성의류</a></li>
						<li><a href="main.do?typecode=1-2"> 남성의류</a></li>
						<li><a href="main.do?typecode=1-3"> 유아의류</a></li>
						<li><a href="main.do?typecode=1-4"> 패션잡화</a></li>
					</ul>
				</li>
				<li><a href="main.do?typecode=2-">식품</a>
					<ul>
						<li><a href="main.do?typecode=2-1"> 농산</a></li>
						<li><a href="main.do?typecode=2-2"> 수산</a></li>
						<li><a href="main.do?typecode=2-3"> 축산</a></li>
						<li><a href="main.do?typecode=2-4"> 가공식품</a></li>
					</ul>
				</li>
				<li><a href="main.do?typecode=3-">디지털/가전/컴퓨터</a>
					<ul>
						<li><a href="main.do?typecode=3-1"> TV</a></li>
						<li><a href="main.do?typecode=3-2"> 컴퓨터</a></li>
						<li><a href="main.do?typecode=3-3"> 냉장고</a></li>
						<li><a href="main.do?typecode=3-4"> 휴대폰</a></li>
					</ul>
				</li>
				<li><a href="main.do?typecode=4-">가구/인테리어</a>
					<ul>
						<li><a href="main.do?typecode=4-1"> 침실가구</a></li>
						<li><a href="main.do?typecode=4-2"> 거실가구</a></li>
						<li><a href="main.do?typecode=4-3"> 수납가구</a></li>
						<li><a href="main.do?typecode=4-4"> 주방가구</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</header>
</body>
</html>