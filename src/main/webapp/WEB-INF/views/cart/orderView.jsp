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
<link href="${conPath }/css/cart/orderView.css" rel="stylesheet">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="${conPath }/js/address.js"></script>
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
		var total_sale =0;
		$('input[name=sale_cell]').each(function(){
			total_sale += Number($(this).val()) ;
		});
		total_sale += Number($('#cpoint').val()); 
		$('#total_sale').html(total_sale);
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
		
		osum();
	});
	//쿠폰 체크 하기
	$('input[type=radio]').change(function(){
		var cartno = $(this).attr('name').substring(5);
		var chnum = $(this).val();
		if($(this).val()==0){	//쿠폰 적용안함 체크
			$('#'+cartno).css({'color':'#fff','background-color':'#3a5485'}).html('쿠폰사용');
			$('#setcuid'+cartno).val('0');
			$('#sale_cell'+cartno).val('0');
			$('#sale_price'+cartno).html('');
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
				$('#setcuid'+cartno).val('0');
				$("input:radio[name='chnum"+cartno+"']:radio[value='0']").prop('checked', true);
				$('#'+cartno).css({'color':'#fff','background-color':'#3a5485'}).html('쿠폰사용');
			}else{	//쿠폰 적용
				$('#'+cartno).css({'color':'#3a5485','background-color':'#fff'}).html('쿠폰변경');
				var price_cell = $('#price_cell'+cartno).val();
				var sale = $('.coupon'+chnum).html()/100;
				$('#setcuid'+cartno).val( $('#cuid'+chnum).val());
				$('#sale_cell'+cartno).val(price_cell*sale);
				$('#sale_price'+cartno).html(price_cell*(1-sale) + '원');
				$('#cart_price'+cartno).css({'text-decoration-line':'line-through','color':'#a2a2a5'});
			}
		}
		osum();
	});
	//쿠폰사용 윈도우 닫기
	$('.exit_window').click(function () {
		var cartno = $(this).attr('id').substring(1);
	    $('#coupon_window'+cartno).hide();
		$('#mask').hide();
		$("input:radio[name='chnum"+cartno+"']:radio[value='0']").prop('checked', true);
		$('#'+cartno).css({'color':'#fff','background-color':'#3a5485'}).html('쿠폰사용');
		$('#setcuid'+cartno).val('0');
		$('#sale_cell'+cartno).val('0');
		$('#sale_price'+cartno).html('');
		$('#cart_price'+cartno).css({'text-decoration-line':'none','color':'black'});
		$('.btn_coupon_apply').trigger('click');
		osum();
	});
	
	//point 숫자 검사
	$('#cpoint').focusout(function() {
		var sum = $('#osum').html();
		var point_all = Math.floor($('#point_all').val()/10) * 10;
		if(point_all > sum){	//point가 총 결제금액보다 많을 경우->결제금액을 상한 point로 설정
			point_all = sum;
		}
		if( Number($(this).val()) >= point_all ){ //쓴 숫자가 point보다 클 경우
			$(this).val(point_all);
			$('#point_all').prop("checked", true);
		}else{
			$('#point_all').prop("checked", false);
			$(this).val(Math.floor($(this).val()/10) * 10);
		}
		$('.btn_coupon_apply').trigger('click');
		osum();
	});
	
	//포인트 전부 사용
	$('#point_all').change(function(){
		var sum = $('#osum').html();
		var point_all = Math.floor($('#point_all').val()/10) * 10;
		if(point_all > sum){	//point가 총 결제금액보다 많을 경우->결제금액을 상한 point로 설정
			point_all = sum;
		}
		if($(this).is(':checked')){
			$('#cpoint').val(point_all);
		}else{
			$('#cpoint').val(0);
		}
		$('.btn_coupon_apply').trigger('click');
		osum();
	});
	
	//주소 선택
	$('#option_addr').change(function(){
		var addrcode = $('select[name=addrlist]').val();
		$('input[name=opost]').val($('#opost'+addrcode).val());
		$('input[name=oaddr1]').val($('#oaddr1'+addrcode).val());
		$('input[name=oaddr2]').val($('#oaddr2'+addrcode).val());
	});
	
	osum();
	//창 실행시 기본 선택주소 출력
	var addrcode = $('select[name=addrlist]').val();
	$('input[name=opost]').val($('#opost'+addrcode).val());
	$('input[name=oaddr1]').val($('#oaddr1'+addrcode).val());
	$('input[name=oaddr2]').val($('#oaddr2'+addrcode).val());
});
//osum 계산 함수
function osum(){
	var osum = $('#total_products').html()-$('#total_sale').html();
	var gpoint = $('input[name=gpoint]').val();
	if(osum<0){	//osum이 -가 될경우 point 낮추기.
		var temp = osum * -1;
		osum = 0;
		$('#cpoint').val($('#cpoint').val()-temp);
		$('#total_sale').html($('#total_sale').html()-temp );
	}
	$('#osum').html(osum);
	$('input[name=osum]').val(osum);
	$('#plus_point').html( Math.floor(osum*gpoint/100) );
}

