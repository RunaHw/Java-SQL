
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
, '���ο���'
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

CREATE TABLE �ڷ����׽�Ʈ ( --�ڷ����׽�Ʈ ��� �̸��� ���̺��� ����ϴ�. 
�����÷� VARCHAR2(10) , --�����÷� �̶�� �÷��� ������ �ڷ���(VARCHAR2)�ο�
�����÷� NUMBER , --�����÷� �̶�� �÷��� ������ �ڷ���(NUMBER) �ο�
��¥�÷� DATE ) ; --��¥�÷� �̶�� �÷��� ��¥�� �ڷ���(DATE) �ο�
    
 SELECT *
   FROM �ڷ����׽�Ʈ ;
    
INSERT INTO �ڷ����׽�Ʈ ( �����÷� , �����÷� , ��¥�÷� ) VALUES ( 'A' , 1 , SYSDATE ); --�ɱ��?
INSERT INTO �ڷ����׽�Ʈ ( �����÷� , �����÷� , ��¥�÷� ) VALUES ( 'A' , '3��' , SYSDATE ); --�ɱ��?
INSERT INTO �ڷ����׽�Ʈ ( �����÷� , �����÷� , ��¥�÷� ) VALUES ( 'A' , 3 , 1 ); --�ɱ��?
INSERT INTO �ڷ����׽�Ʈ ( �����÷� , �����÷� , ��¥�÷� ) VALUES ( 'BB' , '3' , SYSDATE ); --�ɱ��?

 SELECT *
   FROM �ڷ����׽�Ʈ ;

 SELECT PRD_ID
      , PRD_NAME
      , PRD_PRICE
      , 10 AS ����
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
      , PRD_PRICE / 10 AS �ΰ���ġ��
      , PRD_PRICE + (PRD_PRICE / 10) AS �ǸŰ���
   FROM TB_PRD;
   
 SELECT GRADE_NAME || '(��޷���:' || GRADE_CD || ')' AS ��޸������
   FROM TB_GRADE ; 
   
 SELECT MEMBER_ID || ' ȸ���� ī���ȣ�� ' || PAY_CARD_NO || ' �Դϴ�' AS ȸ����ī���ȣ
   FROM TB_MEMBER;


 SELECT *
   FROM TB_MEMBER;


 