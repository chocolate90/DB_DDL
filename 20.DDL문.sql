--DDL문 (데이터베이스 정의문)
--트랜잭션을 적용할 수 없다.

--오라클은 테이블명에 대소문자를 가리지 않는다.
CREATE TABLE DEPTS2(
    DEPT_NO NUMBER(2,0), --2자리수, 소수점은 허용X
    DEPT_NAME VARCHAR2(14), --14 바이트 (영어 14글자, 한글 7글자)
    LOCA VARCHAR2(10),
    DEPT_DATE DATE,
    DEPT_BONUS NUMBER(10), --10자리수
    DEL_YN CHAR(1) --고정문자 1
);

DESC DEPTS2;

INSERT INTO DEPTS2
VALUES (99, '영업', '서울', SYSDATE, 1000000000, 'Y');

--테이블 열 추가, 수정, 이름변경, 삭제

--열 추가

ALTER TABLE DEPTS2
ADD (DEPT_COUNT NUMBER(3));

DESC DEPTS2;

--열 이름변경

ALTER TABLE DEPTS2 
RENAME COLUMN DEPT_COUNT TO EMP_COUNT;

DESC DEPTS2;

--열 수정

ALTER TABLE DEPTS2
MODIFY (EMP_COUNT NUMBER(10));

DESC DEPTS2;

--열 삭제

ALTER TABLE DEPTS2
DROP COLUMN EMP_COUNT;

DESC DEPTS2;

--테이블 삭제

DROP TABLE DEPTS2;

DESC DEPTS2;

--테이블 구조는 남겨두고 데이터 영구 삭제
TRUNCATE TABLE DEPTS2;

SELECT * FROM DEPTS2;