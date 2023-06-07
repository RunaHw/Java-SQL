SELECT A.MEMBER_ID                          AS ȸ��ID
     , A.MEMBER_NAME                        AS ȸ���̸�
     , (
         SELECT TEL_NO 
           FROM TB_MEMBER_TEL   
          WHERE TEL_DV_CD = '�޴���'
            AND MEMBER_ID = A.MEMBER_ID)    AS �޴�����ȣ
  FROM TB_MEMBER A
 WHERE A.MEMBER_ID IN('AAAAA', 'BBBBB', 'CCCCC', 'DDDDD');
 
//����1
SELECT A.MEMBER_ID                          AS ȸ��ID
     , A.MEMBER_NAME                        AS ȸ���̸�
     , A.GRADE_CD                           AS ����ڵ�
     , (
        SELECT GRADE_NAME
          FROM TB_GRADE
         WHERE GRADE_CD = A.GRADE_CD )      AS ����̸�
  FROM TB_MEMBER A;
  
SELECT *
  FROM TB_ORDER;
  
//����2
SELECT A.ORDER_NO                           AS �ֹ���ȣ
     , A.MEMBER_ID                          AS ȸ��ID
     , (
        SELECT MEMBER_NAME
          FROM TB_MEMBER
         WHERE A.MEMBER_ID = MEMBER_ID )    AS �ֹ����̸�
     , A.PRD_ID                             AS ��ǰID
     , (
        SELECT PRD_NAME
          FROM TB_PRD
         WHERE A.PRD_ID = PRD_ID)           AS ��ǰ�̸�
  FROM TB_ORDER A;
 
//����3
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
   
//����4
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , A.GRADE_CD
     , A.AGE
     , B.��޺��ְ���
  FROM TB_MEMBER A
     , (
        SELECT GRADE_CD
             , MAX(AGE)         AS ��޺��ְ���
          FROM TB_MEMBER
         GROUP BY GRADE_CD
        ) B
 WHERE A.GRADE_CD = B.GRADE_CD
   AND A.AGE = B.��޺��ְ���;
          
//����1  
SELECT MEMBER_NAME
     , GRADE_CD
     , AGE
  FROM TB_MEMBER
 WHERE  AGE>=( SELECT AVG(AGE)
                 FROM TB_MEMBER
                );
  
//����2              
SELECT PRD_NAME
     , PRD_INFO
     , PRD_PRICE
  FROM TB_PRD
WHERE PRD_PRICE = (SELECT MIN(PRD_PRICE)
                 FROM TB_PRD
                );

//����3       
SELECT *
  FROM TB_MEMBER
 WHERE AGE = (SELECT MAX(AGE)
                FROM TB_MEMBER);
                
//����1
SELECT *
  FROM TB_PRD A 
 WHERE PRD_PRICE = (SELECT MIN(PRD_PRICE)
                      FROM TB_PRD
                     WHERE PRD_TYPE = A.PRD_TYPE);
                     
//����2
SELECT *
  FROM TB_MEMBER
 WHERE GRADE_CD = (SELECT GRADE_CD
                     FROM TB_GRADE);
                     
//����3
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
                     
         
//����1
SELECT MEMBER_ID
     , MEMBER_NAME
  FROM TB_MEMBER A
 WHERE EXISTS(
                SELECT 1
                  FROM TB_MEMBER_TEL
                 WHERE MEMBER_ID =A.MEMBER_ID);
                     
//����2
SELECT MEMBER_ID
     , MEMBER_NAME
  FROM TB_MEMBER A
 WHERE  EXISTS(
                SELECT 1
                  FROM TB_MEMBER_TEL
                 WHERE MEMBER_ID =A.MEMBER_ID);
                     
                     
//����1
SELECT PRD_ID
     , PRD_NAME
  FROM TB_PRD A
 WHERE EXISTS(SELECT 1
                FROM TB_ORDER
               WHERE PRD_ID = A.PRD_ID );
               
//����2
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
      
//����3            
SELECT DISTINCT A.PRD_TYPE
  FROM TB_PRD A
 WHERE NOT EXISTS (SELECT 1
                    FROM TB_MEMBER_LIKE
                   WHERE LIKE_PRD_TYPE = A.PRD_TYPE
                     AND MEMBER_ID = 'BBBBB');
    

  