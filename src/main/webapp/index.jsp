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
</head>
<body>

	<%-- <jsp:forward page="main.do"/> --%>
	<a href="main.do" class="btn2">메인화면</a>
	<a href="cart.do?method=cart" class="btn1">카트</a>
	<a href="notice.do?method=noticeList" class="btn2">공지사항</a>
	<a href="Order_detail_product_mid.do?method=listOrder_detailByCid" class="btn1">주문 리스트</a>
	<a href="Order_detail_product_mid.do?method=listOrder_detailByMid" class="btn2">마켓별 주문 리스트</a>
	<a href="product.do?method=joinList" class="btn1">제품리스트</a>
	<form action="market.do">
	<input type="hidden" name="method" value="marketmain">
	<input type="hidden" name="mid" value="aaa">
	<input type="hidden" name="schword" value="">
	<input type="submit" class="btn2" value="마켓">
	</form>
	<form action="market.do">
	<input type="hidden" name="mid" value="aaa">
	<input type="hidden" name="method" value="unAnswerList">
	<input type="submit" class="btn1" value="마켓 qna리스트">
	</form>
	<form action="member.do">
	<input type="hidden" name="cid" value="aaa">
	<input type="hidden" name="method" value="grade">
	<input type="submit" class="btn2" value="aaa고객등급조회">
	</form>
	<div>
		<p>리뷰작성 TEST</p>
		<form action="product.do" enctype="multipart/form-data" method="post">
			<p><input type="hidden" name="method" value="insertReview"></p>
			<p>"rcontent"	<input type="text" name="rcontent" value="insertReview"></p>
			<p>"rstar"	<input type="text" name="rstar"	 value="insertReview"></p>
			<p>"rimage"	<input type="file" name="temprimage"	 value="insertReview"></p>
			<p>"cid"		<input type="text" name="cid"	value="insertReview"></p>
			<p>"pcode"	<input type="text" name="pcode"	 value="insertReview"></p>
			<input type="submit" value="등록">
		</form>
	</div>
</body>

</html>