//쿠폰 모달 효과창 열기
function wrapWindowByMask(){
    var maskHeight = $(document).height();  
    var maskWidth = $(window).width();  
    $('#mask').css({'width':maskWidth,'height':maskHeight});  
    $('#mask').show();      
}


</script>
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
		<form action="cart.do">
		<input type="hidden" name="method" value="orderCompl">
		<input type="hidden" name="cid" value="${customer.cid }">
			<table>
				<tr>
					<th>상품정보</th><th>수량</th><th>금액</th><th>배송비</th><th>쿠폰사용</th>
				</tr>
				<c:forEach var="cart" items="${list }">
					<!-- order_detail로 넘겨줄 값 -->
					<input type="hidden" name="pocode"	value="${cart.pocode }" >
					<input type="hidden" name="cuid"   	value="0" id="setcuid${cart.cartno}">
					<input type="hidden" name="odcount"   	value="${cart.cartcount}" >
					<input type="hidden" name="odunit"   	value="${cart.poprice }">
					<!--  -->
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
							<p id="sale_price${cart.cartno }" class="sale_price"></p>
							<input type="hidden" value="0" name="sale_cell" id="sale_cell${cart.cartno}">
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
										<input type="hidden" id="cuid${coupon.chnum }" value="${coupon.cuid }">
										<tr>
											<td>
												<input type="radio" name="chnum${cart.cartno }" value="${coupon.chnum }">
											</td>
											<td class="cunametd">
												${coupon.cuname}
												<b class="cuname${coupon.chnum }">(적용중)</b>
											</td>
											<td><span class="coupon${coupon.chnum }">${coupon.cusale}</span>%</td>
											<td>
												<fmt:formatNumber value="${cart.cartcount * cart.poprice * (100-coupon.cusale) / 100}" groupingUsed="true"/>원
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
				주문금액<b id="total_products"></b>원 - 할인금액 <b id="total_sale">0</b>원 = 최종결재금액 <b id="osum"></b>원
				<p> 고객등급 : ${customer.grade} /적립혜택 : <b><span id="plus_point"></span>P</b> </p>
				<input type="hidden" name="osum">
				<input type="hidden" name="gpoint" value="${customer.gpoint }">
			</div>
			<div id="bottom">
				<div>
					SP point <input type="text" id="cpoint" name="cpoint" value="0" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">원 
					<input type="checkbox" id="point_all" value="${customer.cpoint}">모두사용(보유 <b>${customer.cpoint} P</b>)
				</div>
				<div>
					배송지 정보 입력
				</div>
				<div>
					<div id="addr_head">
					배송지 선택
					<select name="addrlist" id="option_addr">
						<c:forEach var="addr" items="${addrlist }">
							<option value="${addr.addrcode }" 
								<c:if test="${addr.addrcode == customer.addrcode}">
								selected="selected" 
								</c:if>
							>
							${addr.addrname }</option>
						</c:forEach>
					</select>
						<c:forEach var="addr" items="${addrlist }">
							<input type="hidden" id="opost${addr.addrcode }" value="${addr.cpost }">
							<input type="hidden" id="oaddr1${addr.addrcode }" value="${addr.caddr1 }">
							<input type="hidden" id="oaddr2${addr.addrcode }" value="${addr.caddr2 }">
						</c:forEach>
					</div>
					<table>
						<tr>
							<th>연락처</th><td><input type="text" name="otel" value="${customer.ctel }"/></td>
						</tr>
						<tr>
							<th>받으시는 분</th><td><input type="text" name="oname" value="${customer.cname }"/></td>
						</tr>
						<tr>
							<th>우편번호</th>
							<td>
								<input type="text" id="sample4_postcode" name="opost" class="text_box"  placeholder="우편번호" readonly="readonly">
								<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
							</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<input type="text" id="sample4_roadAddress" name="oaddr1" placeholder="도로명주소" readonly="readonly">
								<input type="hidden" id="sample4_jibunAddress"  placeholder="지번주소">
								<span id="guide"></span>
							</td>
						</tr>
						<tr>
							<th>상세주소</th><td><input type="text" name="oaddr2" /></td>
						</tr>
					</table>
				</div>
			</div>
			<div id="btns_pay">
				<button type="button" class="btn2">취소하기</button><input type="submit" class="btn1" value="결제하기">	
			</div>
		</form>
	</div>
	<jsp:include page="../main/footer.jsp" />
	<div id="mask"></div>
	</body>
</html>