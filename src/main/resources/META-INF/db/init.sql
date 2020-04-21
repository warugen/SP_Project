-----------------------------------------------------------------------------------------------------------------------
-- 태이블 삭제
-----------------------------------------------------------------------------------------------------------------------

DROP TABLE CART;
DROP TABLE ORDER_DETAIL;
DROP TABLE FAVORITE;
DROP TABLE PRODUCT_QNA;
DROP TABLE HELP_HISTORY;
DROP TABLE ADDRLIST;
DROP TABLE COUPON_HOLD;
DROP TABLE EMAIL_INQUIRY;
DROP TABLE NOTICE;
DROP TABLE CUSTOMER_QNA;
DROP TABLE STORE_QNA;
DROP TABLE MARKET_QNA;
DROP TABLE ADMIN;
DROP TABLE REVIEW;
DROP TABLE SP_ORDER;
DROP TABLE COUPON;
DROP TABLE CUSTOMER;
DROP TABLE GRADE;
DROP TABLE PRODUCT_OPTION;
DROP TABLE PRODUCT;
DROP TABLE MARKET;
DROP TABLE PRODUCT_TYPE;


-----------------------------------------------------------------------------------------------------------------------
-- 시퀀스 삭제
-----------------------------------------------------------------------------------------------------------------------
DROP SEQUENCE CART_SEQ;
DROP SEQUENCE PRODUCT_OPTION_SEQ;
DROP SEQUENCE PRODUCT_TYPE_SEQ;
DROP SEQUENCE COUPON_SEQ;
DROP SEQUENCE SP_ORDER_SEQ;
DROP SEQUENCE ORDER_DETAIL_SEQ;
DROP SEQUENCE MARKET_SEQ;
DROP SEQUENCE PRODUCT_SEQ;
DROP SEQUENCE FAVORITE_SEQ;
DROP SEQUENCE REVIEW_SEQ;
DROP SEQUENCE PRODUCT_QNA_SEQ;
DROP SEQUENCE HELP_HISTORY_SEQ;
DROP SEQUENCE GRADE_SEQ;
DROP SEQUENCE ADDRLIST_SEQ;
DROP SEQUENCE COUPON_HOLD_SEQ;
DROP SEQUENCE EMAIL_INQUIRY_SEQ;
DROP SEQUENCE NOTICE_SEQ;
DROP SEQUENCE CUSTOMER_QNA_SEQ;
DROP SEQUENCE STORE_QNA_SEQ;
DROP SEQUENCE MARKET_QNA_SEQ;

-----------------------------------------------------------------------------------------------------------------------
-- 시퀀스 생성
-----------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE CART_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE PRODUCT_OPTION_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE PRODUCT_TYPE_SEQ MAXVALUE 999 NOCACHE NOCYCLE;
CREATE SEQUENCE COUPON_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE SP_ORDER_SEQ MAXVALUE 9999999 NOCACHE NOCYCLE;
CREATE SEQUENCE ORDER_DETAIL_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE MARKET_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE PRODUCT_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE FAVORITE_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE REVIEW_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE PRODUCT_QNA_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE HELP_HISTORY_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE GRADE_SEQ MAXVALUE 9 NOCACHE NOCYCLE;
CREATE SEQUENCE ADDRLIST_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE COUPON_HOLD_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE EMAIL_INQUIRY_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE NOTICE_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE CUSTOMER_QNA_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE STORE_QNA_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;
CREATE SEQUENCE MARKET_QNA_SEQ MAXVALUE 99999999999999999999 NOCACHE NOCYCLE;

-- 시퀀스 생성 규칙(상품주문 테이블인 경우 )
SELECT TO_CHAR(SYSDATE,'YYYYMMDD') || TRIM(TO_CHAR(STD_SEQ.nextval,'0000')) FROM DUAL;


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
	CADDRNUM    VARCHAR2(5)  NOT NULL,  /* 기본주소번호 */
	CEMAIL      VARCHAR2(30) NOT NULL,  /* 메일 */
	CTEL        VARCHAR2(20) NOT NULL,  /* 고객전화 */
	CRDATE      DATE DEFAULT SYSDATE,   /* 가입날짜 */
	CBIRTH      DATE NOT NULL,          /* 고객생일 */
    CPOINT      NUMBER(10),             /* 고객포인트 */
	GCODE       VARCHAR2(1) NOT NULL    /* 등급코드 */
    
);

