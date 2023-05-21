
/*
SELECT PAY_CARD_NO
     , JOIN_DY
  FROM TB_MEMBER
 WHERE MEMBER_ID = 'BBBBB' ; --CTRL_ENTER


 SELECT * FROM MAPPING;
*/

/*
SELECT MEMBER_ID , MEMBER_NAME , GRADE_CD
  FROM TB_MEMBER
 WHERE GRADE_CD = 2;
 */
 
 SELECT MEMBER_NAME, GENDER, AGE
   FROM TB_MEMBER;
   
 SELECT GRADE_CD, GRADE_NAME
   FROM TB_GRADE;
   
 SELECT PRD_ID , PRD_NAME, PRD_INFO
   FROM TB_PRD;

 SELECT *
   FROM TB_PRD;
 
 SELECT *
   FROM TB_MEMBER;
 
 SELECT DISTINCT PRD_TYPE
   FROM TB_PRD;
   
 SELECT DISTINCT GENDER
   FROM TB_MEMBER;
   
 SELECT DISTINCT GRADE_CD
   FROM TB_MEMBER;
   
 SELECT MEMBER_ID   AS M_ID
      , MEMBER_NAME AS M_NAME
      , PAY_CARD_NO AS P_CARD
   FROM TB_MEMBER;
   
 SELECT *
   FROM TB_MEMBER
  WHERE MEMBER_ID = 'HHHHH';
  
INSERT INTO TB_MEMBER ( 
MEMBER_ID
, MEMBER_NAME
, PASSWD
, PAY_CARD_NO
, JOIN_DY
, GRADE_CD
, AGE
, DEL_YN 
) VALUES ( 
'JJJJJ'
, '새로운자'
, 'JJJJJ'
, 'AAAA-AAAA-AAAA-AAAA'
, '20230519'
, 1
, 30
, 'N'
) ;

 SELECT *
   FROM TB_MEMBER ;
   
COMMIT;

CREATE TABLE 자료형테스트 ( --자료형테스트 라는 이름의 테이블을 만듭니다. 
문자컬럼 VARCHAR2(10) , --문자컬럼 이라는 컬럼에 문자형 자료형(VARCHAR2)부여
숫자컬럼 NUMBER , --숫자컬럼 이라는 컬럼에 숫자형 자료형(NUMBER) 부여
날짜컬럼 DATE ) ; --날짜컬럼 이라는 컬럼에 날짜형 자료형(DATE) 부여
    
 SELECT *
   FROM 자료형테스트 ;
    
INSERT INTO 자료형테스트 ( 문자컬럼 , 숫자컬럼 , 날짜컬럼 ) VALUES ( 'A' , 1 , SYSDATE ); --될까요?
INSERT INTO 자료형테스트 ( 문자컬럼 , 숫자컬럼 , 날짜컬럼 ) VALUES ( 'A' , '3살' , SYSDATE ); --될까요?
INSERT INTO 자료형테스트 ( 문자컬럼 , 숫자컬럼 , 날짜컬럼 ) VALUES ( 'A' , 3 , 1 ); --될까요?
INSERT INTO 자료형테스트 ( 문자컬럼 , 숫자컬럼 , 날짜컬럼 ) VALUES ( 'BB' , '3' , SYSDATE ); --될까요?

 SELECT *
   FROM 자료형테스트 ;

 SELECT PRD_ID
      , PRD_NAME
      , PRD_PRICE
      , 10 AS 숫자
   FROM TB_PRD;     

 SELECT PRD_ID
      , PRD_NAME
      , PRD_PRICE
      , 5000
      , PRD_PRICE + 5000
   FROM TB_PRD ;
    

    
 SELECT PRD_ID
      , PRD_NAME
      , PRD_PRICE
      , PRD_PRICE / 10 AS 부가가치세
      , PRD_PRICE + (PRD_PRICE / 10) AS 판매가격
   FROM TB_PRD;
   
 SELECT GRADE_NAME || '(등급레벨:' || GRADE_CD || ')' AS 등급명과레벨
   FROM TB_GRADE ; 
   
 SELECT MEMBER_ID || ' 회원의 카드번호는 ' || PAY_CARD_NO || ' 입니다' AS 회원의카드번호
   FROM TB_MEMBER;


 SELECT *
   FROM TB_MEMBER;


 