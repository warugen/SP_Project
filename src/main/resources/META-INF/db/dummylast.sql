INSERT INTO PRODUCT_TYPE VALUES('1',0,'의류잡화');
INSERT INTO PRODUCT_TYPE VALUES('2',0,'식품');
INSERT INTO PRODUCT_TYPE VALUES('3',0,'디지털');
INSERT INTO PRODUCT_TYPE VALUES('4',0,'가구');
INSERT INTO PRODUCT_TYPE VALUES('1-1','1','여성의류');
INSERT INTO PRODUCT_TYPE VALUES('1-2','1','남성의류');
INSERT INTO PRODUCT_TYPE VALUES('1-3','1','유아의류');
INSERT INTO PRODUCT_TYPE VALUES('1-4','1','패션잡화');
INSERT INTO PRODUCT_TYPE VALUES('2-1','2','농산물');
INSERT INTO PRODUCT_TYPE VALUES('2-2','2','수산물');
INSERT INTO PRODUCT_TYPE VALUES('2-3','2','축산물');
INSERT INTO PRODUCT_TYPE VALUES('2-4','2','가공식품');
INSERT INTO PRODUCT_TYPE VALUES('3-1','3','TV');
INSERT INTO PRODUCT_TYPE VALUES('3-2','3','컴퓨터');
INSERT INTO PRODUCT_TYPE VALUES('3-3','3','냉장고');
INSERT INTO PRODUCT_TYPE VALUES('3-4','3','휴대폰');
INSERT INTO PRODUCT_TYPE VALUES('4-1','4','침실');
INSERT INTO PRODUCT_TYPE VALUES('4-2','4','거실');
INSERT INTO PRODUCT_TYPE VALUES('4-3','4','수납');
INSERT INTO PRODUCT_TYPE VALUES('4-4','4','주방');

INSERT INTO MARKET VALUES('aaa','111','fs마켓','02-123-4567','01321','서울특별시 종로구 훈정동 1-2','햇살빌딩 501');
INSERT INTO MARKET VALUES('bbb','111','푸드몰','031-135-7913','10910','경기도 파주시 상지석동','551-154');
INSERT INTO MARKET VALUES('ccc','111','디지마켓','02-112-3581','06352','서울 강남구 광평로39길','93');
INSERT INTO MARKET VALUES('ddd','111','파로몰','031-050-0524','17092','경기 용인시 처인구 134','가구빌딩 1102');

INSERT INTO PRODUCT VALUES(PRODUCT_SEQ.nextval, '균일가 10켤레 남자 여자 발목양말', '균일가 10켤레 남자 여자 발목양말', 'etc1.jpg',null,null, 'aaa');
INSERT INTO PRODUCT VALUES(PRODUCT_SEQ.nextval, '드롭귀걸이/링/실버/코인목걸이/은팔찌', '드롭귀걸이/링/실버/코인목걸이/은팔찌', 'etc2.jpg','etc2-2.jpg',null, 'aaa');
INSERT INTO PRODUCT VALUES(PRODUCT_SEQ.nextval, '아동복BEST/봄신상/아동복/맨투맨/상하복/데님/세트/주니어/유아동복', '아동복BEST/봄신상/아동복/맨투맨/상하복/데님/세트/주니어/유아동복', 'kid1.jpg',null,null, 'aaa');
INSERT INTO PRODUCT VALUES(PRODUCT_SEQ.nextval, '초등학생/주니어 여름 스타일제안 반팔티/반바지/상하복', '초등학생/주니어 여름 스타일제안 반팔티/반바지/상하복', 'kid2.jpg',null,null, 'aaa');
INSERT INTO PRODUCT VALUES(PRODUCT_SEQ.nextval, '캐주얼 스판 남성정장수프/넥타이증정/양복/하객정장', '캐주얼 스판 남성정장수프/넥타이증정/양복/하객정장', 'man1.jpg',null,null, 'aaa');
INSERT INTO PRODUCT VALUES(PRODUCT_SEQ.nextval, '지오지아 外 인기 넥타이 50종 모음전', '지오지아 外 인기 넥타이 50종 모음전', 'man2.jpg',null,null, 'aaa');
INSERT INTO PRODUCT VALUES(PRODUCT_SEQ.nextval, '봄신상/블라우스/44~110/빅사이즈/셔츠/프릴', '봄신상/블라우스/44~110/빅사이즈/셔츠/프릴', 'woman1.jpg',null,null, 'aaa');
INSERT INTO PRODUCT VALUES(PRODUCT_SEQ.nextval, '봄/여름/여성원피스/롱/빅사이즈원피스/빅사이즈여성의류/쉬폰/임부복/홈웨어/통조', '봄/여름/여성원피스/롱/빅사이즈원피스/빅사이즈여성의류/쉬폰/임부복/홈웨어/통조', 'woman2.jpg','woman2-2.jpg','woman2-3.jpg', 'aaa');

INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'(남/여)발목 무지 10켤례',1000,5800,400,'1-1',1);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'(남/여)발목 포인트 10켤례',1000,5800,400,'1-1',1);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'(남/여)발목 하프 10켤례',1000,5800,400,'1-1',1);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'(남/여)발목 아가일 10켤례',1000,5800,400,'1-1',1);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'(남/여)발목 크로스 10켤례',1000,5800,400,'1-1',1);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'심플 골드볼 목걸이',8000,19900,400,'1-1',2);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'심플 큐빅 목걸이',8000,16900,400,'1-1',2);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'심플 은팔찌',15000,26900,400,'1-1',2);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'플로랄레이스장식상하복',3000,7700,555,'1-2',3);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'모리다이노상하복',3000,19000,555,'1-2',3);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'바니밴딩원피스',3000,10600,555,'1-2',3);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'데니안 트레이닝',5000,12800,555,'1-2',4);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'캘리포니아',4000,11800,555,'1-2',4);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'피오 티셔츠',3000,9800,555,'1-2',4);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'BC02-1(블랙)',50000,99000,555,'1-3',5);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'BC03-3(그레이)',50000,79000,555,'1-3',5);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'BC04-5(네이비)',50000,79000,555,'1-3',5);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'ABWAA511',3000,7900,555,'1-3',6);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'ABWAA523',3000,7900,555,'1-3',6);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'ABWAA673',3000,7900,555,'1-3',6);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'셔츠셔츠',3000,15500,555,'1-4',7);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'블라우스',5000,20600,555,'1-4',7);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'봄봄프릴',7000,35500,555,'1-4',7);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'A원피스',5000,24300,500,'1-4',8);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'B원피스',5000,15800,400,'1-4',8);
INSERT INTO PRODUCT_OPTION VALUES(PRODUCT_OPTION_SEQ.nextval,'C원피스',5000,20600,400,'1-4',8);


