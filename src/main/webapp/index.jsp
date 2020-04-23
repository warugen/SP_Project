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
	<%-- <jsp:forward page="main.do"/> --%>
	<a href="main.do" class="btn2">메인화면</a>
	<a href="cart.do?method=cart" class="btn1">카트</a>
	<a href="notice.do?method=noticeList" class="btn2">공지사항</a>
	<a href="product.do?method=detailProduct" class="btn1">제품상세</a>
	<a href="Order_detail_product_mid.do?method=listOrder_detailByCid" class="btn2">주문 리스트</a>
	<a href="Order_detail_product_mid.do?method=listOrder_detailByMid" class="btn1">마켓별 주문 리스트</a>
</body>

</html>


