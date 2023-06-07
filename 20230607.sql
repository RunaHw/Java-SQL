// CASE예제1
SELECT MEMBER_ID
     , MEMBER_NAME
     , JOIN_DY
     -- 자바의 IF 문과 매우 비슷한 CASE 문법
     , CASE WHEN JOIN_DY LIKE '2020%' THEN '2020'
            WHEN JOIN_DY LIKE '2021%' THEN '2021'
            WHEN JOIN_DY LIKE '2022%' THEN '2022'
            ELSE '2023'
             END AS JOIN_DY
  FROM TB_MEMBER;
  
// CASE예제2
SELECT MEMBER_ID
     , MEMBER_NAME
     , GENDER
     , CASE WHEN GENDER = '남' THEN 'Man'
            WHEN GENDER = '여' THEN 'Woman'
            ELSE 'notChecked'
             END AS 성별영문
     , DECODE(GENDER, '남', 'Man', '여', 'Woman', 'notChecked') AS 성별영문2
  FROM TB_MEMBER;
  
// CASE 문제1

SELECT MEMBER_ID
     , MEMBER_NAME
     , GRADE_CD
     , CASE WHEN GRADE_CD >= 5 THEN 'VVIP'
            WHEN GRADE_CD >= 4 THEN 'VIP'
            WHEN GRADE_CD >= 3 THEN '골드'
            WHEN GRADE_CD >= 2 THEN '실버'
            WHEN GRADE_CD >= 1 THEN '브론즈'
            ELSE 'X'
            END AS 등급코드
  FROM TB_MEMBER;
  
// CASE 문제2
SELECT *
  FROM TB_GRADE;
  
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , A.GRADE_CD
     , B.GRADE_NAME
  FROM TB_MEMBER A INNER JOIN TB_GRADE B
    ON (A.GRADE_CD = B.GRADE_CD);

// CASE 문제3
SELECT MEMBER_ID
     , MEMBER_NAME
     , GRADE_CD
     , CASE WHEN GRADE_CD >=4 THEN '대상'
            ELSE '비대상'
             END AS 쿠폰부여대상
  FROM TB_MEMBER;
  
//MURGE
SELECT *
  FROM TB_MEMBER_TEL
 WHERE MEMBER_ID = 'BBBBB'
   AND TEL_DV_CD = '휴대폰';
   
// MURGE 예제1
MERGE INTO TB_MEMBER_TEL A
USING DUAL
   ON (A.MEMBER_ID = 'BBBBB' AND TEL_DV_CD = '휴대폰')

WHEN MATCHED THEN
UPDATE
   SET TEL_NO = '010-7777-7777'
   
WHEN NOT MATCHED THEN
INSERT ( MEMBER_ID, TEL_DV_CD, TEL_NO)
VALUES ( 'BBBBB', '휴대폰', '010-7777-7777' );


// MURGE 예제2
MERGE INTO TB_MEMBER_TEL A
USING DUAL
   ON (A.MEMBER_ID = 'BBBBB' AND TEL_DV_CD ='법인')
   
WHEN MATCHED THEN
UPDATE
   SET TEL_NO = '010-7777-7777'
   
WHEN NOT MATCHED THEN

INSERT (MEMBER_ID, TEL_DV_CD, TEL_NO)
VALUES ('BBBBB', '법인', '010-7777-7777');

SELECT * FROM TB_MEMBER_TEL;

DROP TABLE 직원; 
DROP TABLE 직원_신입 ;
CREATE TABLE 직원 (
직원ID VARCHAR2(30) PRIMARY KEY , 
직원이름 VARCHAR2(50) NOT NULL , 
연봉 NUMBER NOT NULL
) ; 
INSERT INTO 직원 VALUES ( 'A0001' , '김현명' , 4000) ; 
INSERT INTO 직원 VALUES ( 'A0002' , '강태진' , 5000) ; 
INSERT INTO 직원 VALUES ( 'A0003' , '손지창' , 5000) ; 
CREATE TABLE 직원_신입 (
직원ID VARCHAR2(30) PRIMARY KEY , 
직원이름 VARCHAR2(50) NOT NULL , 
연봉 NUMBER NOT NULL
) ; 
INSERT INTO 직원_신입 VALUES ( 'A0001' , '김현명' , 4000) ; 
INSERT INTO 직원_신입 VALUES ( 'A0002' , '강태진' , 5000) ; 
INSERT INTO 직원_신입 VALUES ( 'A0003' , '손지창' , 6000) ; 
INSERT INTO 직원_신입 VALUES ( 'A0004' , '신입원' , 3400) ; 
INSERT INTO 직원_신입 VALUES ( 'A0005' , '신입투' , 3400) ; 
COMMIT ;

// 문제1
SELECT * FROM 직원;
SELECT * FROM 직원_신입;

MERGE INTO 직원 A
USING 직원_신입 B
   ON ( A.직원ID = B.직원ID)
   
WHEN MATCHED THEN
UPDATE
   SET A.직원이름 = B.직원이름
     , A. 연봉 = B.연봉
     
