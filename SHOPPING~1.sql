 SELECT LOWER('ABCDE123@@') AS LOWER���
   FROM DUAL;


 SELECT MEMBER_ID
      , PASSWD
      , LOWER(PASSWD) AS �н�����ҹ���
   FROM TB_MEMBER;
   
 SELECT PRD_ID
      , PRD_INFO
      , SUBSTR(PRD_INFO , 1, 5) || '...' AS ��ǰ�������
   FROM TB_PRD
 WHERE PRD_TYPE = '����'; 
 
 SELECT TRIM(' �ȳ��ϼ��� ') , TRIM(  '��  �� �� �� �� ')
   FROM DUAL;
   
 SELECT MEMBER_ID
      , PAY_CARD_NO
      , REPLACE(PAY_CARD_NO , '-', '') AS Ư������
   FROM TB_MEMBER
 WHERE GRADE_CD = 2;
 
 SELECT SUBSTR('https://smhrd.or.kr' , 9 , 5) AS ���
   FROM DUAL;
   
 SELECT MEMBER_ID
      , MEMBER_NAME
      , JOIN_DY
      , SUBSTR(JOIN_DY, 1, 4) AS ���Գ⵵
   FROM TB_MEMBER;
   
 SELECT MEMBER_ID
      , PAY_CARD_NO
      , REPLACE(PAY_CARD_NO , '-', '/') AS �����ں���
   FROM TB_MEMBER;
   
 SELECT MOD(100, 8) AS ��������
      , MOD(30, 10) AS ��������2
   FROM DUAL;
   
 SELECT ROUND(1.452 , 2)
      , ROUND(1.452 , 1)
   FROM DUAL;
   
 SELECT SYSDATE + 1          AS �Ϸ����
      , SYSDATE + 1/24       AS �ѽð�����
      , SYSDATE + 1/24/60    AS �Ϻд���
      , SYSDATE + 1/24/60/60 AS ���ʴ���
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
        ,TO_CHAR(REG_DATE, 'YYYYMMDD') AS ��ϳ����
     FROM TB_PRD;
   
   -- NULL �� �������� �������, �񱳿����� �Ұ����ϴ�
   
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
      , DECODE(GENDER, '��', 'MAN', '��', 'WOMAN', 'ELSE') AS ����
   FROM TB_MEMBER;
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   