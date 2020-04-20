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
<link href="${conPath }/css/style.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function() {
		
	})
</script>
</head>
<body>
	<div id="condtent">
		<form action="${conPath }/notice.do?method=noticeModify">
			<table>
				<tr>
				<th>제목</th><td>${noticeModify.ntitle }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="2">
						<textarea rows="50" cols="50" name="ncontent" style="resize:none ">${noticeModify.ncontent }</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="확인">
						<input type="reset" value="취소">
						<input type="button" value="뒤로가기" onclick="history.go(-1)">
				</tr>
			</table>
		</form>
	</div>
</body>
</html>