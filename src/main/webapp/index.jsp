<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<%-- <jsp:forward page="Order_detail_product_mid.do?method=listOrder_detailByCid"/> --%>
	<%-- <jsp:forward page="Product_option.do?method=registerProduct_option"/> --%>
	<jsp:forward page="main.do"/>
</body>
</body>

</html>