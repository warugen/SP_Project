<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${conPath }/css/style.css" rel="stylesheet">
<link href="${conPath }/css/cart/cart.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	total_products = 0;
	var checknum = 0;
	$('input[name=price_cell]').each(function(){ 
		total_products += Number($(this).val());
	    
	    checknum++;
	});
	shiping = checknum * 3000;
	$('#total_products').text(total_products + shiping);
	
	//쿠폰 적용text초기화
	$('input[type=radio]').each(function(){	
		var chnum = $(this).val();
		$('.cuname'+chnum).hide();
	});
	
	//쿠폰사용 윈도우 출력
	$('.btn_coupon').click(function () {  
		var cartno = $(this).attr('id');
	    $('#coupon_window'+cartno).show(); 
	    wrapWindowByMask();
	});
	//쿠폰 적용하기
	$('.btn_coupon_apply').click(function () {
		var cartno = $(this).attr('id').substring(1);
	    $('#coupon_window'+cartno).hide();
		$('#mask').hide();
		
		//쿠폰 적용text초기화
		$('input[type=radio]').each(function(){	
			var chnum = $(this).val();
			$('.cuname'+chnum).hide();
		});
		//쿠폰(적용중)으로 text 바꾸기
		$('input[type=radio]').each(function(){	
			var chnum = $(this).val();	//chnum
			if($(this).is(':checked')){
				$('.cuname'+chnum).show();
			}
		});
	});
	//쿠폰 체크 하기
	$('input[type=radio]').change(function(){
		var cartno = $(this).attr('name').substring(5);
		var chnum = $(this).val();
		if($(this).val()==0){	//쿠폰 적용안함 체크
			$('#'+cartno).css({'color':'#fff','background-color':'#3a5485'}).html('쿠폰사용');
			$('#sail_price'+cartno).html('');
			$('#cart_price'+cartno).css({'text-decoration-line':'none','color':'black'});
		}else{	//쿠폰체크시
			var chk = 0;
			$('input[type=radio]').each(function(){	//다른제품에서 쿠폰사용여부 검사
				if($(this).is(':checked')){
					if($(this).val() == chnum){
						chk++;
					}
				}
			});
			if(chk==2){	//쿠폰 중복적용시
				alert('해당 쿠폰은 다른상품에 적용중입니다.');
				$("input:radio[name='chnum"+cartno+"']:radio[value='0']").prop('checked', true);
			}else{	//쿠폰 적용
				$('#'+cartno).css({'color':'#3a5485','background-color':'#fff'}).html('쿠폰변경');
				var price_cell = $('#price_cell'+cartno).val();
				var sail =(100 - $('.coupon'+chnum).html())/100;
				$('#sail_price'+cartno).html(price_cell*sail + '원');
				$('#cart_price'+cartno).css({'text-decoration-line':'line-through','color':'#a2a2a5'});
			}
		}
	});
	//쿠폰사용 윈도우 닫기
	$('.exit_window').click(function () {
		var cartno = $(this).attr('id').substring(1);
	    $('#coupon_window'+cartno).hide();
		$('#mask').hide();
		$("input:radio[name='chnum"+cartno+"']:radio[value='0']").prop('checked', true);
		$('#'+cartno).css({'color':'#fff','background-color':'#3a5485'}).html('쿠폰사용');
		$('#sail_price'+cartno).html('');
		$('#cart_price'+cartno).css({'text-decoration-line':'none','color':'black'});
	});
	
});

//쿠폰 모달 효과창 열기
function wrapWindowByMask(){
    var maskHeight = $(document).height();  
    var maskWidth = $(window).width();  
    $('#mask').css({'width':maskWidth,'height':maskHeight});  
    $('#mask').show();      
}

</script>
<style>
.coupon_window{
	position: fixed;
    width: 40%;
    left: 50%;
    margin-left: -20%;
    height: 400px;
    top: 50%;
    margin-top: -250px;
    overflow: auto;
    background-color: white;
    z-index: 900;
    display: none;
}
.coupon_window::-webkit-scrollbar {
	display: none;
}
#coupon_window_title{
	line-height: 45px;
    font-size: 1.5em;
    color: #3a5485;
    right: 38%;
    position: relative;
}
.coupon_window img{
	width: 20px;
    position: fixed;
    right: 30.3%;
}
.coupon_window hr{
	margin-bottom: 20px;
}
.coupon_table{
	width: 100%;
}
.coupon_table tr td{
	height:30px;
}
.coupon_table tbody tr > td:nth-child(2){
	text-align: left;
}
.coupon_table tr td:nth-child(n+2){
	width:30%;
}
.btn_coupon_apply{
	background: #3a5485;
    color: #fff;
    font-size: 22px;
    font-weight: 700;
    width: 300px;
    line-height: 20px;
    border: 2px solid #3a5485;
    border-radius: 10px;
    padding: 22px 0 19px;
    text-align: center;
    margin: 10px;
}

