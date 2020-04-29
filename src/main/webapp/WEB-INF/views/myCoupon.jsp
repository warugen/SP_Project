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
	$(document).ready(function() {

	})
</script>
<style>
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
#content #mypagewrap{
	width: 1000px;
}
#content #top_info{
padding: 0;
font-weight: 400;
font-size: 14px;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
display: table;
width: 100%;
margin: 0 0 35px 0;
border: 1px solid #e3e3e3;
background: #f7f9f8;
border-top: 1px solid #999;
}
#content #top_info .mygrade{
margin: 0;
font-weight: 400;
font-size: 14px;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
display: table-cell;
width: 30%;
padding: 20px 0 20px 0;
text-align: center;
vertical-align: middle;
background: #f7f9f8;
}
#content #top_info .mygrade .grade_txt{
text-align: center;
margin: 0;
padding: 0;
font-weight: 400;
font-size: 14px;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
}
#content #top_info .myCouponCount{
margin: 0;
padding: 0;
font-weight: 400;
font-size: 14px;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
display: table-cell;
width: 69%;
vertical-align: middle;
background: #ffffff;
}
#content #top_info .myCouponCount ul{
margin: 0;
font-weight: 400;
color: #333;
letter-spacing: -0.6px;
list-style: none;
width: 100%;
padding: 27px 10px 27px 10px;
font-size: 0;
line-height: 1;
}
#content #top_info .myCouponCount ul li:nth-child(1),
#content #top_info .myCouponCount ul li:nth-child(2){
margin: 0;
padding: 0;
font-weight: 400;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
list-style: none;
display: inline-block;
width: 33%;
font-size: 14px;
text-align: center;
border-left: none 0;


}
#content #top_info .myCouponCount ul li:nth-child(1) span:nth-child(1),
#content #top_info .myCouponCount ul li:nth-child(1) span:nth-child(2) {
list-style: none;
text-align: center;
margin: 0;
font-weight: 400;
font-size: 14px;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
display: block;
padding: 0 10px 0 10px;	
}
#content #top_info .myCouponCount ul li:nth-child(1) span:nth-child(2) em,
#content #top_info .myCouponCount ul li:nth-child(2) span:nth-child(2) em{
list-style: none;
text-align: center;
margin: 0;
font-size: 14px;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
font-style: normal;
display: block;
padding: 15px 0 15px 0;
font-weight: bold;
}
#content #top_info .myCouponCount ul li:nth-child(1) span:nth-child(2) strong,
#content #top_info .myCouponCount ul li:nth-child(2) span:nth-child(2) strong
{
list-style: none;
text-align: center;
line-height: 1.3;
letter-spacing: -0.6px;
font-weight: 500;
padding: 0 3px 0 0;
font-size: 24px;
color: red;
}
#content #top_info .myCouponCount ul li:nth-child(2) span:nth-child(1),
#content #top_info .myCouponCount ul li:nth-child(2) span:nth-child(2) {
list-style: none;
text-align: center;
margin: 0;
font-weight: 400;
font-size: 14px;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
display: block;
padding: 0 10px 0 10px;
}
#content #order_info{
width:1000px;
margin: 0;
padding: 0;
font-weight: 400;
font-size: 14px;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
}