ALTER TABLE CUSTOMER
	ADD
		CONSTRAINT PK_CUSTOMER
		PRIMARY KEY (
			CID
		);

/* 카트 테이블 */
CREATE TABLE CART (
	CARTNO      VARCHAR2(20) NOT NULL, /* 카트번호 */
	CID         VARCHAR2(20) NOT NULL, /* 고객아이디 */
	POCODE      VARCHAR2(20) NOT NULL, /* 상품옵션코드 */
	CARTCOUNT   NUMBER(10)   NOT NULL  /* 상품개수 */
);

ALTER TABLE CART
	ADD
		CONSTRAINT PK_CART
		PRIMARY KEY (
			CARTNO
		);

/* 상품옵션 테이블 */
CREATE TABLE PRODUCT_OPTION (
	POCODE      VARCHAR2(20)    NOT NULL,   /* 상품옵션코드 */
	PONAME      VARCHAR2(100)   NOT NULL,   /* 상품옵션명 */
	PONET       NUMBER(10)      NOT NULL,   /* 원가 */
	POPRICE     NUMBER(10)      NOT NULL,   /* 판매가격 */
    POSTOCK     NUMBER(10),                 /* 재고수량 */
	TYPECODE    VARCHAR2(3)     NOT NULL,   /* 상품분류코드 */
	PCODE       VARCHAR2(20)                /* 상품코드  */
);

ALTER TABLE PRODUCT_OPTION
	ADD
		CONSTRAINT PK_PRODUCT_OPTION
		PRIMARY KEY (
			POCODE
		);

/* 상품분류 테이블 */
CREATE TABLE PRODUCT_TYPE (
	TYPECODE    VARCHAR2(3)     NOT NULL,  /* 상품분류코드 */
	TYPECODEREF VARCHAR2(3)     NOT NULL,  /* 상위분류코드 */
	PRODUCTTYPE VARCHAR2(60)    NOT NULL   /* 상품타입 */
);

ALTER TABLE PRODUCT_TYPE
	ADD
		CONSTRAINT PK_PRODUCT_TYPE
		PRIMARY KEY (
			TYPECODE
		);

/* 쿠폰 테이블 */
CREATE TABLE COUPON (
	CUID    VARCHAR2(20)    NOT NULL, /* 쿠폰아이디 */
	CUNAME  VARCHAR2(20)    NOT NULL, /* 쿠폰명 */
	CUSAIL  NUMBER(4)       NOT NULL  /* 할인율 */
);

ALTER TABLE COUPON
	ADD
		CONSTRAINT PK_COUPON
		PRIMARY KEY (
			CUID
		);

/* 주문 테이블 */
CREATE TABLE SP_ORDER (
	OCODE       VARCHAR2(20) NOT NULL,          /* 주문코드 */
	ONAME       VARCHAR2(30) NOT NULL,          /* 수령인 */
	OTEL        VARCHAR2(30) NOT NULL,          /* 수령자전번 */
	OPOST       VARCHAR2(10) NOT NULL,          /* 수령지우편번호 */
	OADDR1      VARCHAR2(60) NOT NULL,          /* 수령지1 */
	OADDR2      VARCHAR2(60) NOT NULL,          /* 수령지2 */
	OSUM        NUMBER(10)   NOT NULL,          /* 총금액 */
	OTIME       TIMESTAMP    DEFAULT SYSDATE,   /* 주문시간 */
	ODELIVERY   VARCHAR2(20) NOT NULL,          /* 배송상황 */
	OSTATUS     VARCHAR2(20) NOT NULL,          /* 주문상황 */
	CID         VARCHAR2(20) NOT NULL           /* 고객아이디 */
);

