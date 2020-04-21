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
<script>
	function trClicked(pcode) {
		location.href = '${conPath}/product/productDetail.do?pcode=' + pcode + '&pagenum=${paging.currentpage}';
	 }
</script>
</head>
<body>
	<div id="content">
		<table>
			<caption>상품 목록</caption>
			<tr>
				<td colspan="3" align="right"><a
					href="${conPath }/product/productRegister.do">상품 등록</a></td>
			</tr>
			<tr>
				<th>상품코드</th>
				<th>상품명</th>
				<th>등록업체</th>
			</tr>
			<c:forEach var="product" items="${productList }">
				<tr onclick="trClicked('${product.pcode}')">
				<td>${product.pcode }
				<a href="${conPath }/product.do?method=productDetail&pcode=${product.pcode }&pagenum=${paging.currentpage }"></a></td>
				<td>${product.ptitle }</td>
				<td>${product.mid }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br>
	<br>
	<div class="paging">
		<c:if test="${paging.startpage>paging.blocksize }">
			[ <a
				href="${conPath }/product/productList.do?pagenum=${paging.startpage-1}">이전</a> ]
		</c:if>
		<c:forEach var="i" begin="${paging.startpage }"
			end="${paging.endpage }">
			<c:if test="${paging.currentpage==i }">
				[ <b> ${i }</b> ]
			</c:if>
			<c:if test="${paging.currentpage!=i }">
				[ <a href="${conPath }/product/productList.do?pagenum=${i }">
					${i }</a> ]
			</c:if>
		</c:forEach>
		<c:if test="${paging.endpage<paging.pagecnt }">
			[ <a
				href="${conPath }/product/productList.do?pagenum=${paging.endpage+1}">다음</a> ]
		</c:if>
	</div>
</body>
</html>