#mask {  
  position:absolute;  
  left:0;
  top:0;
  z-index:800;  
  background-color:#000;  
  display:none; 
  opacity: 50%; 
}
</style>
</head>
<body>
	<div id="content">
		<div id="cart_head">
			<div id="cart_head_left">
				주문결제
			</div>
			<ul id="cart_head_right">
				<li>주문완료</li>
				<li> > </li>
				<li id="status_now">주문/결제</li>
				<li> > </li>
				<li>장바구니</li>
			</ul>
		</div>
		<hr>
		<form action="">
			<table>
				<tr>
					<th>상품정보</th><th>수량</th><th>금액</th><th>배송비</th><th>쿠폰사용</th>
				</tr>
				<c:forEach var="cart" items="${list }">
					<tr class="list">
						<td>
							<div class="list_left">
								<img src="${conPath }/product_img/${cart.pimage}">
							</div>
							<div class="list_right">
								<a><b>${cart.poname }</b></a>
								<hr>
								<span>주문 후 3일 이내에 배송 예정. (휴일 제외)</span>
							</div>
						</td>
						<td>
							<input type="hidden" value="${cart.cartno }" id="cartno${cart.cartno}">
							<input type="hidden" value="${cart.cartcount }" id="cartcount${cart.cartno}">
							<input type="hidden" value="${cart.poprice }" id="cartpoprice${cart.cartno}">
							<input type="hidden" value="${cart.cartcount * cart.poprice}" name="price_cell" id="price_cell${cart.cartno}">	
							${cart.cartcount }
						</td>
						<td>
							<span id="cart_price${cart.cartno}" class="cart_price">
								<fmt:formatNumber value="${cart.cartcount * cart.poprice }" groupingUsed="true"/>원
							</span>
							<p id="sail_price${cart.cartno }"></p>
						</td>
						<td>
							<fmt:formatNumber value="3000" groupingUsed="true"/>원
						</td>
						<td>
							<a class="btn_coupon" id="${cart.cartno }">쿠폰사용</a>
							<div class="coupon_window" id="coupon_window${cart.cartno }">
								<img src="${conPath }/cart_img/x.png" class="exit_window" id="x${cart.cartno }">
								<span id="coupon_window_title">쿠폰적용</span>
								<hr>
								<table class="coupon_table">
									<tr>
										<th colspan="2">쿠폰명</th>
										<th>할인율</th>
										<th>적용금액</th>
									</tr>
									<tr>
										<td><input type="radio" name="chnum${cart.cartno }" checked="checked" value="0"></td>
										<td colspan="3">적용안함</td>
									</tr>
									<c:forEach var="coupon" items="${coupon }">
										<tr>
											<td>
												<input type="radio" name="chnum${cart.cartno }" value="${coupon.chnum }">
											</td>
											<td class="cunametd">
												<input type="hidden" name="${coupon.cuname}" value="${coupon.cuname}">
												${coupon.cuname}
												<b class="cuname${coupon.chnum }">(적용중)</b>
											</td>
											<td><span class="coupon${coupon.chnum }">${coupon.cusail}</span>%</td>
											<td>
												<fmt:formatNumber value="${cart.cartcount * cart.poprice * (100-coupon.cusail) / 100}" groupingUsed="true"/>원
											</td>
										</tr>
									</c:forEach>
								</table>
								<button type="button" class="btn_coupon_apply" id="a${cart.cartno }">적용하기</button>
							</div>
						</td>
					</tr>
				</c:forEach>
			</table>
			<div id="total_price">
				주문금액<b id="total_products"></b>원 - 할인금액 <b></b>원 = 최종결재금액 <b>30,000</b>원
			</div>
		</form>
	</div>
	<div id="mask"></div>
	</body>
</html>