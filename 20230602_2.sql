SELECT *
  FROM (
  SELECT  MEMBER_ID
     , MEMBER_NAME
     , JOIN_DY
     , AGE
  FROM TB_MEMBER
  )
 WHERE RN = 2;
 

SELECT *
  FROM(
      SELECT PRD_ID
        , PRD_NAME
        , PRD_TYPE
        , PRD_PRICE
    FROM TB_PRD
    ORDER BY PRD_PRICE DESC
  )
 WHERE ROWNUM <=5;


// 문제 1
SELECT *
  FROM(
      SELECT PRD_ID
         , PRD_NAME
         , PRD_TYPE
         , PRD_PRICE
      FROM TB_PRD
     ORDER BY PRD_PRICE 
)
  WHERE ROWNUM <=3;

// 문제 2

SELECT *
  FROM(
    SELECT MEMBER_ID
         , MEMBER_NAME
         , JOIN_DY
      FROM TB_MEMBER
     ORDER BY JOIN_DY DESC  
)
 WHERE ROWNUM <= 3;

CREATE TABLE 게시판 ( 
게시판번호 NUMBER(9) PRIMARY KEY , 
작성자 VARCHAR2(50) NOT NULL , 
게시물내용 VARCHAR2(4000) NOT NULL , 
작성일시 DATE NOT NULL 
) ;
INSERT INTO 게시판
SELECT LEVEL -- 게시판번호
, '아이디' || MOD(LEVEL , 10000) -- 작성자
, '아이디' || 
MOD(LEVEL , 10000) || 
'님이 작성하신 게시물입니다. 이 게시물은 게시판 번호가 ' 
|| LEVEL 
|| '입니다' -- 게시물내용
, TO_DATE('20000101') + LEVEL --2022년 1월1일부터 하루씩 게시물이 입력되는 것
FROM DUAL
CONNECT BY LEVEL <=1000000; --100만건의 데이터 입력
COMMIT;

SELECT*
  FROM(
      SELECT ROWNUM AS RN
           , A.*
      FROM(
            SELECT *
            FROM 게시판
            ORDER BY 작성일시 DESC
        )A
        WHERE ROWNUM <= 40
     )
 WHERE RN >= 21; 

  
