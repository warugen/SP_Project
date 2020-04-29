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
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function() {
		
	})
</script>
<style>
/* 최근주문내역 ****************************************************************** */
#content #mypagewrap{
	width: 1000px;
	height: 60px;
	display:block;
}
#content #mypagewrap .menu_list{
width: 1000px;
height: 60px;
font-size: 12px;
color: #676767;
vertical-align: top;
border: 0;
margin: 0;
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
#content  #ordertitle{
color: #444;
vertical-align: top;
border: 0;
margin: 20px 0 0 0;
padding: 0;
height: 43px;
padding-top: 14px;
}
#content #ordertitle p{
font-weight:bold;
font-size: 1.5em;
}
#content #myorderlist{
width:1000px;
color: #444;
vertical-align: top;
border: 0;
margin: 10px auto;
padding: 0;
}
#content #myorderlist table{
width: 100%;
vertical-align: top;
border: 0;
margin: 0;
padding: 0;
color: #676767;
border-collapse: collapse;
border-spacing: 0;
clear: both;
}
#content #myorderlist table .fieldname{
color: #676767;
border-collapse: collapse;
border-spacing: 0;
vertical-align: top;
border: 0;
margin: 0;
padding: 0;
}
#content #myorderlist table .fieldname th:nth-child(1) {
width:160px;
border-collapse: collapse;
border-spacing: 0;
vertical-align: top;
border: 0;
margin: 0;
padding: 0;
font-style: normal;
font-weight: normal;
height: 21px;
background: url(//pics.gmarket.co.kr/pc/ko/myg/bg_myg_table.png) repeat-x;
color: rgb(255, 255, 255);
padding-top: 10px;
font-size: 11px;
}
#content #myorderlist table .fieldname th:nth-child(2){
width:500px;
border-collapse: collapse;
border-spacing: 0;
vertical-align: top;
border: 0;
margin: 0;
padding: 0;
font-style: normal;
font-weight: normal;
background: url(//pics.gmarket.co.kr/pc/ko/myg/bg_myg_table.png) repeat-x;
height: 21px;
color: rgb(255, 255, 255);
padding-top: 10px;
font-size: 11px;
}
#content #myorderlist table .fieldname th:nth-child(3){
width:180px;
border-collapse: collapse;
border-spacing: 0;
vertical-align: top;
border: 0;
margin: 0;
padding: 0;
font-style: normal;
font-weight: normal;
background: url(//pics.gmarket.co.kr/pc/ko/myg/bg_myg_table.png) repeat-x;
height: 21px;
color: rgb(255, 255, 255);
padding-top: 10px;
font-size: 11px;
}
#content #myorderlist table .fieldname th:nth-child(4){
width:160px;
border-collapse: collapse;
border-spacing: 0;
vertical-align: top;
border: 0;
margin: 0;
padding: 0;
font-style: normal;
font-weight: normal;
background: url(//pics.gmarket.co.kr/pc/ko/myg/bg_myg_table.png) repeat-x;
height: 21px;
color: rgb(255, 255, 255);
padding-top: 10px;
font-size: 11px;
}
#content #myorderlist table .fieldvalue{
color: #676767;
border-collapse: collapse;
border-spacing: 0;
vertical-align: top;
border: 0;
margin: 0;
padding: 0;
}
#content #myorderlist table .fieldvalue td{
text-align: center;
border: 1px solid #cccccc;
box-sizing: border-box;
}
/* 최근주문내역 ****************************************************************** */
</style>
</head>
<body>
	<div id="content">
		<div id="mypagewrap">
			<div id="mainmenu">
				<ul class="menu_list">
					<li class="menu1">
						<a href="${conPath }/myPage.do">전체 주문 내역</a>
					</li>
					<li class="menu2">
						<a href="">정보수정</a>
					</li>
					<li class="menu3">
						<a href="${conPath }/myCoupon.do">쿠폰</a>
					</li>
					<li class="menu4">
						<a href="${conPath }/myAddressList.do">주소지 설정</a>
					</li>
				</ul>
			</div>	
		</div>
		<div id="ordertitle">
				<p>최근 주문내역</p>
		</div>
		<div id="myorderlist">
			<table>
				<tr class="fieldname">
					<th>날짜</th><th>상품정보</th><th>상태</th><th>확인/신청</th>
				</tr>
				<tr class="fieldvalue">
<!-- 					<td>최근 한 달간 주문내역이 없습니다.</td> -->
					<td>2020-04-28</td>
					<td>[루메나] 오난코리아 루메나 N9-FAN STAND 2세대 탁상용 선풍기</td>
					<td>집하</td>
					<td>구매완료</td>
				</tr>
			</table>
		</div>
		
	</div>
</body>
</html>