ALTER TABLE SP_ORDER
	ADD
		CONSTRAINT PK_SP_ORDER
		PRIMARY KEY (
			OCODE
		);

/* 주문상세 테이블7 */
CREATE TABLE ORDER_DETAIL (
	ODCODE  VARCHAR2(20) NOT NULL,  /* 주문상세코드 */
	OCODE   VARCHAR2(20) NOT NULL,  /* 주문코드 */
	POCODE  VARCHAR2(20) NOT NULL,  /* 상품옵션코드 */
	CUID    VARCHAR2(20) NOT NULL,  /* 쿠폰아이디 */
	ODCOUNT NUMBER(10)   DEFAULT 0, /* 수량 */
	ODUNIT  NUMBER(10)   DEFAULT 0  /* 단가 */
);

ALTER TABLE ORDER_DETAIL
	ADD
		CONSTRAINT PK_ORDER_DETAIL
		PRIMARY KEY (
			ODCODE
		);

/* 마켓상점 테이블9 */
CREATE TABLE MARKET (
	MID     VARCHAR2(20) NOT NULL, /* 마켓아이디 */
	MPW     VARCHAR2(20) NOT NULL, /* 마켓비번 */
	MNAME   VARCHAR2(20) NOT NULL, /* 마켓명 */
	MTEL    VARCHAR2(20) NOT NULL, /* 마켓전번 */
	MPOST   VARCHAR2(10) NOT NULL, /* 마켓우편번호 */
	MADDR1  VARCHAR2(60) NOT NULL, /* 마켓주소1 */
	MADDR2  VARCHAR2(60) NOT NULL  /* 마켓주소2 */
);

ALTER TABLE MARKET
	ADD
		CONSTRAINT PK_MARKET
		PRIMARY KEY (
			MID
		);

/* 상품 테이블 */
CREATE TABLE PRODUCT (
	PCODE VARCHAR2(20) NOT NULL, /* 상품코드 */
	PTITLE VARCHAR2(30) NOT NULL, /* 상품제목 */
	PCONTENT CLOB NOT NULL, /* 상품 내용 */
	PIMAGE1 VARCHAR2(30) NOT NULL, /* 대표이미지1 */
	PIMAGE2 VARCHAR2(30), /* 대표이미지2 */
	PIMAGE3 VARCHAR2(30), /* 대표이미지3 */
	MID VARCHAR2(20) NOT NULL /* 마켓아이디 */
);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT PK_PRODUCT
		PRIMARY KEY (
			PCODE
		);

/* 위시리스트 테이블 */
CREATE TABLE FAVORITE (
	FCODE   VARCHAR2(20) NOT NULL, /* 위시리스트코드 */
	CID     VARCHAR2(20) NOT NULL, /* 고객아이디 */
	PCODE   VARCHAR2(20) NOT NULL  /* 상품코드 */
);

ALTER TABLE FAVORITE
	ADD
		CONSTRAINT PK_FAVORITE
		PRIMARY KEY (
			FCODE
		);

/* 리뷰 테이블 */
CREATE TABLE REVIEW (
	RCODE       VARCHAR2(20) NOT NULL,        /* 리뷰코드 */
	RCONTENT    CLOB         NOT NULL,        /* 내용 */
	RSTAR       NUMBER(5)    NOT NULL,        /* 별점 */
	RRDATE      DATE         DEFAULT SYSDATE, /* 리뷰날짜 */
	RIMAGE      VARCHAR2(20),                 /* 리뷰이미지 */
	CID         VARCHAR2(20) NOT NULL,        /* 고객아이디 */
	PCODE       VARCHAR2(20) NOT NULL         /* 상품코드 */
);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT PK_REVIEW
		PRIMARY KEY (
			RCODE
		);

