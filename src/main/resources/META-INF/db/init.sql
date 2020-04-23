----------------------------------------------------------------------------------------------------------------------- 
-- 태이블 삭제 
----------------------------------------------------------------------------------------------------------------------- 
DROP TABLE cart CASCADE CONSTRAINTS; 
DROP TABLE order_detail CASCADE CONSTRAINTS; 
DROP TABLE favorite CASCADE CONSTRAINTS; 
DROP TABLE product_qna CASCADE CONSTRAINTS; 
DROP TABLE help_history CASCADE CONSTRAINTS; 
DROP TABLE addrlist CASCADE CONSTRAINTS; 
DROP TABLE coupon_hold CASCADE CONSTRAINTS; 
DROP TABLE email_inquiry CASCADE CONSTRAINTS; 
DROP TABLE notice CASCADE CONSTRAINTS; 
DROP TABLE customer_qna CASCADE CONSTRAINTS; 
DROP TABLE store_qna CASCADE CONSTRAINTS; 
DROP TABLE market_qna CASCADE CONSTRAINTS; 
DROP TABLE ADMIN CASCADE CONSTRAINTS; 
DROP TABLE review CASCADE CONSTRAINTS; 
DROP TABLE sp_order CASCADE CONSTRAINTS; 
DROP TABLE coupon CASCADE CONSTRAINTS; 
DROP TABLE customer CASCADE CONSTRAINTS; 
DROP TABLE grade CASCADE CONSTRAINTS; 
DROP TABLE product_option CASCADE CONSTRAINTS; 
DROP TABLE product CASCADE CONSTRAINTS; 
DROP TABLE market CASCADE CONSTRAINTS; 
DROP TABLE product_type CASCADE CONSTRAINTS; 
----------------------------------------------------------------------------------------------------------------------- 
-- 시퀀스 삭제 
----------------------------------------------------------------------------------------------------------------------- 
DROP SEQUENCE cart_seq; 
DROP SEQUENCE product_option_seq; 
DROP SEQUENCE product_type_seq; 
DROP SEQUENCE coupon_seq; 
DROP SEQUENCE sp_order_seq; 
DROP SEQUENCE order_detail_seq; 
DROP SEQUENCE market_seq; 
DROP SEQUENCE product_seq; 
DROP SEQUENCE favorite_seq; 
DROP SEQUENCE review_seq; 
DROP SEQUENCE product_qna_seq; 
DROP SEQUENCE help_history_seq; 
DROP SEQUENCE grade_seq; 
DROP SEQUENCE addrlist_seq; 
DROP SEQUENCE coupon_hold_seq; 
DROP SEQUENCE email_inquiry_seq; 
DROP SEQUENCE notice_seq; 
DROP SEQUENCE customer_qna_seq; 
DROP SEQUENCE store_qna_seq; 
DROP SEQUENCE market_qna_seq; 
----------------------------------------------------------------------------------------------------------------------- 
-- 시퀀스 생성 
----------------------------------------------------------------------------------------------------------------------- 
CREATE SEQUENCE cart_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE product_option_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE product_type_seq 
  MAXVALUE 999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE coupon_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE sp_order_seq 
  MAXVALUE 9999999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE order_detail_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE market_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

<<<<<<< HEAD
-----------------------------------------------------------------------------------------------------------------------
-- 태이블 생성
-----------------------------------------------------------------------------------------------------------------------
/* 고객 테이블 */
CREATE TABLE CUSTOMER (
	CID         VARCHAR2(20) NOT NULL,  /* 고객아이디 */
	CPW         VARCHAR2(20) NOT NULL,  /* 고객비번 */
	CNAME       VARCHAR2(20) NOT NULL,  /* 고객이름 */
    CSNSID      VARCHAR2(50),           /* SNS로그인ID */
	CPROVIDER   VARCHAR2(50),           /* SNS로그인종류 */
	ADDRCODE    VARCHAR2(20)  NOT NULL,  /* 기본주소번호 */
	CEMAIL      VARCHAR2(30) NOT NULL,  /* 메일 */
	CTEL        VARCHAR2(20) NOT NULL,  /* 고객전화 */
	CRDATE      DATE DEFAULT SYSDATE,   /* 가입날짜 */
	CBIRTH      DATE NOT NULL,          /* 고객생일 */
    CPOINT      NUMBER(10),             /* 고객포인트 */
	GCODE       VARCHAR2(1) NOT NULL    /* 등급코드 */
    
);
=======
CREATE SEQUENCE product_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 
>>>>>>> refs/heads/taehun7737

