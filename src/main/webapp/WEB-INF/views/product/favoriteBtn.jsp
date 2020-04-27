<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button class="favoriteBtn">
		<c:if test="${check==1}">
		   <img src="${conPath }/img/fav.PNG" alt="좋아요상태" style="width: 60px; height: 60px;" class="removeWish">
		</c:if>
		<c:if test="${check==0}">
		   <img src="${conPath }/img/notfav.PNG" alt="좋아요해제" style="width: 60px; height: 60px;" class="addWish">
		</c:if>
   </button>
</body>
</html>