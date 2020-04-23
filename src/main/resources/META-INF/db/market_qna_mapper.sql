------------------------------------------------------------------------------------------------------------------------------
-- MARKET_QNA
------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM MARKET_QNA;

-- 글목록 (startRow, endRow)
SELECT * FROM MARKET_QNA ORDER BY MQGROUP DESC, MQSTEP;
SELECT * FROM (SELECT ROWNUM RN, A.* 
    FROM (SELECT * FROM MARKET_QNA ORDER BY MQGROUP DESC, MQSTEP) A)
WHERE RN BETWEEN 1 AND 13;

-- 전체 글 갯수
SELECT COUNT(*) FROM MARKET_QNA;

-- 원글쓰기
INSERT INTO MARKET_QNA(MQCODE, MQTITLE, MQCONTENT, MQRDATE, MQGROUP, MQSTEP, MQINDENT, MQHIT, MID, AID)
    VALUES (MARKET_QNA_SEQ.nextval,'질문','냉무',SYSDATE, MARKET_QNA_SEQ.currval, 1, 0, 0, 'aaa', null);

INSERT INTO MARKET_QNA(MQCODE, MQTITLE, MQCONTENT, MQRDATE, MQGROUP, MQSTEP, MQINDENT, MQHIT, MID, AID)
    VALUES (MARKET_QNA_SEQ.nextval,'질문2','냉무2',SYSDATE, MARKET_QNA_SEQ.currval, 1, 0, 0, null, 'aaa');

-- 상세글 보기 (bID로 dto 가져오기)
SELECT * FROM MARKET_QNA WHERE MQCODE=2;

-- 조회수 올리기(bID)
UPDATE MARKET_QNA SET MQHIT = MQHIT + 1
WHERE MQCODE = 2;

-- 답변글 쓰기전 step A (2번글)
UPDATE MARKET_QNA SET MQSTEP = MQSTEP +1 WHERE MQGROUP=2 AND MQSTEP > 0;

-- 답변글쓰기 (2번글)
INSERT INTO MARKET_QNA(MQCODE, MQTITLE, MQCONTENT, MQRDATE, MQGROUP, MQSTEP, MQINDENT, MQHIT, MID, AID)
    VALUES (MARKET_QNA_SEQ.nextval,'답변2','답변냉무2',SYSDATE, MARKET_QNA_SEQ.currval, 1, 0, 0, null, 'aaa');
    
-- 글 수정하기
UPDATE MARKET_QNA SET bNAME = '홍홍홍',
                    bTITLE = '제목수정',
                    bCONTENT = '본문수정',
                    bIP = '192.11.36.77'
WHERE MQCODE=7;
-- 글 삭제하기
DELETE FROM MARKET_QNA WHERE MQCODE = 1;
