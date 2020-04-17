$(document).ready(function(){
	var total_products = 0;
	var cartno, cartcount, poprice;
	var allcheck = 0;
	$('.check').each(function(){
		allcheck++;
	});
	$('.num_total').html(allcheck);
	totpr();
	
	$('.checkall').change(function(){
		if($(this).is(':checked')){
			document.location.href='cart.do?method=cart'
		}else{
			$('.check').each(function(){
				this.checked = false;
			});
			$('.checkall').each(function(){
				this.checked = false;
			});
			$('input[name=price_cell]').val(0);
			totpr();
		}
	});
	$('.check').change(function(){
		cartno = $(this).val();
		cartcount = $('#cartcount'+cartno).val();
		poprice = $('#cartpoprice'+cartno).val();
		if($(this).is(':checked')){
			$.ajax({
				url : 'cart.do',
				dataType : 'html',
				data : 'method=cart_price_ajax_sum&cartno='+cartno+'&cartcount='+cartcount,
				success : function(data,status){
					$('#sum'+cartno).html(data);
					$('#price_cell'+cartno).val(cartcount * poprice);
					totpr();
				}
			});
		}else{
			$('#sum'+cartno).html('상품금액 <b>0</b>원 + 배송비 <b>0</b>원 = 주문합계 <b>0</b>원');
			$('#price_cell'+cartno).val(0);
			totpr();
		}
	 });
	$('.btn_count_plus').click(function(){
		cartno = $(this).val();
		$('#cartcount'+cartno).val(Number($('#cartcount'+cartno).val()) +1);
		$('#cartcount_text'+cartno).val(Number($('#cartcount'+cartno).val()));
		cartcount = $('#cartcount'+cartno).val();
		$.ajax({
			url : 'cart.do',
			dataType : 'html',
			data : 'method=cart_price_ajax&cartno='+cartno+'&cartcount='+cartcount,
			success : function(data,status){
				$('#cart_price_ajax1'+cartno).html(data);
				$('#cart_price_ajax2'+cartno).html(data);
				if(!$('#check'+cartno).is(':checked')){
					$('#price_cell'+cartno).val(0);
					totpr();
					return false;
				}
				$.ajax({
					url : 'cart.do',
					dataType : 'html',
					data : 'method=cart_price_ajax_sum&cartno='+cartno+'&cartcount='+cartcount,
					success : function(data,status){
						$('#sum'+cartno).html(data);
						$('#price_cell'+cartno).val($('#cartcount'+cartno).val() * $('#cartpoprice'+cartno).val());
						totpr();
					}
				});
			}
		});
		
	});
	$('.btn_count_minus').click(function(){
		cartno = $(this).val();
		if($('#cartcount'+cartno).val() == 1){
			return false;
		}
		$('#cartcount'+cartno).val(Number($('#cartcount'+cartno).val()) -1);
		$('#cartcount_text'+cartno).val(Number($('#cartcount'+cartno).val()));
		cartcount = $('#cartcount'+cartno).val();
		$.ajax({
			url : 'cart.do',
			dataType : 'html',
			data : 'method=cart_price_ajax&cartno='+cartno+'&cartcount='+cartcount,
			success : function(data,status){
				$('#cart_price_ajax1'+cartno).html(data);
				$('#cart_price_ajax2'+cartno).html(data);
				if(!$('#check'+cartno).is(':checked')){
					$('#price_cell'+cartno).val(0);
					totpr();
					return false;
				}
				$.ajax({
					url : 'cart.do',
					dataType : 'html',
					data : 'method=cart_price_ajax_sum&cartno='+cartno+'&cartcount='+cartcount,
					success : function(data,status){
						$('#sum'+cartno).html(data);
						$('#price_cell'+cartno).val($('#cartcount'+cartno).val() * $('#cartpoprice'+cartno).val());
						totpr();
					}
				});
			}
		});
	});
});
function totpr(){
	total_products = 0;
	$('input[name=price_cell]').each(function(){ 
		total_products += Number($(this).val());
	    $('#total_products').text(total_products);
	});
	
	var shiping = 0;
	var checknum = 0;
	$('.check').each(function(){
		if($(this).is(":checked")){
			checknum++;
		}
	});
	shiping = checknum * 3000;
	$('#shiping').html(shiping);
	$('#result').html(Number($('#total_products').html())+Number($('#shiping').html()));
	$('.num_count').html(checknum);
	var allcheck=0;
	$('.check').each(function(){
		allcheck++;
	});
	if(checknum == allcheck){
		$("input:checkbox[name='checkall']").each(function() {
			this.checked = true;
		});
	}else{
		$("input:checkbox[name='checkall']").each(function() {
			this.checked = false;
		});
	}
}