/* 상품정보 Q&A 테이블 */
CREATE TABLE PRODUCT_QNA (
	PQCODE      VARCHAR2(20)    NOT NULL,        /* QNA코드 */
	PQTITLE     VARCHAR2(100)   NOT NULL,        /* Q제목 */
	PQCONTENT   VARCHAR2(3000)  NOT NULL,        /* Q내용 */
	PQANSWER    VARCHAR2(3000),                  /* Q답글 */
	PQSECRET    VARCHAR2(5)     NOT NULL,        /* 비밀글여부 */
	PQCOMPLETE  VARCHAR2(5)     NOT NULL,        /* 완료여부 */
	PQDATE      TIMESTAMP       DEFAULT SYSDATE, /* 작성일자 */
	PCODE       VARCHAR2(20)    NOT NULL,        /* 상품코드 */
	CID         VARCHAR2(20)    NOT NULL         /* 고객아이디 */
);

ALTER TABLE PRODUCT_QNA
	ADD
		CONSTRAINT PK_PRODUCT_QNA
		PRIMARY KEY (
			PQCODE
		);

/* 리뷰 도움되요(좋아요) 테이블 */
CREATE TABLE HELP_HISTORY (
	HCODE   VARCHAR2(20) NOT NULL, /* 도움코드 */
	RCODE   VARCHAR2(20) NOT NULL, /* 리뷰코드 */
	CID     VARCHAR2(20) NOT NULL  /* 고객아이디 */
);

ALTER TABLE HELP_HISTORY
	ADD
		CONSTRAINT PK_HELP_HISTORY
		PRIMARY KEY (
			HCODE
		);

/* 등급 테이블17 */
CREATE TABLE GRADE (
	GCODE   VARCHAR2(1)  NOT NULL, /* 등급코드 */
	GRADE   VARCHAR2(20) NOT NULL, /* 고객등급 */
    GHIGH   NUMBER(10)   NOT NULL, /* 상한선 */
	GLOW    NUMBER(10)   NOT NULL, /* 하한선 */
	GPOINT  NUMBER(2)    NOT NULL  /* 적립포인트 */
);

ALTER TABLE GRADE
	ADD
		CONSTRAINT PK_GRADE
		PRIMARY KEY (
			GCODE
		);

/* 고객 주소 테이블 */
CREATE TABLE ADDRLIST (
	ADDRCODE VARCHAR2(20) NOT NULL, /* 주소함번호 */
	ADDRNAME VARCHAR2(50) NOT NULL, /* 주소지이름 */
	CPOST    VARCHAR2(10) NOT NULL, /* 고객우편번호 */
	CADDR1   VARCHAR2(60) NOT NULL, /* 고객주소1 */
	CADDR2   VARCHAR2(60) NOT NULL, /* 고객주소2 */
	CID      VARCHAR2(20) NOT NULL  /* 고객아이디 */
);

ALTER TABLE ADDRLIST
	ADD
		CONSTRAINT PK_ADDRLIST
		PRIMARY KEY (
			ADDRCODE
		);

/* 고객 보유 쿠폰 테이블 */
CREATE TABLE COUPON_HOLD (
	CHNUM   VARCHAR2(20) NOT NULL,  /* 고유번호 */
	CUID    VARCHAR2(20) NOT NULL,  /* 쿠폰아이디 */
	CID     VARCHAR2(20)            /* 고객아이디 */
);

ALTER TABLE COUPON_HOLD
	ADD
		CONSTRAINT PK_COUPON_HOLD
		PRIMARY KEY (
			CHNUM
		);

/* 이메일 문의 테이블 */
CREATE TABLE EMAIL_INQUIRY (
	EICODE      VARCHAR2(20)    NOT NULL,  /* EI코드 */
	CID         VARCHAR2(20)    NOT NULL,  /* 고객아이디 */
	EITYPE      VARCHAR2(20)    NOT NULL,  /* 상담분류 */
	EIMAUL      VARCHAR2(30)    NOT NULL,  /* 답변받을메일 */
	EITITLE     VARCHAR2(20)    NOT NULL,  /* 제목 */
	EICONTENT   VARCHAR2(3000)  NOT NULL,  /* 내용 */
	EIFILE      VARCHAR2(30)               /* 첨부파일 */
);

