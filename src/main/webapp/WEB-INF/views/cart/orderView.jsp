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
<link href="${conPath }/css/cart/cart.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	
});
</script>
</head>
<body>
	<div id="content">
		<div id="cart_head">
			<div id="cart_head_left">
				주문결제
			</div>
			<ul id="cart_head_right">
				<li>주문완료</li>
				<li> > </li>
				<li id="status_now">주문/결제</li>
				<li> > </li>
				<li>장바구니</li>
			</ul>
		</div>
		<hr>
		<form action="">
			<table>
				<tr>
					<th>상품정보</th><th>수량</th><th>금액</th><th>배송비</th><th>쿠폰사용</th>
				</tr>
				<c:forEach var="cart" items="${list }">
					<tr class="list">
						<td>
							<div class="list_left">
								<img src="${conPath }/Product_img/${cart.pimage}">
							</div>
							<div class="list_right">
								<a><b>${cart.poname }</b></a>
								<hr>
								<span>주문 후 3일 이내에 배송 예정. (휴일 제외)</span>
							</div>
						</td>
						<td>
							<input type="hidden" value="${cart.cartno }" id="cartno${cart.cartno}">
							<input type="hidden" value="${cart.cartcount }" id="cartcount${cart.cartno}">
							<input type="hidden" value="${cart.poprice }" id="cartpoprice${cart.cartno}">
							<input type="hidden" value="${cart.cartcount * cart.poprice}" name="price_cell" id="price_cell${cart.cartno}">	
							${cart.cartcount }
						</td>
						<td>
							<span id="cart_price_ajax1${cart.cartno}" class="cart_price_ajax">
							<fmt:formatNumber value="${cart.cartcount * cart.poprice }" groupingUsed="true"/>원
							</span>
						</td>
						<td>
							<fmt:formatNumber value="3000" groupingUsed="true"/>원
						</td>
						<td>
							<a>쿠폰사용</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			<div id="total_price">
				주문금액 <b></b>원 - 할인금액 <b></b>원 = 최종결재금액 <b>30,000</b>원
			</div>
		</form>
	</div>
</body>
</html>