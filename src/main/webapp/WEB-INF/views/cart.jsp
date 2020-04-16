<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link href="${conPath }/css/style.css" rel="stylesheet">
<style>
body{
	background-color: #e2dfdf;
}
#cart_head{
	position: relative;
	width: 1000px;
	height: 75px;
}
#cart_head_left{
	width: 50%;
    height: 75px;
    line-height: 75px;
    font-size: 2.3em;
    font-weight: bold;
}
#cart_head_left img{
	width: 35px;
}
#cart_head_right{
	top: 60%;
    right: 0;
    position: absolute;
    width: 50%;
}
#cart_head_right li{
	float: right;
}
.list{
	height:150px;
}
</style>
</head>
<body>
	<div id="content">
		<div id="cart_head">
			<div id="cart_head_left">
				<img src="${conPath }/img/cart.png">장바구니
			</div>
			<ul id="cart_head_right">
				<li>주문완료</li>
				<li> > </li>
				<li>주문/결제</li>
				<li> > </li>
				<li>장바구니</li>
			</ul>
		</div>
		<hr>
		<form action="">
			<c:forEach var="cart" items="${list }">
				<div class="list">
					<input type="checkbox" name="Cartno" value="${cart.cartno }">
					/ ${cart.pocode } /${cart.poname }/${cart.ponet } <br>
				</div>
			</c:forEach>
		</form>
	</div>
</body>
</html>