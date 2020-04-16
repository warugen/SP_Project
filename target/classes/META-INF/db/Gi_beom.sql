--☆장바구니☆--
--장바구니 담기--
INSERT INTO CART VALUES(CART_SEQ.nextval,'aaa',1,3);
--장바구니 확인--
SELECT P.*, CARTCOUNT, CARTNO FROM CART C, PRODUCT_OPTION P WHERE C.POCODE=P.POCODE AND CID='aaa';
--장바구니 빼기--
DELETE FROM CART WHERE CARTNO='1'; 
--수량 변경--
UPDATE CART SET CARTCOUNT=2 WHERE CARTNO = '1';

--★☆구매창 출력☆★--
--고객정보불러오기--
SELECT * FROM CUSTOMER WHERE CID='aaa';
--장바구니로부터 불러오기--
SELECT P.*, CARTCOUNT, CARTNO FROM CART C, PRODUCT_OPTION P WHERE C.POCODE=P.POCODE AND CARTNO=3;
--보유쿠폰불러오기--
SELECT C.*,CHNUM FROM COUPON C, COUPON_HOLD H WHERE CID='aaa';
--주소록 불러오기--
SELECT * FROM ADDRLIST WHERE CID='aaa';

--★☆상품구매★☆--
--카트 삭제--
DELETE FROM CART WHERE CID='aaa' AND CARTNO=3;
--쿠폰 제거--
DELETE FROM COUPON_HOLD WHERE CHNUM=1;
--SP_ORDER 테이블 넣기--
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'PARK','010-2017-7619','11111','서울시종로구','206호',15000,SYSDATE,'배송중','환불신청','aaa');
--ORDER_DETAIL넣기--
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,2,1,1,3,4000);


--리뷰등록        --
--리뷰수정        --
--리뷰삭제        --
--배송상태        --
--환불신청        --
--구매확정        --
--스토어 고객 문의--

--일별 매출 통계  --
--월별 매출 통계  --
--분기별 매출 통계--
--상품별 매출 통계--