WHEN NOT MATCHED THEN
INSERT (A.직원ID, A.직원이름, A.연봉 )
VALUES (B.직원ID, B.직원이름, B.연봉);

//문제2
MERGE INTO TB_MEMBER_TEL 
USING DUAL
   ON (A.MEMBER_ID = 'EEEEE' AND TEL_DV_CD = '휴대폰')
   
WHEN MATCHED THEN
UPDATE
   SET TEL_NO = '010-8888-8888'
   
WHEN NOT MATCHED THEN
INSERT (MEMBER_ID, TEL_DV_CD, TEL_NO)
VALUES ('EEEEE', '휴대폰', '010-8888-8888');

SELECT * FROM TB_MEMBER_TEL;

// 
CREATE TABLE 뮤지컬예매내역 AS 
SELECT 1 AS 예매번호 , '뮤지컬A' AS 뮤지컬이름 , 50000 AS 뮤지컬가격 FROM DUAL UNION ALL 
SELECT 2 AS 예매번호 , '뮤지컬B' AS 뮤지컬이름 , 60000 AS 뮤지컬가격 FROM DUAL UNION ALL 
SELECT 3 AS 예매번호 , '뮤지컬C' AS 뮤지컬이름 , 70000 AS 뮤지컬가격 FROM DUAL UNION ALL 
SELECT 4 AS 예매번호 , '뮤지컬D' AS 뮤지컬이름 , 80000 AS 뮤지컬가격 FROM DUAL UNION ALL 
SELECT 5 AS 예매번호 , '뮤지컬E' AS 뮤지컬이름 , 90000 AS 뮤지컬가격 FROM DUAL ; 

CREATE TABLE 콘서트예매내역 AS 
SELECT 1 AS 예매번호 , '콘서트A' AS 콘서트이름 , 50000 AS 콘서트가격 FROM DUAL UNION ALL 
SELECT 2 AS 예매번호 , '콘서트B' AS 콘서트이름 , 60000 AS 콘서트가격 FROM DUAL UNION ALL 
SELECT 3 AS 예매번호 , '콘서트C' AS 콘서트이름 , 70000 AS 콘서트가격 FROM DUAL UNION ALL 
SELECT 4 AS 예매번호 , '콘서트D' AS 콘서트이름 , 80000 AS 콘서트가격 FROM DUAL UNION ALL 
SELECT 5 AS 예매번호 , '콘서트E' AS 콘서트이름 , 90000 AS 콘서트가격 FROM DUAL ; 

CREATE TABLE 극장예매내역 AS 
SELECT 1 AS 예매번호 , '극A' AS 극이름 , 50000 AS 극가격 FROM DUAL UNION ALL 
SELECT 2 AS 예매번호 , '극B' AS 극이름 , 60000 AS 극가격 FROM DUAL UNION ALL 
SELECT 3 AS 예매번호 , '극C' AS 극이름 , 70000 AS 극가격 FROM DUAL UNION ALL 
SELECT 4 AS 예매번호 , '극D' AS 극이름 , 80000 AS 극가격 FROM DUAL UNION ALL 
SELECT 5 AS 예매번호 , '극E' AS 극이름 , 90000 AS 극가격 FROM DUAL ; 


SELECT * FROM 뮤지컬예매내역;
SELECT * FROM 콘서트예매내역;
SELECT * FROM 극장예매내역;

ALTER TABLE 뮤지컬예매내역 ADD ( 뮤지컬고유컬럼 VARCHAR2(10) ); 
ALTER TABLE 콘서트예매내역 ADD ( 콘서트고유컬럼 NUMBER ); 
ALTER TABLE 극장예매내역 ADD ( 극장고유컬럼 DATE ); 

UPDATE 뮤지컬예매내역 SET 뮤지컬고유컬럼 = '뮤' || ROWNUM ; 
UPDATE 콘서트예매내역 SET 콘서트고유컬럼 = ROWNUM ; 

COMMIT; 

//
SELECT 예매번호, 뮤지컬이름, 뮤지컬가격, NULL
  FROM 뮤지컬예매내역
  
UNION ALL

SELECT 예매번호, 콘서트이름, 콘서트가격, 콘서트고유컬럼 --NUMBER
  FROM 콘서트예매내역
  
UNION ALL

SELECT 예매번호, 극이름, 극가격, NULL
  FROM 극장예매내역;

//문제1
SELECT 예매번호, 뮤지컬이름, 뮤지컬가격
  FROM 뮤지컬예매내역
 WHERE 예매번호 >= 3
 
UNION ALL

SELECT 예매번호, 콘서트이름 AS 공연이름, 콘서트가격 AS 공연가격
  FROM 콘서트예매내역
 WHERE 예매번호 >= 3

UNION ALL

SELECT 예매번호, 극이름, 극가격
  FROM 극장예매내역
 WHERE 예매번호 >= 3;

//문제2
SELECT 뮤지컬가격 AS 공연가격
  FROM 뮤지컬예매내역
  
UNION

SELECT 콘서트가격
  FROM 콘서트예매내역
  
  UNION

SELECT 극가격
  FROM 극장예매내역;
  