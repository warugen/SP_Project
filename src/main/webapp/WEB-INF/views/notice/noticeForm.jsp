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
	function noticeWrap(ncode) {
		location.href='notice.do?method=noticeDetailForm&ncode='+ncode+'&pagenum=${paging.currentpage}';
	}
</script>
<style>
#content td{
border-bottom: 1px solid #cccccc;
}
#content .noticeWrap:hover{
	cursor: pointer;
}
</style>
</head>
<body>
	<c:if test="${not empty writeResult }">
		<script>
		var writeResult = "공지사항 등록 성공";
		alert(writeResult);
		</script>
	</c:if>
	<c:if test="${not empty modifyResult }">
		<script>
		var modifyResult = "공지사항 수정 성공";
		alert(modifyResult);
		</script>
	</c:if>
	<div id="content">
		<table>
			<tr>
				<th>번호</th><th>제목</th><th>등록일</th><th>조회수</th>
			</tr>
			<c:forEach var="notice" items="${notice}">
				<tr class="noticeWrap" onclick="noticeWrap('${notice.ncode}')">
					<td>${notice.ncode }</td>
					<td>${notice.ntitle }</td>
					<td><fmt:formatDate value="${notice.nrdate }" pattern="yyyy/MM/dd"/></td>
					<td>${notice.nhit}</td>
				</tr>
			</c:forEach>
		</table>
		<div class="paging">
			<c:if test="${paging.startpage>paging.blocksize }">
				[<a href="${conPath }/notice.do?method=noticeList&pagenum=${paging.startpage-1}">이전</a>]
			</c:if>
			<c:forEach var="i" begin="${paging.startpage }" end="${paging.endpage }">
				<c:if test="${paging.currentpage==i }">
					[<b>${i }</b>]
				</c:if>
				<c:if test="${paging.currentpage!=i }">
					[<a href="${conPath }/notice.do?method=noticeList&pagenum=${i}">${i }</a>]
				</c:if>
			</c:forEach>
			<c:if test="${paing.endpage<paging.pagecnt }">
				[<a href="${conPath }/notice.do?method=noticeList&pagenum=${paging.endpage+1}">다음</a>]
			</c:if>
		</div>
		<div class="btnwrite">
			<button class="btn" onclick="location.href='${conPath}/notice.do?method=noticeWriteForm'">공지사항 등록</button>
			<button class="btn" onclick="location.href='${conPath}/notice.do?method=noticeReplyForm'">답변 등록</button>
		</div>
	</div>
</body>
</html>