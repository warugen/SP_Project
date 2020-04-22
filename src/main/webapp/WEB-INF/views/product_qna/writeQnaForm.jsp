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
 function reset() {
	 opener.location.href='product.do?method=detailProduct';
	window.close();
	}
</script>
<style>
#questionForm {
	margin: 0;
	padding: 0;
	position: fixed;
	background-color: #fff;
	z-index: 5;
	font-size: 12px;
	width: 640px;
	border: 1px solid #111111;
	display: block;
}
th{
	border-right: 1px solid #cccccc;
	border-bottom: 1px solid #cccccc;
}
td{
	border-bottom: 1px solid #cccccc;
}
h2 {
	margin: 0;
	padding: 25px 20px;
	background: #eee;
	font-size: 16px;
}
#questionForm .question_content{
font-size: 12px;
margin: 0;
padding: 30px 20px 0;
}
#questionForm .question_content table{
font-size: 100%;
border-collapse: collapse;
border-spacing: 0;
width: 100%;
border-top: 2px  solid #707070;
}
#questionForm .question_content table tbody{
font-size: 100%;
border-collapse: collapse;
border-spacing: 0;
}
#questionForm .question_content table tbody tr:nth-child(1){
font-size: 100%;
border-collapse: collapse;
border-spacing: 0;
}
#questionForm .question_content table tbody tr:nth-child(2){
font-size: 100%;
border-collapse: collapse;
border-spacing: 0;
}
#questionForm .question_content .question_info{
font-size: 12px;
margin: 0;
padding: 0;
margin-top: 10px;
}
#questionForm .question_content_footer{
font-size: 12px;
margin: 0;
text-align: center;
padding: 15px 0;
}
#questionForm .btn1, #questionForm .btn2{
width: 100px;
}
</style>
</head>
<body>
	<div id="questionForm">
		<div class="question_content">
			<form action="${conPath }/product_qna.do?method=writeQna">
				<h2>상품 문의</h2>
				<table>
					<tbody>
					<tr>
						<th>제목</th>
						<td><input type="text" name="pqtitle" style="width:230px;"></td>
						<tr>
					<th>문의내용</th>
					<td>
						<textarea name="pqcontent" cols="30" rows="10">
						
						</textarea>
					</td>
				</tr>
				</tbody>
			</table>
			<div class="question_info">
				* 개인정보(주민번호, 연락처, 주소, 계좌번호, 카드번호 등)가 포함되지 않도록 유의해주세요.
			</div>
		</form>
		</div>
		<div class="question_content_footer">
			<input type="submit" class="btn2" value="확인">
			<input type="button" class="btn1" value="취소" onclick="reset()">
		</div>
	</div>
</body>
</html>