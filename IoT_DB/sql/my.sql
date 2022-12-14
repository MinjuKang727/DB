INSERT INTO EMP
VALUES (106, 'Hong', 'WOMAN', 'IT_EDU', 105, '2022-09-21', 6000, 0.3, 10);

select * from emp;

-- 객체
-- 테이블, 뷰, 시퀀스, 인덱스, 동의어
CREATE SEQUENCE MEM_MEMID_SEQ
INCREMENT BY 1 -- 증가값 : 1
START WITH 100 -- 시작값 : 100
MINVALUE 100   -- 최솟값 : 100
MAXVALUE 99999 -- 최댓값 : 99999
NOCYCLE; -- CYCLE은 MAXVALUE까지 값이 들어가면 다시 MINVALUE부터 시작

SELECT SYSDATE FROM DUAL;


SELECT MEM_MEMID_SEQ.CURRVAL
FROM DUAL;

SELECT MEM_MEMID_SEQ.NextVAL FROM DUAL;

INSERT INTO MEMBER(MEMID, ID, PW,NAME) 
VALUES(MEM_MEMID_SEQ.NEXTVAL, 'KMJ', '1234', 'KANGMINJU');

SELECT * FROM MEMBER;


-- 제약조건 조회 명령어
-- SAVE SQL문서 저장 위치 설정가능한가요?