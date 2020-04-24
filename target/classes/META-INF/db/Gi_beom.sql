--☆장바구니☆--
--장바구니 담기--
INSERT INTO CART VALUES(CART_SEQ.nextval,'aaa',1,3);
--장바구니 확인--
SELECT P.*, CARTCOUNT, CARTNO, (SELECT PIMAGE1 FROM PRODUCT PR, PRODUCT_OPTION PO WHERE PR.PCODE=PO.PCODE AND POCODE=C.POCODE) PIMAGE
FROM CART C, PRODUCT_OPTION P WHERE C.POCODE=P.POCODE AND CID='aaa';
--장바구니 빼기--
DELETE FROM CART WHERE CARTNO='1'; 
--수량 변경--
UPDATE CART SET CARTCOUNT=2 WHERE CARTNO = '1';
commit;
--★☆구매창 출력☆★--
--고객정보불러오기--
SELECT C.*, GRADE, GHIGH, GLOW, GPOINT FROM CUSTOMER C, GRADE G WHERE C.GCODE = G.GCODE AND CID='aaa';
--장바구니로부터 불러오기--
SELECT P.*, CARTCOUNT, CARTNO, (SELECT PIMAGE1 FROM PRODUCT PR, PRODUCT_OPTION PO WHERE PR.PCODE=PO.PCODE AND POCODE=C.POCODE) PIMAGE
		 FROM CART C, PRODUCT_OPTION P WHERE C.POCODE=P.POCODE AND CARTNO IN (1,2);
--보유쿠폰불러오기--
SELECT C.*,CHNUM FROM COUPON C, COUPON_HOLD H WHERE CID='aaa';
--주소록 불러오기--
SELECT * FROM ADDRLIST WHERE CID='aaa';
commit;
--★☆상품구매★☆--
--SP_ORDER 테이블 넣기--
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'PARK','010-2017-7619','11111','서울시종로구','206호',15000,SYSDATE,'배송중','환불신청','aaa');
--ORDER_DETAIL넣기--
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,(SELECT MAX( TO_NUMBER(OCODE)) FROM SP_ORDER),1,1,3,4000);
--포인트 적립--
UPDATE CUSTOMER SET CPOINT = CPOINT +TRUNC((SELECT OSUM FROM SP_ORDER WHERE OCODE=(SELECT MAX( TO_NUMBER(OCODE)) FROM SP_ORDER))
    *(SELECT GPOINT/100 FROM GRADE G, CUSTOMER C WHERE G.GCODE = C.GCODE AND CID='aaa'),0);
--포인트 차감--
UPDATE CUSTOMER SET CPOINT = CPOINT - 30 WHERE CID='aaa';
--사용 쿠폰 제거--
DELETE FROM COUPON_HOLD WHERE CHNUM IN (1,2);
--카트 삭제--
DELETE FROM CART WHERE CARTNO IN(2, 3);


--★☆배송상태  ★☆      --
--마켓에 주문리스트 총 갯수--
SELECT COUNT(*) FROM ORDER_DETAIL O, SP_ORDER S WHERE O.OCODE=S.OCODE AND 
    POCODE IN (SELECT POCODE FROM PRODUCT_OPTION O , PRODUCT P WHERE P.PCODE=O.PCODE AND MID='aaa');
-- 마켓에 따라 주문 리스트 불러오기--
SELECT * FROM (SELECT ROWNUM RN, A.* FROM (
    SELECT O.ODCODE, O.CUID, O.ODCOUNT, O.ODUNIT, S.*, P.PONAME, P.PONET,P.POSTOCK,P.POPRICE, P.TYPECODE,P.PCODE , 
    (SELECT MID FROM PRODUCT WHERE PCODE=P.POCODE) MID 
    FROM ORDER_DETAIL O , SP_ORDER S, PRODUCT_OPTION P 
    WHERE O.OCODE=S.OCODE AND O.POCODE=P.POCODE AND P.PCODE = (SELECT PCODE FROM PRODUCT WHERE MID='aaa')
        ORDER BY OTIME DESC) A) 
         WHERE RN BETWEEN 1 AND 10;

--한 고객의 주문 총 갯수--
SELECT COUNT(*) FROM ORDER_DETAIL O, SP_ORDER S WHERE O.OCODE=S.OCODE AND CID='aaa';         
--한 고객의 주문 리스트--
SELECT * FROM (SELECT ROWNUM RN, A.* FROM (
    SELECT O.ODCODE, O.CUID, O.ODCOUNT, O.ODUNIT, S.*, 
            P.PONAME, P.PONET,P.POSTOCK,P.POPRICE, P.TYPECODE, P.PCODE, 
    (SELECT MID FROM PRODUCT WHERE PCODE=P.POCODE) MID 
    FROM ORDER_DETAIL O , SP_ORDER S, PRODUCT_OPTION P 
    WHERE O.OCODE=S.OCODE AND O.POCODE=P.POCODE AND CID='aaa'
        ORDER BY OTIME DESC) A) 
         WHERE RN BETWEEN 1 AND 100;

--환불신청        --
--구매확정        --

--리뷰등록        --
INSERT INTO REVIEW VALUES(REVIEW_SEQ.NEXTVAL, '좋은 제품입니다', 4, SYSDATE, 'ssal.jpg','aaa',1);
--리뷰수정    보류   --
--리뷰삭제        --
DELETE REVIEW WHERE RCODE=2;
--리뷰 갯수--
SELECT COUNT(*) CNT FROM REVIEW WHERE PCODE=1;
--리뷰 출력--
SELECT * FROM (SELECT ROWNUM RN, A.* FROM (SELECT * FROM REVIEW WHERE PCODE=1 ORDER BY RCODE DESC)A) WHERE RN BETWEEN 1 AND 10;

--상품 옵션 불러오기(장바구니 담기 용)--
SELECT * FROM PRODUCT_OPTION WHERE POCODE=1;


--스토어 고객 문의--
