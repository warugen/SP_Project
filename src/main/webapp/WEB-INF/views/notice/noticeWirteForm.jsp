<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }" />
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
	
	<div id="content">
		<form action="${conPath }/notice.do?method=noticeWrite" method="post">
			<table>
				<tr>
					<th>제목</th>
					<td><input type="text" name="ntitle"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="50" cols="50" name="ncontent" style="resize:none "></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="등록">
									<input type="reset" value="취소">
									<input type="button" value="목록" onclick="location.href='${conPath}/notice.do?method=noticeList'">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>