ALTER TABLE EMAIL_INQUIRY
	ADD
		CONSTRAINT PK_EMAIL_INQUIRY
		PRIMARY KEY (
			EICODE
		);

/* 공지사항 게시판 테이블 */
CREATE TABLE NOTICE (
	NCODE    VARCHAR2(20)   NOT NULL,        /* 공지사항글번호 */
	NTITLE   VARCHAR2(100)  NOT NULL,        /* 제목 */
	NCONTENT CLOB           NOT NULL,        /* 내용 */
	NRDATE   DATE           DEFAULT SYSDATE, /* 작성시간 */
	NGROUP   NUMBER(7)      NOT NULL,        /* 원글 */
	NSTEP    NUMBER(7)      NOT NULL,        /* 글순서 */
	NINDENT  NUMBER(7)      NOT NULL,        /* 들여쓰기 */
	NHIT     NUMBER(7)      NOT NULL,        /* 조회수 */
	CID      VARCHAR2(20),                   /* 고객아이디 */
	AID      VARCHAR2(20)                    /* 관리자ID */
);

ALTER TABLE NOTICE
	ADD
		CONSTRAINT PK_NOTICE
		PRIMARY KEY (
			NCODE
		);

/* 고객-관리자간 문의 게시판 테이블 */
CREATE TABLE CUSTOMER_QNA (
	CQCODE      VARCHAR2(20)    NOT NULL,        /* 글번호 */
	CQTITLE     VARCHAR2(100)   NOT NULL,        /* 제목 */
	CQCONTENT   CLOB            NOT NULL,        /* 내용 */
	CQRDATE     DATE            DEFAULT SYSDATE, /* 작성시간 */
	CQGROUP     NUMBER(7)       NOT NULL,        /* 원글 */
	CQSTEP      NUMBER(7)       NOT NULL,        /* 글순서 */
	CQINDENT    NUMBER(7)       NOT NULL,        /* 들여쓰기 */
	CQHIT       NUMBER(7)       NOT NULL,        /* 조회수 */
	CID         VARCHAR2(20),                    /* 고객아이디 */
	AID         VARCHAR2(20)                     /* 관리자ID */
);

ALTER TABLE CUSTOMER_QNA
	ADD
		CONSTRAINT PK_CUSTOMER_QNA
		PRIMARY KEY (
			CQCODE
		);

/* 상점-회원간 문의 게시판 테이블 */
CREATE TABLE STORE_QNA (
	SQCODE      VARCHAR2(20)  NOT NULL,         /* 글번호 */
	SQTITLE     VARCHAR2(100) NOT NULL,         /* 제목 */
	SQCONTENT   CLOB          NOT NULL,         /* 내용 */
	SQRDATE     DATE          DEFAULT SYSDATE,  /* 작성시간 */
	SQGROUP     NUMBER(7)     NOT NULL,         /* 원글 */
	SQSTEP      NUMBER(7)     NOT NULL,         /* 글순서 */
	SQINDENT    NUMBER(7)     NOT NULL,         /* 들여쓰기 */
	SQHIT       NUMBER(7)     NOT NULL,         /* 조회수 */
	MID         VARCHAR2(20),                   /* 마켓아이디 */
	CID         VARCHAR2(20)                    /* 고객아이디 */
);

ALTER TABLE STORE_QNA
	ADD
		CONSTRAINT PK_STORE_QNA
		PRIMARY KEY (
			SQCODE
		);

/* 상점-관리자간 문의 테이블22 */
CREATE TABLE MARKET_QNA (
	MQCODE      VARCHAR2(20)    NOT NULL,        /* 글번호 */
	MQTITLE     VARCHAR2(100)   NOT NULL,        /* 제목 */
	MQCONTENT   CLOB            NOT NULL,        /* 내용 */
	MQRDATE     DATE            DEFAULT SYSDATE, /* 작성시간 */
	MQGROUP     NUMBER(7)       NOT NULL,        /* 원글 */
	MQSTEP      NUMBER(7)       NOT NULL,        /* 글순서 */
	MQINDENT    NUMBER(7)       NOT NULL,        /* 들여쓰기 */
	MQHIT       NUMBER(7)       NOT NULL,        /* 조회수 */
	MID         VARCHAR2(20) ,                   /* 마켓아이디 */
	AID         VARCHAR2(20)                     /* 관리자ID */
);