CREATE SEQUENCE favorite_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE review_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE product_qna_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE help_history_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE grade_seq 
  MAXVALUE 9 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE addrlist_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE coupon_hold_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

<<<<<<< HEAD
/* 쿠폰 테이블 */
CREATE TABLE COUPON (
	CUID    VARCHAR2(20)    NOT NULL, /* 쿠폰아이디 */
	CUNAME  VARCHAR2(20)    NOT NULL, /* 쿠폰명 */
	CUSALE  NUMBER(4)       NOT NULL  /* 할인율 */
);
=======
CREATE SEQUENCE email_inquiry_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 
>>>>>>> refs/heads/taehun7737

CREATE SEQUENCE notice_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE customer_qna_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE store_qna_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

CREATE SEQUENCE market_qna_seq 
  MAXVALUE 99999999999999999999 
  NOCACHE 
  NOCYCLE; 

-- 시퀀스 생성 규칙(상품주문 테이블인 경우 ) 
SELECT To_char(SYSDATE, 'YYYYMMDD') 
       || Trim(To_char(std_seq.NEXTVAL, '0000')) 
FROM   dual; 

----------------------------------------------------------------------------------------------------------------------- 
-- 태이블 생성 
----------------------------------------------------------------------------------------------------------------------- 
/* 고객 테이블 */ 
CREATE TABLE customer 
  ( 
     cid       VARCHAR2(20) NOT NULL,/* 고객아이디 */ 
     cpw       VARCHAR2(20) NOT NULL,/* 고객비번 */ 
     cname     VARCHAR2(20) NOT NULL,/* 고객이름 */ 
     csnsid    VARCHAR2(50),/* SNS로그인ID */ 
     cprovider VARCHAR2(50),/* SNS로그인종류 */ 
     caddrnum  VARCHAR2(5) NOT NULL,/* 기본주소번호 */ 
     cemail    VARCHAR2(30) NOT NULL,/* 메일 */ 
     ctel      VARCHAR2(20) NOT NULL,/* 고객전화 */ 
     crdate    DATE DEFAULT SYSDATE,/* 가입날짜 */ 
     cbirth    DATE NOT NULL,/* 고객생일 */ 
     cpoint    NUMBER(10),/* 고객포인트 */ 
     gcode     VARCHAR2(1) NOT NULL /* 등급코드 */ 
  ); 

ALTER TABLE customer 
  ADD CONSTRAINT pk_customer PRIMARY KEY ( cid ); 

/* 카트 테이블 */ 
CREATE TABLE cart 
  ( 
     cartno    VARCHAR2(20) NOT NULL,/* 카트번호 */ 
     cid       VARCHAR2(20) NOT NULL,/* 고객아이디 */ 
     pocode    VARCHAR2(20) NOT NULL,/* 상품옵션코드 */ 
     cartcount NUMBER(10) NOT NULL /* 상품개수 */ 
  ); 

ALTER TABLE cart 
  ADD CONSTRAINT pk_cart PRIMARY KEY ( cartno ); 

/* 상품옵션 테이블 */ 
CREATE TABLE product_option 
  ( 
     pocode   VARCHAR2(20) NOT NULL,/* 상품옵션코드 */ 
     poname   VARCHAR2(100) NOT NULL,/* 상품옵션명 */ 
     ponet    NUMBER(10) NOT NULL,/* 원가 */ 
     poprice  NUMBER(10) NOT NULL,/* 판매가격 */ 
     postock  NUMBER(10),/* 재고수량 */ 
     typecode VARCHAR2(3) NOT NULL,/* 상품분류코드 */ 
     pcode    VARCHAR2(20)/* 상품코드  */ 
  ); 

ALTER TABLE product_option 
  ADD CONSTRAINT pk_product_option PRIMARY KEY ( pocode ); 

