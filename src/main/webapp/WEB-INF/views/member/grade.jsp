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
<link href="${conPath }/css/member/grade.css" rel="stylesheet">
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
			<table>
				<tr><th>${member.cname}님은 <b>${member.grade}</b>회원입니다.</th></tr>
				<tr>
					<c:if test="${member.grade != 'svip' }">
						<th>다음 등급까지 남은 주문 횟수는 ${member.ghigh -  count} 건 입니다.</th>
					</c:if>
				</tr>
				<tr>
					<c:if test="${member.grade eq 'svip' }">
						<th>고객님의 주문 횟수는 ${count} 건 입니다.</th>
					</c:if>
				</tr>
			</table>
		</div>
		<div id="announce_img">
		</div>
		<div id="announce_bot">
			<div id="announce_point">
				<p>고객님의 point는 ${member.cpoint }p 입니다.</p>
			</div>
			<div id="take_coupon"></div>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>