INSERT INTO GRADE VALUES('1', '일반회원',4,0,1);
INSERT INTO GRADE VALUES('2', 'vip',79,5,2);
INSERT INTO GRADE VALUES('3', 'svip',99999,80,3);
INSERT INTO CUSTOMER VALUES('aaaa','1111','홍길동',null,null,'1','hong@mail.com',		'010-1111-1111',	to_date('2016-01-01', 'yyyy-mm-dd'),0,'1');
INSERT INTO CUSTOMER VALUES('bbbb','1111','이순신',null,null,'1','leesoon@mail.com',	'010-2222-2222',	to_date('2017-02-02', 'yyyy-mm-dd'),0,'1');
INSERT INTO CUSTOMER VALUES('cccc','1111','장영실',null,null,'1','jang0@mail.com',	'010-3333-3333',	to_date('2018-03-03', 'yyyy-mm-dd'),0,'1');
INSERT INTO CUSTOMER VALUES('dddd','1111','윤봉길',null,null,'1','yoonteacher@mail.com','010-4444-4444',	to_date('2019-04-05', 'yyyy-mm-dd'),0,'1');
INSERT INTO CUSTOMER VALUES('eeee','1111','박정숙',null,null,'1','jungsuk@mail.com',	'010-5555-5555',	to_date('2020-01-05', 'yyyy-mm-dd'),0,'1');
INSERT INTO CUSTOMER VALUES('ffff','1111','김선우',null,null,'1','seonwoo@mail.com',	'010-6666-6666',	to_date('2020-02-16', 'yyyy-mm-dd'),0,'1');
INSERT INTO CUSTOMER VALUES('gggg','1111','박우진',null,null,'1','woojin@mail.com',	'010-7777-7777',	to_date('2020-03-17', 'yyyy-mm-dd'),0,'1');
INSERT INTO CUSTOMER VALUES('hhhh','1111','이윤선',null,null,'1','yoonyoon@mail.com',	'010-8888-8888',	to_date('2020-01-28', 'yyyy-mm-dd'),0,'1');
INSERT INTO CUSTOMER VALUES('iiii','1111','강호정',null,null,'1','kangkang@mail.com',	'010-9999-9999',	to_date('2020-02-29', 'yyyy-mm-dd'),0,'1');
INSERT INTO CUSTOMER VALUES('jjjj','1111','박하늘',null,null,'1','parksky@mail.com',	'010-0000-0000',	to_date('2020-03-30', 'yyyy-mm-dd'),0,'1');
INSERT INTO COUPON VALUES(0, '쿠폰미적용',0);
INSERT INTO COUPON VALUES(COUPON_SEQ.nextval, '10% 브론즈쿠폰', 10);
INSERT INTO COUPON VALUES(COUPON_SEQ.nextval, '20% 실버쿠폰', 20);
INSERT INTO COUPON VALUES(COUPON_SEQ.nextval, '30% 골드쿠폰', 30);
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'홍길동','010-1111-1111','11111','경기도 파주시 상지석동','551-154',15000,	to_date('2016-11-01', 'yyyy-mm-dd'),'배송완료','구매완료','aaaa');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'홍길동','010-1111-1111','11111','경기도 파주시 상지석동','551-154',15000,	to_date('2016-11-01', 'yyyy-mm-dd'),'배송완료','구매완료','aaaa');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'이순신','010-2222-2222','11111','경기도 파주시 상지석동','551-154',20000,	to_date('2017-12-02', 'yyyy-mm-dd'),'배송완료','구매완료','aaaa');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'장영실','010-3333-3333','11111','경기도 파주시 상지석동','551-154',95000,	to_date('2018-08-03', 'yyyy-mm-dd'),'배송완료','구매완료','aaaa');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'윤봉길','010-4444-4444','11111','경기도 파주시 상지석동','551-154',50000,	to_date('2019-09-05', 'yyyy-mm-dd'),'배송완료','구매완료','aaaa');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'박정숙','010-5555-5555','11111','경기도 파주시 상지석동','551-154',20000,	to_date('2020-03-05', 'yyyy-mm-dd'),'배송완료','구매완료','aaaa');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'김선우','010-6666-6666','11111','경기도 파주시 상지석동','551-154',40000,	to_date('2020-03-16', 'yyyy-mm-dd'),'배송완료','구매완료','aaaa');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'박우진','010-7777-7777','11111','경기도 파주시 상지석동','551-154',60000,	to_date('2020-03-17', 'yyyy-mm-dd'),'배송완료','구매완료','aaaa');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'이윤선','010-8888-8888','11111','경기도 파주시 상지석동','551-154',70000,	to_date('2020-03-28', 'yyyy-mm-dd'),'배송완료','구매완료','aaaa');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'강호정','010-9999-9999','11111','경기도 파주시 상지석동','551-154',80000,	to_date('2020-03-29', 'yyyy-mm-dd'),'배송완료','구매완료','aaaa');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'이순신','010-2222-2222','11111','경기도 파주시 상지석동','551-154',20000,	to_date('2017-12-02', 'yyyy-mm-dd'),'배송완료','구매완료','bbbb');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'장영실','010-3333-3333','11111','경기도 파주시 상지석동','551-154',95000,	to_date('2018-08-03', 'yyyy-mm-dd'),'배송완료','구매완료','cccc');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'윤봉길','010-4444-4444','11111','경기도 파주시 상지석동','551-154',50000,	to_date('2019-09-05', 'yyyy-mm-dd'),'배송완료','구매완료','dddd');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'박정숙','010-5555-5555','11111','경기도 파주시 상지석동','551-154',20000,	to_date('2020-03-05', 'yyyy-mm-dd'),'배송완료','구매완료','eeee');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'김선우','010-6666-6666','11111','경기도 파주시 상지석동','551-154',40000,	to_date('2020-03-16', 'yyyy-mm-dd'),'배송완료','구매완료','ffff');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'박우진','010-7777-7777','11111','경기도 파주시 상지석동','551-154',60000,	to_date('2020-03-17', 'yyyy-mm-dd'),'배송완료','구매완료','gggg');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'이윤선','010-8888-8888','11111','경기도 파주시 상지석동','551-154',70000,	to_date('2020-03-28', 'yyyy-mm-dd'),'배송완료','구매완료','hhhh');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'강호정','010-9999-9999','11111','경기도 파주시 상지석동','551-154',80000,	to_date('2020-03-29', 'yyyy-mm-dd'),'배송완료','구매완료','iiii');
INSERT INTO SP_ORDER VALUES(SP_ORDER_SEQ.nextval,'박하늘','010-0000-0000','11111','경기도 파주시 상지석동','551-154',90000,	to_date('2020-03-31', 'yyyy-mm-dd'),'배송완료','구매완료','jjjj');
INSERT INTO REVIEW VALUES(REVIEW_SEQ.nextval, '좋은 제품이에요~ 잘 썼습니다.',4,				to_date('2016-11-01', 'yyyy-mm-dd') ,NULL,'aaaa',1);
INSERT INTO REVIEW VALUES(REVIEW_SEQ.nextval, '가성비 최고 입니다',5,						to_date('2017-12-02', 'yyyy-mm-dd') ,NULL,'bbbb',1);
INSERT INTO REVIEW VALUES(REVIEW_SEQ.nextval, '배송이 조금 느렸지만 제품은 괜찮은것 같네요.',3,		to_date('2018-08-03', 'yyyy-mm-dd')	,NULL,'cccc',1);
INSERT INTO REVIEW VALUES(REVIEW_SEQ.nextval, '좀 더 써봐야 알겠지만 일단 좋을것 같아요.',4,		to_date('2019-09-05', 'yyyy-mm-dd')	,NULL,'dddd',1);
INSERT INTO REVIEW VALUES(REVIEW_SEQ.nextval, '배송상태가 엉망이네요. 배송사좀 바꾸세요.',1,		to_date('2020-03-05', 'yyyy-mm-dd')	,NULL,'eeee',1);
INSERT INTO REVIEW VALUES(REVIEW_SEQ.nextval, '좋은 제품이에요~ 잘 썼습니다.',5,				to_date('2020-03-16', 'yyyy-mm-dd') ,NULL,'ffff',1);
INSERT INTO REVIEW VALUES(REVIEW_SEQ.nextval, '가성비 최고 입니다',4,						to_date('2020-03-17', 'yyyy-mm-dd') ,NULL,'gggg',1);
INSERT INTO REVIEW VALUES(REVIEW_SEQ.nextval, '배송이 조금 느렸지만 제품은 괜찮은것 같네요.',3,		to_date('2020-03-28', 'yyyy-mm-dd')	,NULL,'hhhh',1);
INSERT INTO REVIEW VALUES(REVIEW_SEQ.nextval, '좀 더 써봐야 알겠지만 일단 좋을것 같아요.',4,		to_date('2020-03-29', 'yyyy-mm-dd')	,NULL,'iiii',1);
INSERT INTO REVIEW VALUES(REVIEW_SEQ.nextval, '배송상태가 엉망이네요. 배송사좀 바꾸세요.',1,		to_date('2020-03-31', 'yyyy-mm-dd')	,NULL,'jjjj',1);
INSERT INTO ADMIN VALUES('admin','111');
INSERT INTO MARKET_QNA VALUES(MARKET_QNA_SEQ.nextval,'질문','냉무',SYSDATE,1,1,0,0,		'aaa',NULL);
INSERT INTO STORE_QNA VALUES(STORE_QNA_SEQ.nextval,'질문','냉무',SYSDATE,1,1,0,0,			'aaa',NULL);
INSERT INTO CUSTOMER_QNA VALUES(CUSTOMER_QNA_SEQ.nextval,'질문','냉무',SYSDATE,1,1,0,0,	'aaaa',NULL);
INSERT INTO NOTICE VALUES(NOTICE_SEQ.nextval,'질문','냉무',SYSDATE,1,1,0,0,				'aaaa',NULL);
INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,1,'aaaa');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,1,'bbbb');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,1,'cccc');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,1,'dddd');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,1,'eeee');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,1,'ffff');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,1,'gggg');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,1,'hhhh');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,1,'iiii');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,1,'jjjj');
INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,2,'aaaa');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,2,'bbbb');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,2,'cccc');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,2,'dddd');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,2,'eeee');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,2,'ffff');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,2,'gggg');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,2,'hhhh');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,2,'iiii');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,2,'jjjj');
INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,3,'aaaa');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,3,'bbbb');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,3,'cccc');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,3,'dddd');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,3,'eeee');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,3,'ffff');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,3,'gggg');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,3,'hhhh');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,3,'iiii');INSERT INTO COUPON_HOLD VALUES(COUPON_HOLD_SEQ.nextval,3,'jjjj');
INSERT INTO ADDRLIST VALUES(ADDRLIST_SEQ.nextval,1,'11111','서울시','햇님아파트 101동','aaaa');
INSERT INTO ADDRLIST VALUES(ADDRLIST_SEQ.nextval,1,'11111','서울시','햇님아파트 102동','bbbb');
INSERT INTO ADDRLIST VALUES(ADDRLIST_SEQ.nextval,1,'11111','서울시','햇님아파트 103동','cccc');
INSERT INTO ADDRLIST VALUES(ADDRLIST_SEQ.nextval,1,'11111','서울시','햇님아파트 104동','dddd');
INSERT INTO ADDRLIST VALUES(ADDRLIST_SEQ.nextval,1,'11111','서울시','햇님아파트 105동','eeee');
INSERT INTO ADDRLIST VALUES(ADDRLIST_SEQ.nextval,1,'11111','서울시','햇님아파트 106동','ffff');
INSERT INTO ADDRLIST VALUES(ADDRLIST_SEQ.nextval,1,'11111','서울시','햇님아파트 107동','gggg');
INSERT INTO ADDRLIST VALUES(ADDRLIST_SEQ.nextval,1,'11111','서울시','햇님아파트 108동','hhhh');
INSERT INTO ADDRLIST VALUES(ADDRLIST_SEQ.nextval,1,'11111','서울시','햇님아파트 109동','iiii');
INSERT INTO ADDRLIST VALUES(ADDRLIST_SEQ.nextval,1,'11111','서울시','햇님아파트 110동','jjjj');
INSERT INTO ADDRLIST VALUES(ADDRLIST_SEQ.nextval,2,'22222','부산시','22-22번지 자취방','aaaa');
INSERT INTO ADDRLIST VALUES(ADDRLIST_SEQ.nextval,3,'33333','용산시','33-33번지 용산 사무소','aaaa');
INSERT INTO HELP_HISTORY VALUES(HELP_HISTORY_SEQ.nextval,1,'aaaa');
INSERT INTO PRODUCT_QNA VALUES(PRODUCT_QNA_SEQ.nextval,'상품문의입니다','배송시간이 얼마나 걸리나요?','3~4일 정도입니다.','1','1',to_date('2016-11-01', 'yyyy-mm-dd'),1,'aaaa');
INSERT INTO PRODUCT_QNA VALUES(PRODUCT_QNA_SEQ.nextval,'사진으로 봤을땐 괜찮은데','흠집검수해서 받을수 있나요?','네 가능합니다. 담당 문의전화로 연락주세요.','0','1',to_date('2017-12-02', 'yyyy-mm-dd'),1,'bbbb');
INSERT INTO PRODUCT_QNA VALUES(PRODUCT_QNA_SEQ.nextval,'상품괜찮네요','그거에대한 내용이요','답변입니다.','1','1',to_date('2018-08-03', 'yyyy-mm-dd'),1,'cccc');
INSERT INTO PRODUCT_QNA VALUES(PRODUCT_QNA_SEQ.nextval,'제품 디테일 관련 질문입니다.','다른 원하는 색깔로 가능한가요?','옵션 외의 제품은 품절입니다.죄송합니다.','0','1',to_date('2019-09-05', 'yyyy-mm-dd'),1,'dddd');
INSERT INTO PRODUCT_QNA VALUES(PRODUCT_QNA_SEQ.nextval,'택배 회사 관련 문의','그거에대한 내용이요','답변입니다.','1','1',to_date('2020-03-05', 'yyyy-mm-dd'),1,'eeee');
INSERT INTO PRODUCT_QNA VALUES(PRODUCT_QNA_SEQ.nextval,'택배비 문의 입니다.','택배비 할인 가능한가요','택배비는 저희측에서 처리해드릴수 없습니다.','0','1',to_date('2020-03-16', 'yyyy-mm-dd'),1,'ffff');
INSERT INTO PRODUCT_QNA VALUES(PRODUCT_QNA_SEQ.nextval,'상품문의요','그거에대한 내용이요','답변입니다.','1','1',to_date('2020-03-17', 'yyyy-mm-dd'),1,'gggg');
INSERT INTO PRODUCT_QNA VALUES(PRODUCT_QNA_SEQ.nextval,'배송 얼마나 걸리나요','답변해 주세요',Null,'0','0',to_date('2020-03-28', 'yyyy-mm-dd'),1,'hhhh');
INSERT INTO PRODUCT_QNA VALUES(PRODUCT_QNA_SEQ.nextval,'전에 봤던 다른제품이 있는데','어디로 문의 할 수 있나요',Null,'0','0',to_date('2020-03-29', 'yyyy-mm-dd'),1,'iiii');
INSERT INTO PRODUCT_QNA VALUES(PRODUCT_QNA_SEQ.nextval,'환불 가능한 범위가 어떻게 되나요?','구입전에 고민되서 남깁니다.',Null,'0','0',to_date('2020-03-31', 'yyyy-mm-dd'),1,'jjjj');
INSERT INTO FAVORITE VALUES(FAVORITE_SEQ.nextval,'aaaa',1);
INSERT INTO FAVORITE VALUES(FAVORITE_SEQ.nextval,'aaaa',2);
INSERT INTO FAVORITE VALUES(FAVORITE_SEQ.nextval,'aaaa',3);
INSERT INTO FAVORITE VALUES(FAVORITE_SEQ.nextval,'aaaa',4);
INSERT INTO FAVORITE VALUES(FAVORITE_SEQ.nextval,'aaaa',5);
INSERT INTO FAVORITE VALUES(FAVORITE_SEQ.nextval,'aaaa',6);
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,1,1,0,3,4000);
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,2,2,0,3,4000);
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,3,3,0,3,4000);
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,4,4,0,3,4000);
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,5,5,0,3,4000);
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,6,6,0,3,4000);
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,6,7,0,3,4000);
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,7,8,0,3,4000);
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,8,9,0,3,4000);
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,9,10,0,3,4000);
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,10,11,0,3,4000);
INSERT INTO ORDER_DETAIL VALUES(ORDER_DETAIL_SEQ.nextval,10,12,0,3,4000);
INSERT INTO CART VALUES(CART_SEQ.nextval,'aaaa',10,3);
INSERT INTO CART VALUES(CART_SEQ.nextval,'aaaa',11,2);

COMMIT;