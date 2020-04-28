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
<link href="${conPath }/css/order/order.css" rel="stylesheet">
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
				<th>주문일자</th><th>주문 상품 정보</th><th>상품금액(수량)</th><th>배송비(판매자)</th><th>주문상태</th>
			</tr>
			<c:forEach var="order" items="${list }">
			<tr>
				<td><fmt:formatDate value="${order.otime }" pattern="yyyy-MM-dd"/><br><input type="button" value="주문상세보기"></td>
				<td>${order.poname}</td>
				<td><fmt:formatNumber value="${order.poprice }" pattern="#,###,###"/><br>(${order.odcount}개)</td>
				<td>3,000원<br>${order.mid}</td>
				<td>
					<input type="button" value="구매확정"><br>
					<input type="button" value="배송조회"><br>
					<input type="button" value="리뷰작성">
				</td>
			</tr>
			</c:forEach>
		</table>
		<div class="paging">
			<c:if test="${paging.startpage>paging.blocksize }">
				[ <a href="${conPath }/Order_detail_product_mid.do?method=listOrder_detailByCid&pagenum=${paging.startpage-1}">이전</a> ]
			</c:if>
			<c:forEach var="i" begin="${paging.startpage }" end="${paging.endpage }">
				<c:if test="${paging.currentpage==i }">
					[ <b> ${i }</b> ]
				</c:if>
				<c:if test="${paging.currentpage!=i }">
					[ <a href="${conPath }/Order_detail_product_mid.do?method=listOrder_detailByCid&pagenum=${i }">${i }</a> ]
				</c:if>
			</c:forEach>
			<c:if test="${paging.endpage<paging.pagecnt }">
				[ <a href="${conPath }/Order_detail_product_mid.do?method=listOrder_detailByCid&pagenum=${paging.endpage+1}">다음</a> ]
			</c:if>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>