INSERT INTO EMP
VALUES (106, 'Hong', 'WOMAN', 'IT_EDU', 105, '2022-09-21', 6000, 0.3, 10);

select * from emp;

-- ��ü
-- ���̺�, ��, ������, �ε���, ���Ǿ�
CREATE SEQUENCE MEM_MEMID_SEQ
INCREMENT BY 1 -- ������ : 1
START WITH 100 -- ���۰� : 100
MINVALUE 100   -- �ּڰ� : 100
MAXVALUE 99999 -- �ִ� : 99999
NOCYCLE; -- CYCLE�� MAXVALUE���� ���� ���� �ٽ� MINVALUE���� ����

SELECT SYSDATE FROM DUAL;


SELECT MEM_MEMID_SEQ.CURRVAL
FROM DUAL;

SELECT MEM_MEMID_SEQ.NextVAL FROM DUAL;

INSERT INTO MEMBER(MEMID, ID, PW,NAME) 
VALUES(MEM_MEMID_SEQ.NEXTVAL, 'KMJ', '1234', 'KANGMINJU');

SELECT * FROM MEMBER;


-- �������� ��ȸ ��ɾ�
-- SAVE SQL���� ���� ��ġ ���������Ѱ���?