/* 상품분류 테이블 */ 
CREATE TABLE product_type 
  ( 
     typecode    VARCHAR2(3) NOT NULL,/* 상품분류코드 */ 
     typecoderef VARCHAR2(3) NOT NULL,/* 상위분류코드 */ 
     producttype VARCHAR2(60) NOT NULL /* 상품타입 */ 
  ); 

ALTER TABLE product_type 
  ADD CONSTRAINT pk_product_type PRIMARY KEY ( typecode ); 

/* 쿠폰 테이블 */ 
CREATE TABLE coupon 
  ( 
     cuid   VARCHAR2(20) NOT NULL,/* 쿠폰아이디 */ 
     cuname VARCHAR2(20) NOT NULL,/* 쿠폰명 */ 
     cusail NUMBER(4) NOT NULL /* 할인율 */ 
  ); 

ALTER TABLE coupon 
  ADD CONSTRAINT pk_coupon PRIMARY KEY ( cuid ); 

/* 주문 테이블 */ 
CREATE TABLE sp_order 
  ( 
     ocode     VARCHAR2(20) NOT NULL,/* 주문코드 */ 
     oname     VARCHAR2(30) NOT NULL,/* 수령인 */ 
     otel      VARCHAR2(30) NOT NULL,/* 수령자전번 */ 
     opost     VARCHAR2(10) NOT NULL,/* 수령지우편번호 */ 
     oaddr1    VARCHAR2(60) NOT NULL,/* 수령지1 */ 
     oaddr2    VARCHAR2(60) NOT NULL,/* 수령지2 */ 
     osum      NUMBER(10) NOT NULL,/* 총금액 */ 
     otime     TIMESTAMP DEFAULT SYSDATE,/* 주문시간 */ 
     odelivery VARCHAR2(20) NOT NULL,/* 배송상황 */ 
     ostatus   VARCHAR2(20) NOT NULL,/* 주문상황 */ 
     cid       VARCHAR2(20) NOT NULL /* 고객아이디 */ 
  ); 

ALTER TABLE sp_order 
  ADD CONSTRAINT pk_sp_order PRIMARY KEY ( ocode ); 

/* 주문상세 테이블7 */ 
CREATE TABLE order_detail 
  ( 
     odcode  VARCHAR2(20) NOT NULL,/* 주문상세코드 */ 
     ocode   VARCHAR2(20) NOT NULL,/* 주문코드 */ 
     pocode  VARCHAR2(20) NOT NULL,/* 상품옵션코드 */ 
     cuid    VARCHAR2(20) NOT NULL,/* 쿠폰아이디 */ 
     odcount NUMBER(10) DEFAULT 0,/* 수량 */ 
     odunit  NUMBER(10) DEFAULT 0 /* 단가 */ 
  ); 

ALTER TABLE order_detail 
  ADD CONSTRAINT pk_order_detail PRIMARY KEY ( odcode ); 

/* 마켓상점 테이블9 */ 
CREATE TABLE market 
  ( 
     mid    VARCHAR2(20) NOT NULL,/* 마켓아이디 */ 
     mpw    VARCHAR2(20) NOT NULL,/* 마켓비번 */ 
     mname  VARCHAR2(20) NOT NULL,/* 마켓명 */ 
     mtel   VARCHAR2(20) NOT NULL,/* 마켓전번 */ 
     mpost  VARCHAR2(10) NOT NULL,/* 마켓우편번호 */ 
     maddr1 VARCHAR2(60) NOT NULL,/* 마켓주소1 */ 
     maddr2 VARCHAR2(60) NOT NULL /* 마켓주소2 */ 
  ); 

ALTER TABLE market 
  ADD CONSTRAINT pk_market PRIMARY KEY ( mid ); 

/* 상품 테이블 */ 
CREATE TABLE product 
  ( 
     pcode    VARCHAR2(20) NOT NULL,/* 상품코드 */ 
     ptitle   VARCHAR2(30) NOT NULL,/* 상품제목 */ 
     pcontent CLOB NOT NULL,/* 상품 내용 */ 
     pimage1  VARCHAR2(30) NOT NULL,/* 대표이미지1 */ 
     pimage2  VARCHAR2(30),/* 대표이미지2 */ 
     pimage3  VARCHAR2(30),/* 대표이미지3 */ 
     mid      VARCHAR2(20) NOT NULL /* 마켓아이디 */ 
  ); 

