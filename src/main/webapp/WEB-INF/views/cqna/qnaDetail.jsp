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
<link href="${conPath}/css/qna/admin.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" ></script>
<script type="text/javascript">
	$(document).ready(function() {
		
	});
</script>
</head>
<body>
<jsp:include page="../main/header.jsp"/>
<section>
<div id="wrap">
		<div id="DetailForm">
			<table>
					<tr>
						<td colspan="2" id="writeFirstLine">
							문의 내용
						</td>
					</tr>
					<tr>
						<td class="content" id="qWriter">
							작성자
						</td>
						<td class="content">
						<c:if test="${not empty detail.cid }">
							${detail.cid }						
						</c:if>
						<c:if test="${not empty detail.aid }">
							관리자						
						</c:if>
						</td>
					</tr>
					<tr>
						<td class="content" id="qTitle">
							제목
						</td>
						<td class="content">
							${detail.cqtitle }
						</td>
					</tr>
					<tr>
						<td class="content" id="qContent">
							문의 내용
						</td>
						<td class="content" style="height:400px;" >
							${detail.cqcontent }
						</td>
					</tr>
					<tr class="lastRow">
						<td class="content" id="qIp">
							작성일
						</td>
						<td class="content">
							<fmt:formatDate value="${detail.cqrdate }" pattern="YY/MM/dd(E)"/>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align:center;">
							<c:if test="${detail.cid eq member.cid || detail.aid eq admin.aId }">
								<button onclick="location.href='${conPath}/customerQna.do?method=modifyForm&pageNum=${param.pageNum }&cqcode=${detail.cqcode}'">수정하기</button>			
							</c:if>
							<button onclick="location.href='${conPath}/customerQna.do?method=qnaList&pageNum=${param.pageNum }'">목록으로</button>
							<%-- <c:if test="${not empty admin }"> --%>
								<button onclick="location.href='${conPath}/customerQna.do?method=replyFrom&cqcode=${detail.cqcode }&pageNum=${param.pageNum }'">답변작성</button>
							<%-- </c:if> --%>
						</td>
					</tr>
				</table>
		</div>
	</div>
	</section>
<jsp:include page="../main/footer.jsp"/>
</body>
</html>