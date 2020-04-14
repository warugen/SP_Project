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
</head>
<body>
	test
	<form action="${conPath }/cart.do" method="get" >
	<input type="hidden" name="method" value="listCartByCartno">
      <p>cartnos</p>
      <label><input type="checkbox" name="Cartnos" value="1"> 1</label>
      <label><input type="checkbox" name="Cartnos" value="2"> 2</label>
      <p><input type="submit" value="Submit"></p>
    </form>
	<c:forEach var="cart" items="${list }">
		${cart.cartno } / ${cart.pocode } /${cart.poname }/${cart.ponet } <br>
	</c:forEach>
	<p>쿠폰test</p>
	<a href="${conPath }/coupon.do?method=listMycoupon">test</a>
</body>
</html>