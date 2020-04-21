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
	<div id="content">
		<form action="${conPath }/product_qna.do?method=writeQna">
			<table>
				<tr><th>제목</th>
					<td>
						<input type="text" name="pqtitle" style="width: 300px;">
					</td>
				<tr>
					<th>문의내용</th>
					<td>
						<textarea rows="30" name="pqcontent" cols="30" style="resize: none;">
						
						</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" class="btn1" value="확인"> 
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>