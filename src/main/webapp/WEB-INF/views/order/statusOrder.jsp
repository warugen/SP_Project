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
<link href="${conPath }/css/style.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	
});
</script>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="content">
		<table>
			<tr>
				<th>주문일자</th><th>주문 상품 정보</th><th>상품금액(수량)</th><th>배송비</th><th>주문상태</th>
			</tr>
			<c:forEach var="order" items="${list }">
			<tr>
				<td colspan="5">${order.odcode} / ${order.poname} / ${order.mid}/ ${order.osum}
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>