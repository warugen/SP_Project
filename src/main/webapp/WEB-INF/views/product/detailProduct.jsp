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
<link href="${conPath}/css/style.css" rel="stylesheet">
<link href="${conPath}/css/productContent.css" rel="stylesheet">
<style>

#form_body{
	width: 550px;
	max-height: 280px;
	overflow: scroll;
	-ms-overflow-style: none; /* IE and Edge */
    scrollbar-width: none; /* Firefox */
}
#form_body::-webkit-scrollbar {
    display: none; /* Chrome, Safari, Opera*/
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
	$(document).ready(function() {
		$('.qnaReplyContent').css('display','none');
		$('.qnaReplyTitle').each(function(index, item) {
			$(this).click(function() {
				$('#qnaReplyContent'+index).toggle();
			})
		});
		
		//장바구니 담을 물건 추가하기
		var cartnum = 0;
		$('#iobCart').change(function(){
			var pocode = $(this).val();
			if(pocode < 0){
				return false;
			}
			var poname = $('#poname_'+pocode).val();
			var poprice = $('#poprice_'+pocode).val();
			var tag="<div id='goods_"+cartnum+"' class='goods'><p class='goods_top'>"+poname+"</p>"+
					"<input type='number' value='1' min='1' class='goods_num' name='cartcount' id='num_"+cartnum+"'>"+
					"<a id='btnx_"+cartnum+"' class='btnx'><img src='${conPath }/img/x.png' class='ximg'></a>"+
					"<span class='goods_right'><b id='priceresult_"+cartnum+"'>"+poprice+"</b>원</span></div>"+
					"<input type='hidden' name='pocode' value='"+pocode+"'>"+
					"<input type='hidden' name='poprice' id='cartprice_"+cartnum+"' value='"+poprice+"'>";
			$("#goods_option").append(tag);
			$(".goods").css({
		        "background-color" 	: "#f5f5f5"          ,
		        "border-top"		: "1px solid #cccccc",
		        "height"			: "45px"             ,
		        "line-height"		: "22px"             ,
		        "color"				: "black"            ,
		        "padding"			: "5px 10px"
		 	});
			$(".goods_num").css({"width" : "30px"});
			$(".goods_right").css({
				"float":"right",
				"font-size" : "14px"	
			});
			$(".ximg").css({
				"width" : "13px",
				"float" : "right",
				"position" : "relative",
		    	"top" : "3px",
		    	"left" : "4px"
			});
			cartnum++;
		});
	});
	//장바구니 담을 목록에서 제거
	$(document).on('click','.btnx',function(){
		var tempt = $(this).attr('id').substring(5);
		$('#goods_'+tempt).detach();
	});
	$(document).on('change','.goods_num',function(){
		var cartnumber = $(this).attr('id').substring(4);
		var price = $('#cartprice_'+cartnumber).val();
		var count = $(this).val();
		$('#priceresult_'+cartnumber).html(count*price);
	});
	function writeQnaForm() {
		window.open('product_qna.do?method=writeQnaForm','','width=650,height=530,left=100,top=100')
	}
	function modifyQnaForm(pqcode) {
		window.open('product_qna.do?method=modifyQnaForm&pqcode='+pqcode,'','width=650,height=530,left=100,top=100')
	}
