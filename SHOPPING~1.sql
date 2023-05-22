 SELECT LOWER('ABCDE123@@') AS LOWER사용
   FROM DUAL;


 SELECT MEMBER_ID
      , PASSWD
      , LOWER(PASSWD) AS 패스워드소문자
   FROM TB_MEMBER;
   
 SELECT PRD_ID
      , PRD_INFO
      , SUBSTR(PRD_INFO , 1, 5) || '...' AS 상품설명생략
   FROM TB_PRD
 WHERE PRD_TYPE = '가전'; 
 
 SELECT TRIM(' 안녕하세요 ') , TRIM(  '안  녕 하 세 요 ')
   FROM DUAL;
   
 SELECT MEMBER_ID
      , PAY_CARD_NO
      , REPLACE(PAY_CARD_NO , '-', '') AS 특수제외
   FROM TB_MEMBER
 WHERE GRADE_CD = 2;
 
 SELECT SUBSTR('https://smhrd.or.kr' , 9 , 5) AS 결과
   FROM DUAL;
   
 SELECT MEMBER_ID
      , MEMBER_NAME
      , JOIN_DY
      , SUBSTR(JOIN_DY, 1, 4) AS 가입년도
   FROM TB_MEMBER;
   
 SELECT MEMBER_ID
      , PAY_CARD_NO
      , REPLACE(PAY_CARD_NO , '-', '/') AS 구분자변경
   FROM TB_MEMBER;
   
 SELECT MOD(100, 8) AS 나머지값
      , MOD(30, 10) AS 나머지값2
   FROM DUAL;
   
 SELECT ROUND(1.452 , 2)
      , ROUND(1.452 , 1)
   FROM DUAL;
   
 SELECT SYSDATE + 1          AS 하루더함
      , SYSDATE + 1/24       AS 한시간더함
      , SYSDATE + 1/24/60    AS 일분더함
      , SYSDATE + 1/24/60/60 AS 일초더함
   FROM DUAL;
   
   SELECT TO_NUMBER('1') FROM DUAL ;
   SELECT TO_CHAR(1) FROM DUAL ;
   SELECT TO_CHAR(SYSDATE , 'YYYY/MM/DD HH24:MI:SS') FROM DUAL ;
   SELECT TO_CHAR(SYSDATE , 'YYYYMMDD') FROM DUAL ;
   SELECT TO_DATE('20230101' , 'YYYY/MM/DD') FROM DUAL ;
   SELECT TO_DATE('20230101141212' , 'YYYY/MM/DD HH24:MI:SS') FROM DUAL;
   
   SELECT PRD_NAME
        , PRD_PRICE
        , SELL_COMP_NAME
        ,TO_CHAR(REG_DATE, 'YYYYMMDD') AS 등록년월일
     FROM TB_PRD;
   
   -- NULL 은 정상적인 산술연산, 비교연산이 불가능하다
   
   SELECT MEMBER_ID
        , AGE
        , NVL(AGE , 20) + 1
     FROM TB_MEMBER;
   
   SELECT MEMBER_NAME
        , AGE
        , DECODE(AGE, NULL, 0, AGE)
     FROM TB_MEMBER;
   

 SELECT MEMBER_ID
      , PASSWD
      , NVL(AGE, 20) AS AGE
   FROM TB_MEMBER;
   
 SELECT MEMBER_ID
      , GENDER
      , DECODE(GENDER, '남', 'MAN', '여', 'WOMAN', 'ELSE') AS 성별
   FROM TB_MEMBER;
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   