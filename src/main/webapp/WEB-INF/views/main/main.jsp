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
<style></style>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
* {
	padding: 0;
	margin: 0;
}

a {
	text-decoration: none;
	color: black;
}

li {
	list-style: none;
}

#content {
	width: 1000px;
	margin: 0 auto;
}

#content .section1 .side_banner {
	float: left;
	width: 1002px;
	height: 400px;
	border: 1px solid lightgray;
	line-height: 400px;
	text-align: center;
	box-sizing: border-box;
	margin-bottom:10px;
	margin-top:10px;
}

#content .section2 .hit_product {
	width: 1000px;
	height: 400px;
	margin: 0 auto;
	border: 1px solid lightgray;
	overflow: hidden;
}

#content .section2 .hit_product ul li {
	float: left;
	width: 240px;
	height: 400px;
	border: 1px solid lightgray;
	margin-left: 7px;
	line-height: 400px;
	text-align: center;
	box-sizing: border-box;
}

#content .section2 .md_product {
	width: 1000px;
	height: 400px;
	margin: 10px auto;
	border: 1px solid lightgray;
	overflow: hidden;
}

#content .section2 .md_product ul li {
	float: left;
	width: 240px;
	height: 400px;
	border: 1px solid lightgray;
	margin-left: 7px;
	line-height: 400px;
	text-align: center;
	box-sizing: border-box;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="content">
	<div><a href="${conPath }/product/productList.do">상품리스트</a></div>
		<div class="section1">
			<div class="side_banner">
				<a href=""><img src="${conPath }/img/NOTHING.JPG"></a>
			</div>
		</div>
		<div class="section2">
			<div class="hit_product">
				<ul>
					<li><a href=""><img src="${conPath }/img/NOTHING.JPG"></a></li>
					<li><a href=""><img src="${conPath }/img/NOTHING.JPG"></a></li>
					<li><a href=""><img src="${conPath }/img/NOTHING.JPG"></a></li>
					<li><a href=""><img src="${conPath }/img/NOTHING.JPG"></a></li>
				</ul>
			</div>
			<div class="md_product">
				<ul>
					<li><a href=""><img src="${conPath }/img/NOTHING.JPG"></a></li>
					<li><a href=""><img src="${conPath }/img/NOTHING.JPG"></a></li>
					<li><a href=""><img src="${conPath }/img/NOTHING.JPG"></a></li>
					<li><a href=""><img src="${conPath }/img/NOTHING.JPG"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>