</script>
</head>
<body>
	<div id="content">
		<div id="content_top">
			<div id="product_img">
				<div class="bigImage">
					<img
						src="http://gdimg.gmarket.co.kr/971829233/still/600?ver=1567658430"
						width="600" height="600" alt="상품이미지">
				</div>
				<div class="favoriteClick">
					<button>
						<img
							src="https://t4.ftcdn.net/jpg/02/05/18/21/240_F_205182152_z0fPFHyA9xM5U3UDAWhGIrd1G0HVt6zi.jpg"
							width="60" height="60" alt="상품이미지">
					</button>
					<span>5개</span>
				</div>
			</div>
			<div id="product_info">
				<div id="product_info_headline">
					<p>
						<a href=""> 입점상점 </a> <span>상품번호 : 971855654</span>
					</p>
					<hr>
					<br>
					<div class="itemcase_basic">
						<h1>[소다스쿨] 베이킹소다 대용량 3kg 2개</h1>
						<p>
							<span> <span>20,000원</span>
							</span><br>
						</p>
					</div>
				</div>
				<br>
				<div id="product_datainfo">
					<div id="product_nav">무료배송</div>
					<div id="product_certification">
						<span>인증정보</span> <br> <br> <span>본 상품은 국내배송만
							가능합니다.</span>
					</div>
				</div>
				<form action="cart.do?">
					<input type="hidden" name="method" value="orderDirect">
					<input type="hidden" name="cid" value="${customer.cid}">
					<div id="items_option_box">
						<select id="iobCart">
							<option selected="selected" value="-1">선택하세요.</option>
							<c:forEach var="ForCart" items="${listForCart }">
								<option value="${ForCart.pocode }">${ForCart.poname} / ${ForCart.poprice}</option>
							</c:forEach>
						</select>
							<c:forEach var="ForCart" items="${listForCart }">
								<input type='hidden' id='poname_${ForCart.pocode }' class='poname' value='${ForCart.poname }'>
								<input type='hidden' id='poprice_${ForCart.pocode }' class='poprice' value='${ForCart.poprice }'>
							</c:forEach>
					</div>
					<div id="form_body">
						<div id="goods_option">
						</div>
					</div>
					<div id="form_bottom">
						<div id="bottom_button">
							<button type="button" class="btn2">장바구니담기</button>
							<button class="btn1">구매하기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div id="content_bottom">
			<div id="product_qna">
				<table>
					<tr>
						<th>번호</th>
						<th>답변상태</th>
						<th>제목</th>
						<th>문의자</th>
						<th>등록일</th>
					</tr>
					<c:set var="i" value="0"/>
					<c:forEach var="pq" items="${product_qna }">
						<tr class="qnaReplyTitle">
							<td>${pq.pqcode }</td>
							<td>
								<c:if test="${pq.pqcomplete==0 }">
									<span style="border: 1px solid black;">검토중</span>
								</c:if>
								<c:if test="${pq.pqcomplete==1 }">
									<span style="border: 1px solid black;">답변완료</span>
								</c:if>
							</td>
							<td class="left">
								<c:if test="${pq.pqsecret==0 }">
									${pq.pqtitle }
								</c:if>
								<c:if test="${pq.pqsecret==1 }">
									비밀글 입니다.
								</c:if>	
							</td>
							<td>${pq.cid }</td>
							<td>${pq.pqdate }</td>
						</tr>
						<tr class="qnaReplyContent" id="qnaReplyContent${i }">
							<td colspan="4">
								<div>
									<span> 
										<img src="${conPath }/img/Q.PNG" width="35" height="35">질문
									</span> 
									<c:if test="${pq.pqsecret==0 }">
										${pq.pqcontent }
									</c:if>
									<c:if test="${pq.pqsecret==1 }">
											비밀글 입니다.
									</c:if>	
								</div>
							</td>
							<td>
								<button onclick="modifyQnaForm('${pq.pqcode }')">수정</button>
								<button onclick="location.href='${conPath}/product_qna.do?method=deleteQna'">삭제</button>
							</td>
						</tr>
						<c:set var="i" value="${i+1 }"/>
					</c:forEach>
				</table>
				<div class="btn_wrap">
					<button onclick="">답변하기</button>
					<button onclick="writeQnaForm()">문의하기</button>
				</div>
				<div class="paging">
					<c:if test="${paging.startpage>paging.blocksize }">
						[<a href="${conPath }/product.do?method=detailProduct&pagenum=${paging.startpage-1}">이전</a>]
					</c:if>
					<c:forEach var="i" begin="${paging.startpage }" end="${paging.endpage }">
						<c:if test="${paging.currentpage==i }">
							[<b>${i }</b>]
						</c:if>
						<c:if test="${paging.currentpage!=i }">
							[<a href="${conPath }/product.do?method=detailProduct&pagenum=${i}">${i }</a>]
						</c:if>
					</c:forEach>
					<c:if test="${paging.endpage<paging.pagecnt }">
						[<a href="${conPath }/product.do?method=detailProduct&pagenum=${paging.endpage+1}">다음</a>]
					</c:if>
				</div>
			</div>
		</div>
		<c:forEach var="review" items="${review }">
 			${review.rcontent } / ${review.rstar}
 		</c:forEach>
	</div>
</body>
</html>