ALTER TABLE MARKET_QNA
	ADD
		CONSTRAINT PK_MARKET_QNA
		PRIMARY KEY (
			MQCODE
		);

/* 관리자 테이블 */
CREATE TABLE ADMIN (
	AID VARCHAR2(20) NOT NULL, /* 관리자ID */
	APW VARCHAR2(20) NOT NULL  /* 비밀번호 */
);

ALTER TABLE ADMIN
	ADD
		CONSTRAINT PK_ADMIN
		PRIMARY KEY (
			AID
		);


-----------------------------------------------------------------------------------------------------------------------
-- 외래키 설정
-----------------------------------------------------------------------------------------------------------------------
ALTER TABLE CUSTOMER
	ADD
		CONSTRAINT FK_GRADE_TO_CUSTOMER
		FOREIGN KEY (
			GCODE
		)
		REFERENCES GRADE (
			GCODE
		);

ALTER TABLE CART
	ADD
		CONSTRAINT FK_CUSTOMER_TO_CART
		FOREIGN KEY (
			CID
		)
		REFERENCES CUSTOMER (
			CID
		);

ALTER TABLE CART
	ADD
		CONSTRAINT FK_PRODUCT_OPTION_TO_CART
		FOREIGN KEY (
			POCODE
		)
		REFERENCES PRODUCT_OPTION (
			POCODE
		);

ALTER TABLE PRODUCT_OPTION
	ADD
		CONSTRAINT FK_PRODUCT_TYPE_TO_PRODUCT_OP
		FOREIGN KEY (
			TYPECODE
		)
		REFERENCES PRODUCT_TYPE (
			TYPECODE
		);

ALTER TABLE PRODUCT_OPTION
	ADD
		CONSTRAINT FK_PRODUCT_TO_PRODUCT_OPTION
		FOREIGN KEY (
			PCODE
		)
		REFERENCES PRODUCT (
			PCODE
		);

ALTER TABLE SP_ORDER
	ADD
		CONSTRAINT FK_CUSTOMER_TO_SP_ORDER
		FOREIGN KEY (
			CID
		)
		REFERENCES CUSTOMER (
			CID
		);

ALTER TABLE ORDER_DETAIL
	ADD
		CONSTRAINT FK_SP_ORDER_TO_DETAIL
		FOREIGN KEY (
			OCODE
		)
		REFERENCES SP_ORDER (
			OCODE
		);

ALTER TABLE ORDER_DETAIL
	ADD
		CONSTRAINT FK_PRODUCT_OPTION_TO_DETAIL
		FOREIGN KEY (
			POCODE
		)
		REFERENCES PRODUCT_OPTION (
			POCODE
		);

ALTER TABLE ORDER_DETAIL
	ADD
		CONSTRAINT FK_COUPON_TO_DETAIL
		FOREIGN KEY (
			CUID
		)
		REFERENCES COUPON (
			CUID
		);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT FK_MARKET_TO_PRODUCT
		FOREIGN KEY (
			MID
		)
		REFERENCES MARKET (
			MID
		);
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
ALTER TABLE FAVORITE
	ADD
		CONSTRAINT FK_CUSTOMER_TO_FAVORITE
		FOREIGN KEY (
			CID
		)
		REFERENCES CUSTOMER (
			CID
		);

ALTER TABLE FAVORITE
	ADD
		CONSTRAINT FK_PRODUCT_TO_FAVORITE
		FOREIGN KEY (
			PCODE
		)
		REFERENCES PRODUCT (
			PCODE
		);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT FK_CUSTOMER_TO_REVIEW
		FOREIGN KEY (
			CID
		)
		REFERENCES CUSTOMER (
			CID
		);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT FK_PRODUCT_TO_REVIEW
		FOREIGN KEY (
			PCODE
		)
		REFERENCES PRODUCT (
			PCODE
		);

