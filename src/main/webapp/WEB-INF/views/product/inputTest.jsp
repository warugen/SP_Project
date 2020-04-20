<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${conPath }/css/style.css" rel="stylesheet">
</head>
<body>
	<h2>test</h2>
	<p>상품코드 : ${product.pcode }</p>
	<p>상품명 : ${product.ptitle }</p>
	<p>상품소개 : ${product.pcontent }</p>
	<p>이미지1 : ${product.pimage1 }</p>
	<p>이미지2 : ${product.pimage2 }</p>
	<p>이미지3 : ${product.pimage3 }</p>
 	<p>등록업체 : ${product.mid }</p>
</body>
</html>