#content #order_info .order_title{
font-weight: 400;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
margin: 0 0 0 0;
padding: 0 0 10px 0;
font-size: 16px;
}
#content #order_info .order_info_content{
width:1000px;
font-weight: 400;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
margin: 0 0 30px 0;
padding: 35px 0 35px 0;
font-size: 0;
border: 1px solid #e3e3e3;
border-top: 1px solid #999999;
text-align: center;
}
#content #order_info .order_info_content ol{
text-align: center;
margin: 0;
padding: 0;
font-weight: 400;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
list-style: none;
display: inline-block;
width: 80%;
font-size: 0;
border-right: 1px solid #e3e3e3;
vertical-align: middle;
}
#content #order_info .order_info_content ol li:nth-child(1){
margin: 0;
font-weight: 400;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
list-style: none;
display: inline-block;
width: 10%;
min-width: 66px;
padding: 0 10px 0 30px;
font-size: 13px;
text-align: center;
padding-left: 10px;
background: none 0;
}
#content #order_info .order_info_content ol li:nth-child(2),
#content #order_info .order_info_content ol li:nth-child(3),
#content #order_info .order_info_content ol li:nth-child(4),
#content #order_info .order_info_content ol li:nth-child(5),
#content #order_info .order_info_content ol li:nth-child(6){
margin: 0;
font-weight: 400;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
list-style: none;
display: inline-block;
width: 10%;
min-width: 66px;
padding: 0 10px 0 30px;
font-size: 13px;
text-align: center;
}
#content #order_info .order_info_content ol li:nth-child(1) b,
#content #order_info .order_info_content ol li:nth-child(2) b,
#content #order_info .order_info_content ol li:nth-child(3) b,
#content #order_info .order_info_content ol li:nth-child(4) b,
#content #order_info .order_info_content ol li:nth-child(5) b,
#content #order_info .order_info_content ol li:nth-child(6) b{
list-style: none;
text-align: center;
margin: 0;
font-weight: 400;
font-size: 14px;
line-height: 1.3;
color: #333;
letter-spacing: -0.6px;
display: block;
padding: 0 0 15px 0;
}
#content #order_info .order_info_content ol li:nth-child(1) strong,
#content #order_info .order_info_content ol li:nth-child(2) strong,
#content #order_info .order_info_content ol li:nth-child(3) strong,
#content #order_info .order_info_content ol li:nth-child(4) strong,
#content #order_info .order_info_content ol li:nth-child(5) strong,
#content #order_info .order_info_content ol li:nth-child(6) strong{
letter-spacing: -0.6px;
list-style: none;
font-weight: 500;
display: inline-block;
width: 52px;
height: 52px;
color: #ffffff;
font-size: 18px;
background-color:#cccccc;
border-radius:100px;
text-align: center;
vertical-align: middle;
box-sizing: border-box;
line-height: 52px;
}
</style>
</head>
<body>
	<div id="content">
		<div id="mypagewrap">
			<div id="mainmenu">
				<ul class="menu_list">
					<li class="menu1"><a href="${conPath }/myPage.do">전체 주문 내역</a></li>
					<li class="menu2"><a href="">정보수정</a>
					<li class="menu3"><a href="${conPath }/myCoupon.do">쿠폰</a></li>
					<li class="menu4"><a href="${conPath }/myAddressList.do">주소지 설정</a>
					</li>
				</ul>
			</div>	
		</div>
		<div id="mypagewrap">
			<div id="top_info">
				<div class="mygrade">
					<div class="grade_txt">
						<p>XXX님의</p>
						<p>회원등급은<span>'일반회원'</span>입니다.</p>
					</div>
				</div>
				<div class="myCouponCount">
					<ul>
						<li>
							<span>
								<img src="http://placehold.it/68x68" />
							</span>
							<span>
								<em>쿠폰</em>
								<strong>1</strong>장
							</span>
						</li>
						<li>
							<span>
								<img src="http://placehold.it/68x68" />
							</span>
							<span>
								<em>적립금</em>
								<strong>0</strong>원
							</span>
						</li>
					</ul>
				</div>
			</div>
			<div id="order_info">
				<div class="order_title">
					<h3>진행 중인 주문</h3>
				</div>
				<div class="order_info_content">
					<ol>
						<li><b>임금대기</b><strong>0</strong></li>
						<li><b>결제완료</b><strong>0</strong></li>
						<li><b>상품준비중</b><strong>0</strong></li>
						<li><b>배송중</b><strong>0</strong></li>
						<li><b>배송완료</b><strong>0</strong></li>
						<li><b>구매확정</b><strong>0</strong></li>
					</ol>
					<div class="order_case_list">
						<ul>
							<li>
								<b>▶  취소</b>
								<span>0</span>건
							</li>
							<li>
								<b>▶  교환</b>
								<span>0</span>건
							</li>
							<li>
								<b>▶  반품</b>
								<span>0</span>건
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>