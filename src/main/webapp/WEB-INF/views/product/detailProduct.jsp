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
#content #content_bottom #product_qna table tbody .qnaReplyContent {
	display: none;
}
b{
color:red;
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
	}); 
	function writeQnaForm() {
		window.open('product_qna.do?method=writeQnaForm','','width=650,height=410,left=100,top=100')
	}
</script>
</head>
<body>
	<c:if test="${not empty writeQnaResult }">
		<script>
			var writeQnaResult = "문의가 등록 되었습니다."
			alert(writeQnaResult);
			opener.location.href='product.do?method=detailProduct';
			window.close();
		</script>
	</c:if>
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
				<div id="items_option_box">
					<select>
						<option>베이킹 소다 대용량 3Kg 2개 / 다양한 용도의 천연세제1</option>
						<option>베이킹 소다 대용량 1Kg 1개 / 다양한 용도의 천연세제2</option>
						<option>베이킹 소다 대용량 2Kg 2개 / 다양한 용도의 천연세제3</option>
						<option>카테고리4</option>
						<option>카테고리5</option>
					</select>
				</div>
				<div id="form_body">
					<div id="goods_option">
						<div id="origin_area">
							<h2>수량</h2>
							<div id="origin_amount">
								<span class="updwon_button"> <input type="number"
									class="num" maxlength="3" value="1" min="1">
								</span>
							</div>
						</div>
					</div>
				</div>
				<div id="form_bottom">
					<div id="bottom_button">
						<button class="btn2">장바구니</button>
						<button class="btn1">구매하기</button>
					</div>
				</div>
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
							<td>${pq.pqcomplete }</td>
							<td class="left">${pq.pqtitle }</td>
							<td>${pq.cid }</td>
							<td>${pq.pqdate }</td>
						</tr>
						<tr class="qnaReplyContent" id="qnaReplyContent${i }">
							<td colspan="5">
								<div>
									<span> <img src="${conPath }/img/Q.PNG" width="35"
										height="35">질문
									</span> ${pq.pqcontent }
								</div>
							</td>
						</tr>
						<c:set var="i" value="${i+1 }"/>
					</c:forEach>
				</table>
				<div class="btn_wrap">
					<button
						onclick="">답변하기</button>
					<button
						onclick="writeQnaForm()">문의하기</button>
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
	</div>
</body>
</html>