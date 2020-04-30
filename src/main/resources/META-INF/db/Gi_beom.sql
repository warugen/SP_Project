--☆장바구니☆--
--장바구니 담기--
INSERT INTO CART VALUES(CART_SEQ.nextval,'aaa',3,3);
--장바구니 확인--
SELECT P.*, CARTCOUNT, CARTNO, (SELECT PIMAGE1 FROM PRODUCT PR, PRODUCT_OPTION PO WHERE PR.PCODE=PO.PCODE AND POCODE=C.POCODE) PIMAGE
FROM CART C, PRODUCT_OPTION P WHERE C.POCODE=P.POCODE AND CID='aaa';
--장바구니 빼기--
DELETE FROM CART WHERE CARTNO='1'; 
--수량 변경--
UPDATE CART SET CARTCOUNT=2 WHERE CARTNO = '1';
--바로구매시 장바구니에 넣고 바로 CARTNO가져오기--
SELECT CARTNO FROM (SELECT ROWNUM RN, A.* FROM (SELECT CARTNO FROM CART ORDER BY TO_NUMBER(CARTNO) DESC) A) WHERE RN BETWEEN 1 AND 4;
<<<<<<< HEAD
=======
select * from review;
>>>>>>> refs/heads/joonsu1125

--★☆구매창 출력☆★--
--고객정보불러오기--
SELECT C.*, GRADE, GHIGH, GLOW, GPOINT  FROM CUSTOMER C, GRADE G 
    WHERE GHIGH>=(SELECT COUNT(*) FROM SP_ORDER S, ORDER_DETAIL O WHERE O.OCODE=S.OCODE AND CID='aaa') AND
        GLOW<= (SELECT COUNT(*) FROM SP_ORDER S, ORDER_DETAIL O WHERE O.OCODE=S.OCODE AND CID='aaa') AND
        CID='aaa';
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
--등급 조정--
UPDATE CUSTOMER SET GCODE = 
    (SELECT GCODE FROM GRADE 
        WHERE GHIGH >= (SELECT COUNT(*) FROM ORDER_DETAIL O, SP_ORDER S WHERE O.OCODE=S.OCODE AND CID='bbb') AND
            GLOW <= (SELECT COUNT(*) FROM ORDER_DETAIL O, SP_ORDER S WHERE O.OCODE=S.OCODE AND CID='bbb') ) WHERE CID='bbb';

--★☆배송상태  ★☆      --
--마켓에 주문리스트 총 갯수--
SELECT COUNT(*) FROM ORDER_DETAIL O, SP_ORDER S WHERE O.OCODE=S.OCODE AND 
    POCODE IN (SELECT POCODE FROM PRODUCT_OPTION O , PRODUCT P WHERE P.PCODE=O.PCODE AND MID='aaa');
-- 마켓에 따라 주문 리스트 불러오기--
SELECT * FROM (SELECT ROWNUM RN, A.* FROM (
    SELECT O.ODCODE, O.CUID, O.ODCOUNT, O.ODUNIT, S.*, P.PONAME, P.PONET,P.POSTOCK,P.POPRICE, P.TYPECODE,P.PCODE , 
    (SELECT MID FROM PRODUCT WHERE PCODE=P.POCODE) MID 
    FROM ORDER_DETAIL O , SP_ORDER S, PRODUCT_OPTION P 
    WHERE O.OCODE=S.OCODE AND O.POCODE=P.POCODE AND P.PCODE IN (SELECT PCODE FROM PRODUCT WHERE MID='aaa')
        ORDER BY OTIME DESC) A) 
         WHERE RN BETWEEN 1 AND 10;
select * from sp_order;
delete from product where pcode>13;
commit;
--한 고객의 주문상세 총 갯수--
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


--마켓 정보 가져오기
SELECT * FROM MARKET WHERE MID='aaa';
--마켓용 리스트 뿌리기
SELECT * FROM (SELECT ROWNUM RN, A.* FROM(SELECT P.*,(SELECT MIN(POPRICE) FROM PRODUCT_OPTION WHERE PCODE = P.PCODE) POPRICE 
    FROM PRODUCT P ORDER BY TO_NUMBER(PCODE) DESC) A)
    		WHERE  MID='aaa' AND RN BETWEEN 1 AND 20 AND (PTITLE LIKE '%'|| '' ||'%' OR PCONTENT LIKE '%'|| ''  ||'%');
--마켓용 리스트 총갯수
SELECT COUNT(*) FROM PRODUCT  WHERE MID='aaa';        
--마켓에 대답하지 않은 qnalist--
SELECT * FROM (SELECT ROWNUM RN, A.* FROM
		(SELECT * FROM PRODUCT_QNA Q WHERE PCODE IN (SELECT PCODE FROM PRODUCT P WHERE MID='aaa') AND PQCOMPLETE='0'
            ORDER BY PQDATE DESC)A)
            WHERE RN BETWEEN 1 AND 10;
--대답하지않은 qnalist갯수--
SELECT COUNT(*) FROM PRODUCT_QNA WHERE PCODE IN (SELECT PCODE FROM PRODUCT P WHERE MID='aaa') AND PQCOMPLETE='0';

--좋아요 CHK
SELECT COUNT(*) FROM FAVORITE WHERE PCODE=1 AND CID='aaa';
--좋아요 추가
INSERT INTO FAVORITE VALUES (FAVORITE_SEQ.NEXTVAL,'aaa',1);
--좋아요 제거
DELETE FROM FAVORITE WHERE PCODE=1 AND CID='aaa1';

--도움됐어요 CHK
SELECT COUNT(*) FROM HELP_HISTORY WHERE RCODE=1 AND CID='aaa';
--도움됐어요 추가
INSERT INTO HELP_HISTORY VALUES (HELP_HISTORY_SEQ.NEXTVAL,1,'aaa');
--도움됐어요 제거
DELETE FROM HELP_HISTORY WHERE RCODE=1 AND CID='aaa1';

--쿠폰 등록--
INSERT INTO COUPON VALUES (COUPON_SEQ.NEXTVAL,'절반쿠폰',50);
--쿠폰 목록 불러오기--
SELECT * FROM COUPON WHERE CUID!=0;
--등급정보 불러오기--
SELECT * FROM GRADE;
--쿠폰줄 등급 회원 불러오기--
SELECT CID FROM CUSTOMER WHERE GCODE=1;
--쿠폰 지급--
INSERT INTO COUPON_HOLD VALUES (COUPON_HOLD_SEQ.NEXTVAL, 1, 'aaa');

--상품 등록시 하위 분류 불러오기--
SELECT * FROM PRODUCT_TYPE WHERE TYPECODEREF!=0;
SELECT * FROM PRODUCT;
SELECT * FROM PRODUCT_OPTION;
SELECT * FROM SP_ORDER;
SELECT * FROM order_detail;
delete from sp_order where ocode>15;
delete from order_detail where odcode>7;
commit;
--구매 확정 하기--
UPDATE SP_ORDER SET OSTATUS = '구매확정' WHERE OCODE=1;
COMMIT;