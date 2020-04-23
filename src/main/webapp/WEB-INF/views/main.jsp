<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	 여기는 메인입니다.
 	<a href="${conPath }/product.do?method=detailProduct">상세보기</a>
 	<a href="${conPath }/favorit.do?method=favoritList">찜 목록</a>
 	<a href="${conPath }/notice.do?method=noticeList">공지사항</a>
 	<a href="${conPath }/Order_detail_product_mid.do?method=listOrder_detailByCid">회원별 주문 목록</a>
</body>
</html>