ALTER TABLE product 
  ADD CONSTRAINT pk_product PRIMARY KEY ( pcode ); 

/* 위시리스트 테이블 */ 
CREATE TABLE favorite 
  ( 
     fcode VARCHAR2(20) NOT NULL,/* 위시리스트코드 */ 
     cid   VARCHAR2(20) NOT NULL,/* 고객아이디 */ 
     pcode VARCHAR2(20) NOT NULL /* 상품코드 */ 
  ); 

ALTER TABLE favorite 
  ADD CONSTRAINT pk_favorite PRIMARY KEY ( fcode ); 

/* 리뷰 테이블 */ 
CREATE TABLE review 
  ( 
     rcode    VARCHAR2(20) NOT NULL,/* 리뷰코드 */ 
     rcontent CLOB NOT NULL,/* 내용 */ 
     rstar    NUMBER(5) NOT NULL,/* 별점 */ 
     rrdate   DATE DEFAULT SYSDATE,/* 리뷰날짜 */ 
     rimage   VARCHAR2(20),/* 리뷰이미지 */ 
     cid      VARCHAR2(20) NOT NULL,/* 고객아이디 */ 
     pcode    VARCHAR2(20) NOT NULL /* 상품코드 */ 
  ); 

ALTER TABLE review 
  ADD CONSTRAINT pk_review PRIMARY KEY ( rcode ); 

/* 상품정보 Q&A 테이블 */ 
CREATE TABLE product_qna 
  ( 
     pqcode     VARCHAR2(20) NOT NULL,/* QNA코드 */ 
     pqtitle    VARCHAR2(100) NOT NULL,/* Q제목 */ 
     pqcontent  VARCHAR2(3000) NOT NULL,/* Q내용 */ 
     pqanswer   VARCHAR2(3000),/* Q답글 */ 
     pqsecret   VARCHAR2(5) NOT NULL,/* 비밀글여부 */ 
     pqcomplete VARCHAR2(5) NOT NULL,/* 완료여부 */ 
     pqdate     TIMESTAMP DEFAULT SYSDATE,/* 작성일자 */ 
     pcode      VARCHAR2(20) NOT NULL,/* 상품코드 */ 
     cid        VARCHAR2(20) NOT NULL /* 고객아이디 */ 
  ); 

ALTER TABLE product_qna 
  ADD CONSTRAINT pk_product_qna PRIMARY KEY ( pqcode ); 

/* 리뷰 도움되요(좋아요) 테이블 */ 
CREATE TABLE help_history 
  ( 
     hcode VARCHAR2(20) NOT NULL,/* 도움코드 */ 
     rcode VARCHAR2(20) NOT NULL,/* 리뷰코드 */ 
     cid   VARCHAR2(20) NOT NULL /* 고객아이디 */ 
  ); 

ALTER TABLE help_history 
  ADD CONSTRAINT pk_help_history PRIMARY KEY ( hcode ); 

/* 등급 테이블17 */ 
CREATE TABLE grade 
  ( 
     gcode  VARCHAR2(1) NOT NULL,/* 등급코드 */ 
     grade  VARCHAR2(20) NOT NULL,/* 고객등급 */ 
     ghigh  NUMBER(10) NOT NULL,/* 상한선 */ 
     glow   NUMBER(10) NOT NULL,/* 하한선 */ 
     gpoint NUMBER(2) NOT NULL /* 적립포인트 */ 
  ); 

ALTER TABLE grade 
  ADD CONSTRAINT pk_grade PRIMARY KEY ( gcode ); 

/* 고객 주소 테이블 */ 
CREATE TABLE addrlist 
  ( 
     addrcode VARCHAR2(20) NOT NULL,/* 주소함번호 */ 
     addrname VARCHAR2(50) NOT NULL,/* 주소지이름 */ 
     cpost    VARCHAR2(10) NOT NULL,/* 고객우편번호 */ 
     caddr1   VARCHAR2(60) NOT NULL,/* 고객주소1 */ 
     caddr2   VARCHAR2(60) NOT NULL,/* 고객주소2 */ 
     cid      VARCHAR2(20) NOT NULL /* 고객아이디 */ 
  ); 

