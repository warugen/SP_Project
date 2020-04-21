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
<link href="${conPath }/css/header.css" rel="stylesheet">
</head>
<body>
	<header>
		<div class="gnb">
		<c:if test="${empty member}">
			<ul>
				<li><a href="">입점신청</a></li>
				<li><a href="">회원가입</a></li>
				<li><a href="">로그인</a></li>
			</ul>
		</c:if>
		<c:if test="${not empty member}">
			<ul>
				<li><a href="">정보수정</a></li>
				<li><a href="">로그아웃</a></li>
				<li><a>${member.mname }님</a></li>
			</ul>
		</c:if>
		</div>
		<div class="logo">
			<a href=""><input type="image" name="logo" src="${conPath }/img/logo.png" width="180"></a>
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