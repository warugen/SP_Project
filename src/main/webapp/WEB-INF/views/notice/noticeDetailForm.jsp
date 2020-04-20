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
			<table>
				<tr>
				<th>제목</th>
				<td>${noticeDetail.ntitle }</td>
				<th>등록일</th>
				<td><fmt:formatDate value="${noticeDetail.nrdate }" pattern="yyyy/MM/dd"/></td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="50" cols="50" name="ncontent" style="resize:none ">${noticeDetail.ncontent }</textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="수정" onclick="location.href='${conPath }/notice.do?method=noticeModifyForm'">
						<input type="button" value="삭제" onclick="location.href='${conPath }/notice.do?method=noticeDelete'">
						<input type="button" value="뒤로가기" onclick="history.go(-1)">
				</tr>
			</table>
	</div>
</body>
</html>