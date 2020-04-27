<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성하기</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

	<!-- include summernote css/js-->
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
	<link href="${conPath }/css/style.css" rel="stylesheet">
<link href="${conPath}/css/admin.css" rel="stylesheet">
	
</head>
<body>
<jsp:include page="../main/header.jsp"/>
<section>
	<div id="wrap">
		<div id="WriteForm">
			<form action="${conPath }/customerQna.do?method=write" method="post">
				<table>
					<tr>
						<td colspan="2" id="writeFirstLine">
							문의 작성
						</td>
					</tr>
					<tr>
						<td class="content" id="qWriter">
							작성자
						</td>
						<td class="content">
							<c:if test="${not empty member }">
								<input type="hidden" name="cid" readonly="readonly" value="${member.cid }">
								<input type="text" readonly="readonly" value="${member.cname }">
							</c:if>
							<c:if test="${not empty admin }">
								<input type="hidden" name="aid" readonly="readonly" value="${admin.aid }">
								<input type="text" readonly="readonly" value="관리자">
							</c:if>
						</td>
					</tr>
					<tr>
						<td class="content" id="qTitle">
							제목
						</td>
						<td class="content" id="title">
							<input type="text" name="cqtitle">
						</td>
					</tr>
					<tr>
						<td class="content" id="qContent">
							문의 내용
						</td>
						<td class="content" id="title">
							<textarea id="summernote" name="cqcontent"></textarea>
							<script>
			 $(document).ready(function() {
				 $('#summernote').summernote({
				        height: 300,
				        minHeight: null,
				        maxHeight: null,
				        lang : 'ko-KR',
				        onImageUpload: function(files, editor, welEditable) {
				                sendFile(files[0], editor, welEditable);
				            }

				    });
			 });
		 </script>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align:center;">
							<input type="button" value="취소" onclick="location.href='${conPath}/customerQna.do?method=qnaList'">
							<input type="submit" value="등록">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</section>

<jsp:include page="../main/footer.jsp"/>
</body>
</html>