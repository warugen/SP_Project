<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${conPath }/css/style.css" rel="stylesheet">
<style></style>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<div align="center">
		<hr width="500" color="green">
		<h2>상품등록</h2>
		<hr width="500" color="green">
		<form action="${conPath }/product/inputTest.do" method="post" enctype="multipart/form-data">
			<table>
				<tr><th>상품코드 : </th><td><input type="text" name="pcode"></td></tr>
				<tr><th>상품명 : </th><td><input type="text" name="ptitle"></td></tr>
				<tr><th>상품소개 : </th><td><textarea rows="5" cols="22" name="pcontent"></textarea></td></tr>
				<tr><th>이미지1 : </th><td><input type="file" name="file1"></td></tr>
				<tr><th>이미지2 : </th><td><input type="file" name="file2"></td></tr>
				<tr><th>이미지3 : </th><td><input type="file" name="file3"></td></tr>
				<tr><th>등록업체 : </th><td><input type="text" name="mid"></td></tr>
				<tr><td colspan="2">
					<input type="submit">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>