ALTER TABLE addrlist 
  ADD CONSTRAINT pk_addrlist PRIMARY KEY ( addrcode ); 

/* 고객 보유 쿠폰 테이블 */ 
CREATE TABLE coupon_hold 
  ( 
     chnum VARCHAR2(20) NOT NULL,/* 고유번호 */ 
     cuid  VARCHAR2(20) NOT NULL,/* 쿠폰아이디 */ 
     cid   VARCHAR2(20)/* 고객아이디 */ 
  ); 

ALTER TABLE coupon_hold 
  ADD CONSTRAINT pk_coupon_hold PRIMARY KEY ( chnum ); 

/* 이메일 문의 테이블 */ 
CREATE TABLE email_inquiry 
  ( 
     eicode    VARCHAR2(20) NOT NULL,/* EI코드 */ 
     cid       VARCHAR2(20) NOT NULL,/* 고객아이디 */ 
     eitype    VARCHAR2(20) NOT NULL,/* 상담분류 */ 
     eimaul    VARCHAR2(30) NOT NULL,/* 답변받을메일 */ 
     eititle   VARCHAR2(20) NOT NULL,/* 제목 */ 
     eicontent VARCHAR2(3000) NOT NULL,/* 내용 */ 
     eifile    VARCHAR2(30)/* 첨부파일 */ 
  ); 

ALTER TABLE email_inquiry 
  ADD CONSTRAINT pk_email_inquiry PRIMARY KEY ( eicode ); 

/* 공지사항 게시판 테이블 */ 
CREATE TABLE notice 
  ( 
     ncode    VARCHAR2(20) NOT NULL,/* 공지사항글번호 */ 
     ntitle   VARCHAR2(100) NOT NULL,/* 제목 */ 
     ncontent CLOB NOT NULL,/* 내용 */ 
     nrdate   DATE DEFAULT SYSDATE,/* 작성시간 */ 
     ngroup   NUMBER(7),/* 원글 */ 
     nstep    NUMBER(7),/* 글순서 */ 
     nindent  NUMBER(7),/* 들여쓰기 */ 
     nhit     NUMBER(7) DEFAULT 0,/* 조회수 */ 
     cid      VARCHAR2(20),/* 고객아이디 */ 
     aid      VARCHAR2(20)/* 관리자ID */ 
  ); 

ALTER TABLE notice 
  ADD CONSTRAINT pk_notice PRIMARY KEY ( ncode ); 

/* 고객-관리자간 문의 게시판 테이블 */ 
CREATE TABLE customer_qna 
  ( 
     cqcode    VARCHAR2(20) NOT NULL,/* 글번호 */ 
     cqtitle   VARCHAR2(100) NOT NULL,/* 제목 */ 
     cqcontent CLOB NOT NULL,/* 내용 */ 
     cqrdate   DATE DEFAULT SYSDATE,/* 작성시간 */ 
     cqgroup   NUMBER(7) NOT NULL,/* 원글 */ 
     cqstep    NUMBER(7) NOT NULL,/* 글순서 */ 
     cqindent  NUMBER(7) NOT NULL,/* 들여쓰기 */ 
     cqhit     NUMBER(7) NOT NULL,/* 조회수 */ 
     cid       VARCHAR2(20),/* 고객아이디 */ 
     aid       VARCHAR2(20)/* 관리자ID */ 
  ); 

ALTER TABLE customer_qna 
  ADD CONSTRAINT pk_customer_qna PRIMARY KEY ( cqcode ); 

