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


// ���� 1
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

// ���� 2

SELECT *
  FROM(
    SELECT MEMBER_ID
         , MEMBER_NAME
         , JOIN_DY
      FROM TB_MEMBER
     ORDER BY JOIN_DY DESC  
)
 WHERE ROWNUM <= 3;

CREATE TABLE �Խ��� ( 
�Խ��ǹ�ȣ NUMBER(9) PRIMARY KEY , 
�ۼ��� VARCHAR2(50) NOT NULL , 
�Խù����� VARCHAR2(4000) NOT NULL , 
�ۼ��Ͻ� DATE NOT NULL 
) ;
INSERT INTO �Խ���
SELECT LEVEL -- �Խ��ǹ�ȣ
, '���̵�' || MOD(LEVEL , 10000) -- �ۼ���
, '���̵�' || 
MOD(LEVEL , 10000) || 
'���� �ۼ��Ͻ� �Խù��Դϴ�. �� �Խù��� �Խ��� ��ȣ�� ' 
|| LEVEL 
|| '�Դϴ�' -- �Խù�����
, TO_DATE('20000101') + LEVEL --2022�� 1��1�Ϻ��� �Ϸ羿 �Խù��� �ԷµǴ� ��
FROM DUAL
CONNECT BY LEVEL <=1000000; --100������ ������ �Է�
COMMIT;

SELECT*
  FROM(
      SELECT ROWNUM AS RN
           , A.*
      FROM(
            SELECT *
            FROM �Խ���
            ORDER BY �ۼ��Ͻ� DESC
        )A
        WHERE ROWNUM <= 40
     )
 WHERE RN >= 21; 

  
