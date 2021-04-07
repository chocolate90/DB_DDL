--DDL�� (�����ͺ��̽� ���ǹ�)
--Ʈ������� ������ �� ����.

--����Ŭ�� ���̺�� ��ҹ��ڸ� ������ �ʴ´�.
CREATE TABLE DEPTS2(
    DEPT_NO NUMBER(2,0), --2�ڸ���, �Ҽ����� ���X
    DEPT_NAME VARCHAR2(14), --14 ����Ʈ (���� 14����, �ѱ� 7����)
    LOCA VARCHAR2(10),
    DEPT_DATE DATE,
    DEPT_BONUS NUMBER(10), --10�ڸ���
    DEL_YN CHAR(1) --�������� 1
);

DESC DEPTS2;

INSERT INTO DEPTS2
VALUES (99, '����', '����', SYSDATE, 1000000000, 'Y');

--���̺� �� �߰�, ����, �̸�����, ����

--�� �߰�

ALTER TABLE DEPTS2
ADD (DEPT_COUNT NUMBER(3));

DESC DEPTS2;

--�� �̸�����

ALTER TABLE DEPTS2 
RENAME COLUMN DEPT_COUNT TO EMP_COUNT;

DESC DEPTS2;

--�� ����

ALTER TABLE DEPTS2
MODIFY (EMP_COUNT NUMBER(10));

DESC DEPTS2;

--�� ����

ALTER TABLE DEPTS2
DROP COLUMN EMP_COUNT;

DESC DEPTS2;

--���̺� ����

DROP TABLE DEPTS2;

DESC DEPTS2;

--���̺� ������ ���ܵΰ� ������ ���� ����
TRUNCATE TABLE DEPTS2;

SELECT * FROM DEPTS2;