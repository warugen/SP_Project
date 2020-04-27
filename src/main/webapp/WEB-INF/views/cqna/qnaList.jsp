<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${conPath }/css/style.css" rel="stylesheet">
<link href="${conPath}/css/productContent.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" ></script>
<script type="text/javascript">
function trClicked(cqcode){
	location.href='${conPath}/customerQna.do?method=detail&cqcode='+cqcode+'&pageNum=${paging.currentpage}';
}
</script>
</head>
<body>
<c:if test="${not empty resultMsg }">
	<script>
		alert('${resultMsg }');
	</script>
</c:if>
<jsp:include page="../main/header.jsp"/>

<div id="qna_list">
	<div id="title">
	<h2>고객문의 게시판</h2>
	</div>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회수</th>
		</tr>
		<c:if test="${paging.total==0 }">
			<tr>
				<td colspan="5">
					작성된 문의가 없습니다.
				</td>
			</tr>
		</c:if>
		<c:if test="${paging.total!=0 }">
			<c:forEach var="qna" items="${list }" >
				<tr onclick="trClicked(${qna.cqcode})">
				<td>${qna.cqcode }</td>
				<td class="content" id="left">
				<c:forEach var="i" begin="1" end="${qna.cqindent }">
					<c:if test="${i==qna.cqindent }">
						&nbsp;└─
					</c:if>
					<c:if test="${i!=qna.cqindent }">
						&nbsp; &nbsp; &nbsp;
					</c:if>
				</c:forEach>
				${qna.cqtitle }
				</td>
				<td>
					<c:if test="${not empty qna.cid }">
					${qna.cid }
					</c:if>
					<c:if test="${not empty qna.aid }">
					관리자
					</c:if>
				</td>
				<td><fmt:formatDate value="${qna.cqrdate }" pattern="YY/MM/dd(E)"/></td>
				<td>${qna.cqhit }</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<div class="btn_wrap">
	<%-- <c:if test="${not empty member || not empty admin }"> --%>
		<button onclick="location.href='${conPath}/customerQna.do?method=writeForm'">문의하기</button>
	<%-- </c:if> --%>
	</div>
	<div class="paging">
		<c:if test="${paging.startpage>paging.blocksize }">
			[<a href="${conPath }/customerQna.do?method=qnaList&pagenum=${paging.startpage-1}">이전</a>]
			
		</c:if>
		<c:forEach var="i" begin="${paging.startpage }" end="${paging.endpage }">
			<c:if test="${paging.currentpage==i }">
				[<b>${i }</b>]
			</c:if>
			<c:if test="${paging.currentpage!=i }">
				[<a href="${conPath }/customerQna.do?method=qnaList&pagenum=${i}">${i }</a>]
			</c:if>
		</c:forEach>
		<c:if test="${paging.endpage<paging.pagecnt }">
			[<a href="${conPath }/customerQna.do?method=qnaList&pagenum=${paging.endpage+1}">다음</a>]
		</c:if>
	</div>
</div>

<jsp:include page="../main/footer.jsp"/>
</body>
</html>