/* 상점-회원간 문의 게시판 테이블 */ 
CREATE TABLE store_qna 
  ( 
     sqcode    VARCHAR2(20) NOT NULL,/* 글번호 */ 
     sqtitle   VARCHAR2(100) NOT NULL,/* 제목 */ 
     sqcontent CLOB NOT NULL,/* 내용 */ 
     sqrdate   DATE DEFAULT SYSDATE,/* 작성시간 */ 
     sqgroup   NUMBER(7) NOT NULL,/* 원글 */ 
     sqstep    NUMBER(7) NOT NULL,/* 글순서 */ 
     sqindent  NUMBER(7) NOT NULL,/* 들여쓰기 */ 
     sqhit     NUMBER(7) NOT NULL,/* 조회수 */ 
     mid       VARCHAR2(20),/* 마켓아이디 */ 
     cid       VARCHAR2(20)/* 고객아이디 */ 
  ); 

ALTER TABLE store_qna 
  ADD CONSTRAINT pk_store_qna PRIMARY KEY ( sqcode ); 

/* 상점-관리자간 문의 테이블22 */ 
CREATE TABLE market_qna 
  ( 
     mqcode    VARCHAR2(20) NOT NULL,/* 글번호 */ 
     mqtitle   VARCHAR2(100) NOT NULL,/* 제목 */ 
     mqcontent CLOB NOT NULL,/* 내용 */ 
     mqrdate   DATE DEFAULT SYSDATE,/* 작성시간 */ 
     mqgroup   NUMBER(7) NOT NULL,/* 원글 */ 
     mqstep    NUMBER(7) NOT NULL,/* 글순서 */ 
     mqindent  NUMBER(7) NOT NULL,/* 들여쓰기 */ 
     mqhit     NUMBER(7) NOT NULL,/* 조회수 */ 
     mid       VARCHAR2(20),/* 마켓아이디 */ 
     aid       VARCHAR2(20)/* 관리자ID */ 
  ); 

ALTER TABLE market_qna 
  ADD CONSTRAINT pk_market_qna PRIMARY KEY ( mqcode ); 

/* 관리자 테이블 */ 
CREATE TABLE ADMIN 
  ( 
     aid VARCHAR2(20) NOT NULL,/* 관리자ID */ 
     apw VARCHAR2(20) NOT NULL /* 비밀번호 */ 
  ); 

ALTER TABLE ADMIN 
  ADD CONSTRAINT pk_admin PRIMARY KEY ( aid ); 

----------------------------------------------------------------------------------------------------------------------- 
-- 외래키 설정 
----------------------------------------------------------------------------------------------------------------------- 
ALTER TABLE customer 
  ADD CONSTRAINT fk_grade_to_customer FOREIGN KEY ( gcode ) REFERENCES grade ( 
  gcode ); 

ALTER TABLE cart 
  ADD CONSTRAINT fk_customer_to_cart FOREIGN KEY ( cid ) REFERENCES customer ( 
  cid ); 

ALTER TABLE cart 
  ADD CONSTRAINT fk_product_option_to_cart FOREIGN KEY ( pocode ) REFERENCES 
  product_option ( pocode ); 

ALTER TABLE product_option 
  ADD CONSTRAINT fk_product_type_to_product_op FOREIGN KEY ( typecode ) 
  REFERENCES product_type ( typecode ); 

ALTER TABLE product_option 
  ADD CONSTRAINT fk_product_to_product_option FOREIGN KEY ( pcode ) REFERENCES 
  product ( pcode ); 

ALTER TABLE sp_order 
  ADD CONSTRAINT fk_customer_to_sp_order FOREIGN KEY ( cid ) REFERENCES customer 
  ( cid ); 

ALTER TABLE order_detail 
  ADD CONSTRAINT fk_sp_order_to_detail FOREIGN KEY ( ocode ) REFERENCES sp_order 
  ( ocode ); 

ALTER TABLE order_detail 
  ADD CONSTRAINT fk_product_option_to_detail FOREIGN KEY ( pocode ) REFERENCES 
  product_option ( pocode ); 

ALTER TABLE order_detail 
  ADD CONSTRAINT fk_coupon_to_detail FOREIGN KEY ( cuid ) REFERENCES coupon ( 
  cuid ); 

ALTER TABLE product 
  ADD CONSTRAINT fk_market_to_product FOREIGN KEY ( mid ) REFERENCES market ( 
  mid ); 

