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
<style>

</style>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="content">
		<div id="announce">
			<span>${member.cname}님은 <span>${member.grade}</span>회원입니다.</span>
			<c:if test="${member.grade != 'svip' }">
				<span>다음 등급까지 남은 주문 횟수는<span>${member.ghigh -  count}</span>건 입니다.</span>
			</c:if>
			<c:if test="${member.grade eq 'svip' }">
				<span>고객님의 주문 횟수는<span>${count}</span>건 입니다.</span>
			</c:if>
		</div>
		<div id="announce_img">
		</div>
		<div id="announce_bot">
			<div id="announce_point">
				<span>고객님의 point는 <span>${member.cpoint }</span>p 입니다.</span>
			</div>
			<div id="take_coupon"></div>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>