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

</head>
<body>
	<div id="condtent">
		<form action="${conPath }/notice.do?method=noticeModifyForm" method="post">
			<input type="hidden" name="ncode" value="${noticeDetail.ncode}">
			<input type="hidden" name="pagenum" value="${param.pagenum}">
		<table>
			<tr>
				<th>제목</th>
				<td>${noticeDetail.ntitle }</td>
				<th>등록일</th>
				<td><fmt:formatDate value="${noticeDetail.nrdate }"
						pattern="yyyy/MM/dd" /></td>
			</tr>
			<tr>
				<td colspan="2"><textarea rows="50" cols="50" name="ncontent"
						style="resize: none">${noticeDetail.ncontent }</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정">
					<input type="button" value="삭제" onclick="location.href='${conPath }/notice.do?method=noticeDelete$ncode=${noticeDetail.ncode }&pagenum=${param.pagenum }'">
					<input type="button" value="목록" onclick="location.href='${conPath}/notice.do?method=noticeList&pagenum=${param.pagenum}'">
			</tr>
		</table>
		</form>
	</div>
</body>
</html>