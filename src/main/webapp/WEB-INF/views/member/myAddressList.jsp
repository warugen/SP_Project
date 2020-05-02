<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${conPath }/css/style.css" rel="stylesheet">
<style>
#content #mypagewrap{
	width: 1000px;
	height: 60px;
	display:block;
	margin-top: 20px;
}
#content #mypagewrap .menu_list{
width: 1000px;
height: 60px;
font-size: 12px;
color: #676767;
vertical-align: top;
border: 0;
margin:160px 0 0 0;
padding: 0;
position: absolute;
top: 0;
}
#content .menu1 ,#content .menu2,#content .menu3,#content .menu4{
width: 240px;
height: 60px;
font-size: 0;
border: 0;
margin: 0 auto;
padding: 0;
list-style: none;
display: inline-block;
vertical-align: top;
background: #fff;
 border-radius: 10px;
 border: 3px solid #3a5485;
box-sizing: border-box; 
cursor: pointer;
text-align: center;
}
#content .menu1{
	margin-left: 15px;
}
#content .menu1 a,#content .menu2 a,#content .menu3 a,#content .menu4 a{
width: 240px;
height: 60px;
font-size: 23px;
font-weight:bold;
line-height: 60px;
margin: 0 auto;
 color: #3a5485;
 display: block;
}
#content  #addresstitle{
display: block;
color: #444;
vertical-align: top;
border: 0;
margin: 20px 0 0 0;
padding: 0;
height: 43px;
padding-top: 14px;
overflow: hidden;
}
#content #addresstitle p{
font-weight:bold;
font-size: 1.5em;
float: left;
}
#content #addresstitle button{
float: left;
margin-left: 60px;
} 
#content #myaddresslist{
color: #444;
display: block;
}
#content #myaddresslist table{
border-collapse: collapse;
margin: 0 auto;
}
#content #myaddresslist .fieldname{
color: #676767;
border-collapse: collapse;
border-spacing: 0;
margin: 0;
padding: 0;
}
#content #myaddresslist .fieldname th:nth-child(1) {
text-align:center;
width:130px;
border-collapse: collapse;
border-spacing: 0;
margin: 0;
line-height: 18px;
color: #777;
font-size: 11px;
border-top: 1px solid #666;
border-bottom: 1px solid #bbb;
background: #f7f7f7;
border-left: none;
text-align: center;
}
#content #myaddresslist .fieldname th:nth-child(2){
text-align:center;
width:130px;
border-collapse: collapse;
border-spacing: 0;
margin: 0;
line-height: 18px;
color: #777;
font-size: 11px;
text-align: center;
border-top: 1px solid #666;
border-bottom: 1px solid #bbb;
border-left: 1px solid #dedede;
background: #f7f7f7;
}
#content #myaddresslist .fieldname th:nth-child(3){
text-align:center;
width:500px;
border-collapse: collapse;
border-spacing: 0;
margin: 0;
line-height: 18px;
color: #777;
font-size: 11px;
text-align: center;
border-top: 1px solid #666;
border-bottom: 1px solid #bbb;
border-left: 1px solid #dedede;
background: #f7f7f7;
}
#content #myaddresslist .fieldname th:nth-child(4){
text-align:center;
width:120px;
border-collapse: collapse;
border-spacing: 0;
margin: 0;
line-height: 18px;
color: #777;
font-size: 11px;
text-align: center;
border-top: 1px solid #666;
border-bottom: 1px solid #bbb;
border-left: 1px solid #dedede;
background: #f7f7f7;
}
#content #myaddresslist .fieldname th:nth-child(5){
text-align:center;
width:120px;
border-collapse: collapse;
border-spacing: 0;
margin: 0;
line-height: 18px;
color: #777;
font-size: 11px;
text-align: center;
border-top: 1px solid #666;
border-bottom: 1px solid #bbb;
border-left: 1px solid #dedede;
background: #f7f7f7;
}
#content #myaddresslist table .fieldvalue td{
text-align: center;
border-collapse: collapse;
border-spacing: 0;
border: 1px solid #cccccc;
}
.btn1{
	background: #3a5485;
    color: #fff;
	font-size: 12px;
    font-weight: 700;
    display: inline-block;
    position: relative;
    width: 100px;
    line-height: 50px;
    height:30px;
    border: 2px solid #3a5485;
    border-radius: 10px;
    text-align: center;
}
.btnwrite{
padding: 0;
text-align: center;
margin: 10px auto;
padding-top: 10px;
}
</style>
</head>
<body>	
	<jsp:include page="../main/header.jsp"/>
	<div id="content">
		<div id="mypagewrap">
			<div id="mainmenu">
				<ul class="menu_list">
					<li class="menu1">
						<a href="${conPath }/myPage.do">전체 주문 내역</a>
					</li>
					<li class="menu2">
						<a href="">정보수정</a>
					<li class="menu3"><a href="${conPath }/coupon.do?method=myCoupon&cid=${member.cid}">쿠폰</a></li>
					<li class="menu4">
						<a href="${conPath }/myAddressList.do">주소지 설정</a>
					</li>
				</ul>
			</div>	
		</div>
		<div id="addresstitle">
			<p>주소설정</p><br>
		</div>	
		<div id="myaddresslist">
			<table>
				<tr class="fieldname">
					<th>선택</th><th>배송지명</th><th>주소</th>
				</tr>
				<tr class="fieldvalue">
					<td><input type="checkbox" name="cartno" value="" id="" class="check" checked="checked"></td>
					<td>(주)호성테크닉스</td>
					<td>서울시 종로구 수표로 256-3 호성빌딩 4층</td>
				</tr>
			</table>
			<div class="btnwrite">
			<a href="${conPath }/myAddressList.do?method=addrlistAdd" class="btn1">주소 추가하기</a>
			</div>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp"/>
</body>
</html>