/* 
ALTER TABLE DISPLAY_DETEIL 
  ADD 
    CONSTRAINT FK_PRODUCT_OPTION_TO_DISPLAY_DETEIL 
    FOREIGN KEY ( 
      POCODE 
    ) 
    REFERENCES PRODUCT_OPTION ( 
      POCODE 
    ); 

ALTER TABLE DISPLAY_DETEIL 
  ADD 
    CONSTRAINT FK_PRODUCT_TO_DISPLAY_DETEIL 
    FOREIGN KEY ( 
      PCODE2 
    ) 
    REFERENCES PRODUCT ( 
      PCODE 
    ); 
*/ 
ALTER TABLE favorite 
  ADD CONSTRAINT fk_customer_to_favorite FOREIGN KEY ( cid ) REFERENCES customer 
  ( cid ); 

ALTER TABLE favorite 
  ADD CONSTRAINT fk_product_to_favorite FOREIGN KEY ( pcode ) REFERENCES product 
  ( pcode ); 

ALTER TABLE review 
  ADD CONSTRAINT fk_customer_to_review FOREIGN KEY ( cid ) REFERENCES customer ( 
  cid ); 

ALTER TABLE review 
  ADD CONSTRAINT fk_product_to_review FOREIGN KEY ( pcode ) REFERENCES product ( 
  pcode ); 

ALTER TABLE product_qna 
  ADD CONSTRAINT fk_product_to_product_qna FOREIGN KEY ( pcode ) REFERENCES 
  product ( pcode ); 

ALTER TABLE product_qna 
  ADD CONSTRAINT fk_customer_to_product_qna FOREIGN KEY ( cid ) REFERENCES 
  customer ( cid ); 

ALTER TABLE help_history 
  ADD CONSTRAINT fk_review_to_help_history FOREIGN KEY ( rcode ) REFERENCES 
  review ( rcode ); 

ALTER TABLE help_history 
  ADD CONSTRAINT fk_customer_to_help_history FOREIGN KEY ( cid ) REFERENCES 
  customer ( cid ); 

ALTER TABLE addrlist 
  ADD CONSTRAINT fk_customer_to_addrlist FOREIGN KEY ( cid ) REFERENCES customer 
  ( cid ); 

ALTER TABLE coupon_hold 
  ADD CONSTRAINT fk_coupon_to_coupon_hold FOREIGN KEY ( cuid ) REFERENCES coupon 
  ( cuid ); 

ALTER TABLE coupon_hold 
  ADD CONSTRAINT fk_customer_to_coupon_hold FOREIGN KEY ( cid ) REFERENCES 
  customer ( cid ); 

ALTER TABLE email_inquiry 
  ADD CONSTRAINT fk_customer_to_email_inquiry FOREIGN KEY ( cid ) REFERENCES 
  customer ( cid ); 

ALTER TABLE notice 
  ADD CONSTRAINT fk_customer_to_notice FOREIGN KEY ( cid ) REFERENCES customer ( 
  cid ); 

ALTER TABLE notice 
  ADD CONSTRAINT fk_admin_to_notice FOREIGN KEY ( aid ) REFERENCES ADMIN ( aid ) 
; 

ALTER TABLE customer_qna 
  ADD CONSTRAINT fk_customer_to_customer_qna FOREIGN KEY ( cid ) REFERENCES 
  customer ( cid ); 

ALTER TABLE customer_qna 
  ADD CONSTRAINT fk_admin_to_customer_qna FOREIGN KEY ( aid ) REFERENCES ADMIN ( 
  aid ); 

ALTER TABLE store_qna 
  ADD CONSTRAINT fk_market_to_store_qna FOREIGN KEY ( mid ) REFERENCES market ( 
  mid ); 

ALTER TABLE store_qna 
  ADD CONSTRAINT fk_customer_to_store_qna FOREIGN KEY ( cid ) REFERENCES 
  customer ( cid ); 

ALTER TABLE market_qna 
  ADD CONSTRAINT fk_market_to_market_qna FOREIGN KEY ( mid ) REFERENCES market ( 
  mid ); 

ALTER TABLE market_qna 
  ADD CONSTRAINT fk_admin_to_market_qna FOREIGN KEY ( aid ) REFERENCES ADMIN ( 
  aid ); 

COMMIT; 