ALTER TABLE PRODUCT_QNA
	ADD
		CONSTRAINT FK_PRODUCT_TO_PRODUCT_QNA
		FOREIGN KEY (
			PCODE
		)
		REFERENCES PRODUCT (
			PCODE
		);

ALTER TABLE PRODUCT_QNA
	ADD
		CONSTRAINT FK_CUSTOMER_TO_PRODUCT_QNA
		FOREIGN KEY (
			CID
		)
		REFERENCES CUSTOMER (
			CID
		);

ALTER TABLE HELP_HISTORY
	ADD
		CONSTRAINT FK_REVIEW_TO_HELP_HISTORY
		FOREIGN KEY (
			RCODE
		)
		REFERENCES REVIEW (
			RCODE
		);

ALTER TABLE HELP_HISTORY
	ADD
		CONSTRAINT FK_CUSTOMER_TO_HELP_HISTORY
		FOREIGN KEY (
			CID
		)
		REFERENCES CUSTOMER (
			CID
		);

ALTER TABLE ADDRLIST
	ADD
		CONSTRAINT FK_CUSTOMER_TO_ADDRLIST
		FOREIGN KEY (
			CID
		)
		REFERENCES CUSTOMER (
			CID
		);

ALTER TABLE COUPON_HOLD
	ADD
		CONSTRAINT FK_COUPON_TO_COUPON_HOLD
		FOREIGN KEY (
			CUID
		)
		REFERENCES COUPON (
			CUID
		);

ALTER TABLE COUPON_HOLD
	ADD
		CONSTRAINT FK_CUSTOMER_TO_COUPON_HOLD
		FOREIGN KEY (
			CID
		)
		REFERENCES CUSTOMER (
			CID
		);

ALTER TABLE EMAIL_INQUIRY
	ADD
		CONSTRAINT FK_CUSTOMER_TO_EMAIL_INQUIRY
		FOREIGN KEY (
			CID
		)
		REFERENCES CUSTOMER (
			CID
		);

ALTER TABLE NOTICE
	ADD
		CONSTRAINT FK_CUSTOMER_TO_NOTICE
		FOREIGN KEY (
			CID
		)
		REFERENCES CUSTOMER (
			CID
		);

ALTER TABLE NOTICE
	ADD
		CONSTRAINT FK_ADMIN_TO_NOTICE
		FOREIGN KEY (
			AID
		)
		REFERENCES ADMIN (
			AID
		);

ALTER TABLE CUSTOMER_QNA
	ADD
		CONSTRAINT FK_CUSTOMER_TO_CUSTOMER_QNA
		FOREIGN KEY (
			CID
		)
		REFERENCES CUSTOMER (
			CID
		);

ALTER TABLE CUSTOMER_QNA
	ADD
		CONSTRAINT FK_ADMIN_TO_CUSTOMER_QNA
		FOREIGN KEY (
			AID
		)
		REFERENCES ADMIN (
			AID
		);

ALTER TABLE STORE_QNA
	ADD
		CONSTRAINT FK_MARKET_TO_STORE_QNA
		FOREIGN KEY (
			MID
		)
		REFERENCES MARKET (
			MID
		);

ALTER TABLE STORE_QNA
	ADD
		CONSTRAINT FK_CUSTOMER_TO_STORE_QNA
		FOREIGN KEY (
			CID
		)
		REFERENCES CUSTOMER (
			CID
		);

ALTER TABLE MARKET_QNA
	ADD
		CONSTRAINT FK_MARKET_TO_MARKET_QNA
		FOREIGN KEY (
			MID
		)
		REFERENCES MARKET (
			MID
		);

ALTER TABLE MARKET_QNA
	ADD
		CONSTRAINT FK_ADMIN_TO_MARKET_QNA
		FOREIGN KEY (
			AID
		)
		REFERENCES ADMIN (
			AID
		);
        
COMMIT;