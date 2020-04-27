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
<link href="${conPath }/css/product/product.css" rel="stylesheet">
<style></style>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	$('.logo').hide();
	$('.lnb').hide();
});
	function trClicked(pcode) {
		location.href = '${conPath}/product.do?method=detailProduct&pcode=' + pcode 
				+ '&pagenum=${paging.currentpage}';
	 }
</script>
<style>
#market_header{
	height: 70px;
    border-bottom: 1px solid #3a5485;
}
#market_header_nameArea{
	width: 1000px;
	margin:0 auto;
	height: 70px;
    line-height: 70px;
}
#market_name {
	font-size: 28px;
    line-height: 36px;
}
#market_tel{
	float: right;
}

</style>
</head>
<body>
	<jsp:include page="../main/header.jsp"/>
	<div id="market_header">
		<div id="market_header_nameArea">
			<span id="market_name">${market_header.mname }</span>
			<input type="hidden" name="mid" value="${market_header.mid }">
			<span id="market_tel">${market_header.mtel}</span>
		</div>
	</div>
	<div id="content">
		<div id="content">
			<p><a href="${conPath }/market.do?method=productRegister">상품 등록</a></p>
			<div id="test">
				<table>
					<c:forEach var="product_product_option" items="${marketmain }">
						<tr onclick="trClicked('${product_product_option.pcode}')">
							<th><img src="${conPath }/productUpload/${product_product_option.pimage1 }"><a href="${conPath }/product.do?method=productDetail&pcode=${product_product_option.pcode }&pagenum=${paging.currentpage }"></a>
							<br><br>
							상품명 : ${product_product_option.ptitle }<br>
							판매가격(최소가) : ${product_product_option.poprice}<br>
							등록업체 : ${product_product_option.mid }</th>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<br>
		<br>
		<div class="paging">
			<c:if test="${paging.startpage>paging.blocksize }">
				[ <a href="${conPath }/market.do?method=marketmain&mid=${market_header.mid}&pagenum=${paging.startpage-1}&schword=">이전</a> ]
			</c:if>
			<c:forEach var="i" begin="${paging.startpage }" end="${paging.endpage }">
				<c:if test="${paging.currentpage==i }">
					[ <b> ${i }</b> ]
				</c:if>
				<c:if test="${paging.currentpage!=i }">
					[ <a href="${conPath }/market.do?method=marketmain&mid=${market_header.mid}&pagenum=${i }&schword=">${i }</a> ]
				</c:if>
			</c:forEach>
			<c:if test="${paging.endpage<paging.pagecnt }">
				[ <a href="${conPath }/market.do?method=marketmain&mid=${market_header.mid}&pagenum=${paging.endpage+1}&schword=">다음</a> ]
			</c:if>
		</div>
	</div>
</body>
</html>