SELECT A.MEMBER_ID                          AS 회원ID
     , A.MEMBER_NAME                        AS 회원이름
     , (
         SELECT TEL_NO 
           FROM TB_MEMBER_TEL   
          WHERE TEL_DV_CD = '휴대폰'
            AND MEMBER_ID = A.MEMBER_ID)    AS 휴대폰번호
  FROM TB_MEMBER A
 WHERE A.MEMBER_ID IN('AAAAA', 'BBBBB', 'CCCCC', 'DDDDD');
 
//예제1
SELECT A.MEMBER_ID                          AS 회원ID
     , A.MEMBER_NAME                        AS 회원이름
     , A.GRADE_CD                           AS 등급코드
     , (
        SELECT GRADE_NAME
          FROM TB_GRADE
         WHERE GRADE_CD = A.GRADE_CD )      AS 등급이름
  FROM TB_MEMBER A;
  
SELECT *
  FROM TB_ORDER;
  
//예제2
SELECT A.ORDER_NO                           AS 주문번호
     , A.MEMBER_ID                          AS 회원ID
     , (
        SELECT MEMBER_NAME
          FROM TB_MEMBER
         WHERE A.MEMBER_ID = MEMBER_ID )    AS 주문자이름
     , A.PRD_ID                             AS 상품ID
     , (
        SELECT PRD_NAME
          FROM TB_PRD
         WHERE A.PRD_ID = PRD_ID)           AS 상품이름
  FROM TB_ORDER A;
 
//예제3
SELECT A.ORDER_NO
     , A.MEMBER_ID
     , B.MEMBER_NAME
     , A.PRD_ID
     , C.PRD_NAME
  FROM TB_ORDER A
     , TB_MEMBER B
     , TB_PRD C
 WHERE A.MEMBER_ID = B.MEMBER_ID
   AND A.PRD_ID = C.PRD_ID ;
   
//예제4
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , A.GRADE_CD
     , A.AGE
     , B.등급별최고나이
  FROM TB_MEMBER A
     , (
        SELECT GRADE_CD
             , MAX(AGE)         AS 등급별최고나이
          FROM TB_MEMBER
         GROUP BY GRADE_CD
        ) B
 WHERE A.GRADE_CD = B.GRADE_CD
   AND A.AGE = B.등급별최고나이;
          
//문제1  
SELECT MEMBER_NAME
     , GRADE_CD
     , AGE
  FROM TB_MEMBER
 WHERE  AGE>=( SELECT AVG(AGE)
                 FROM TB_MEMBER
                );
  
//문제2              
SELECT PRD_NAME
     , PRD_INFO
     , PRD_PRICE
  FROM TB_PRD
WHERE PRD_PRICE = (SELECT MIN(PRD_PRICE)
                 FROM TB_PRD
                );

//문제3       
SELECT *
  FROM TB_MEMBER
 WHERE AGE = (SELECT MAX(AGE)
                FROM TB_MEMBER);
                
//예제1
SELECT *
  FROM TB_PRD A 
 WHERE PRD_PRICE = (SELECT MIN(PRD_PRICE)
                      FROM TB_PRD
                     WHERE PRD_TYPE = A.PRD_TYPE);
                     
//예제2
SELECT *
  FROM TB_MEMBER
 WHERE GRADE_CD = (SELECT GRADE_CD
                     FROM TB_GRADE);
                     
//예제3
SELECT PRD_ID
     , PRD_NAME
     , PRD_TYPE
     , PRD_PRICE
  FROM TB_PRD A
 WHERE PRD_PRICE >= ALL (SELECT MAX(PRD_PRICE)
                       FROM TB_PRD
                      GROUP BY PRD_TYPE);
                     
SELECT *
  FROM TB_MEMBER
 WHERE AGE = ANY (SELECT AVG(AGE)
                FROM TB_MEMBER
               GROUP BY GRADE_CD);
                     
         
//예제1
SELECT MEMBER_ID
     , MEMBER_NAME
  FROM TB_MEMBER A
 WHERE EXISTS(
                SELECT 1
                  FROM TB_MEMBER_TEL
                 WHERE MEMBER_ID =A.MEMBER_ID);
                     
//예제2
SELECT MEMBER_ID
     , MEMBER_NAME
  FROM TB_MEMBER A
 WHERE  EXISTS(
                SELECT 1
                  FROM TB_MEMBER_TEL
                 WHERE MEMBER_ID =A.MEMBER_ID);
                     
                     
//문제1
SELECT PRD_ID
     , PRD_NAME
  FROM TB_PRD A
 WHERE EXISTS(SELECT 1
                FROM TB_ORDER
               WHERE PRD_ID = A.PRD_ID );
               
//문제2
SELECT MEMBER_ID
     , MEMBER_NAME
     , AGE
     , GRADE_CD
  FROM TB_MEMBER A
 WHERE NOT EXISTS(SELECT 2
                    FROM TB_ORDER
                   WHERE MEMBER_ID = A.MEMBER_ID)
   AND GRADE_CD =3;

SELECT *
  FROM TB_MEMBER_LIKE;
      
//문제3            
SELECT DISTINCT A.PRD_TYPE
  FROM TB_PRD A
 WHERE NOT EXISTS (SELECT 1
                    FROM TB_MEMBER_LIKE
                   WHERE LIKE_PRD_TYPE = A.PRD_TYPE
                     AND MEMBER_ID = 'BBBBB');
    

  