DROP TABLE �л���������   ;
DROP TABLE ����������   ;
DROP TABLE ����ǥ   ;
CREATE TABLE ����������   (
�л�ID VARCHAR2(9) PRIMARY KEY , 
�л��̸� VARCHAR2(50) NOT NULL , 
�Ҽӹ� VARCHAR2(5) 
);
CREATE TABLE ����ǥ   ( 
�л�ID VARCHAR2(9) , 
����        VARCHAR2(30) , 
����        NUMBER  , 
CONSTRAINT PK_����ǥ   PRIMARY KEY(�л�ID , ����) , 
CONSTRAINT FK_����ǥ   FOREIGN KEY(�л�ID) REFERENCES ����������(�л�ID) 
)  ; 
INSERT INTO ����������   VALUES ('S0001' , '����ö' , 'A') ; 
INSERT INTO ����������   VALUES ('S0002' , '������' , 'A') ; 
INSERT INTO ����������   VALUES ('S0003' , '����ġ' , 'B') ; 
INSERT INTO ����������   VALUES ('S0004' , '�ڳ���' , 'B') ; 
INSERT INTO ����������   VALUES ('S0005' , '���°�' , 'B') ; 
INSERT INTO ����������   VALUES ('S0006' , '�����' , 'C') ; 
INSERT INTO ����������   VALUES ('S0007' , '�ڶ��' , 'C') ; 
INSERT INTO ����������   VALUES ('S0008' , '���ȵ�' , 'C') ; 
INSERT INTO ����������   VALUES ('S0009' , '������' , 'C') ; 
INSERT INTO ����ǥ  VALUES('S0001'  ,'����' , 90); 
INSERT INTO ����ǥ  VALUES('S0001'  ,'����' , 85); 
INSERT INTO ����ǥ  VALUES('S0001'  ,'����' , 100); 
INSERT INTO ����ǥ  VALUES('S0002'  ,'����' , 100); 
INSERT INTO ����ǥ  VALUES('S0002'  ,'����' , 100); 
INSERT INTO ����ǥ  VALUES('S0002'  ,'����' , 20); 
INSERT INTO ����ǥ  VALUES('S0003'  ,'����' , 100); 
INSERT INTO ����ǥ  VALUES('S0003'  ,'����' , 100); 
INSERT INTO ����ǥ  VALUES('S0003'  ,'����' , 20); 
INSERT INTO ����ǥ  VALUES('S0004'  ,'����' , 85); 
INSERT INTO ����ǥ  VALUES('S0004'  ,'����' , 40); 
INSERT INTO ����ǥ  VALUES('S0004'  ,'����' , 60); 
INSERT INTO ����ǥ  VALUES('S0005'  ,'����' , 100); 
INSERT INTO ����ǥ  VALUES('S0005'  ,'����' , 100); 
INSERT INTO ����ǥ  VALUES('S0005'  ,'����' , 100); 
INSERT INTO ����ǥ  VALUES ( 'S0006' , '����' , NULL ) ; 
INSERT INTO ����ǥ  VALUES ( 'S0006' , '����' , NULL ) ; 
INSERT INTO ����ǥ  VALUES ( 'S0006' , '����' , NULL ) ; 
COMMIT; 

SELECT * FROM ����������;
SELECT * FROM ����ǥ;

SELECT �Ҽӹ� , COUNT(*) AS �ݺ��ο���
  FROM ����������
 GROUP BY �Ҽӹ�;
 
SELECT  �Ҽӹ�, COUNT(*)
  FROM ����������
 GROUP BY �Ҽӹ�;
 
SELECT * FROM ����������;
SELECT * FROM ����ǥ;

SELECT �Ҽӹ� , COUNT(*)
  FROM ����ǥ
 GROUP BY �л�ID;

SELECT �л�ID, ROUND(AVG(����) , 2) AS ���
  FROM ����ǥ
 GROUP BY �л�ID;
 
SELECT �л�ID, SUM(����) AS �հ�
  FROM ����ǥ
 GROUP BY �л�ID;
 
SELECT �л�ID
     , NVL(MAX(����) , 0) AS �ִ�
     , NVL(MIN(����) , 0) AS �ִ�
  FROM ����ǥ
 GROUP BY �л�ID;
 
 SELECT �л�ID
     , MAX(����) AS �ִ�
     , MIN(����) AS �ִ�
  FROM ����ǥ
 GROUP BY �л�ID;

// ����1
SELECT �л�ID, SUM(����) AS �л��������հ�
  FROM ����ǥ
 GROUP BY �л�ID;

// ����2
SELECT PRD_TYPE, COUNT(*) AS ��ǰŸ�Ժ�����, MAX(PRD_PRICE) AS ��ǰ���ְ�
  FROM TB_PRD
 GROUP BY PRD_TYPE;
 
// ����3
SELECT �л�ID, ROUND(AVG(����), 2) AS �������������
  FROM ����ǥ
 WHERE ���� != '����'
 GROUP BY �л�ID;
 
// ����4
SELECT A.MEMBER_ID, COUNT(B.TEL_NO) AS ����ó����
  FROM TB_MEMBER A LEFT OUTER JOIN TB_MEMBER_TEL B ON(A.MEMBER_ID = B.MEMBER_ID)
 GROUP BY A.MEMBER_ID;

SELECT �л�ID, ROUND(AVG(����), 1) AS ��ռ���
  FROM ����ǥ
 GROUP BY �л�ID
HAVING AVG(����) <= 75;

//����1
SELECT �Ҽӹ�, COUNT(�л�ID) AS �ݺ��ο���
  FROM ����������
 GROUP BY �Ҽӹ�
HAVING COUNT(�л�ID) >=3;

//����2
SELECT PRD_TYPE, MAX(PRD_PRICE) AS ��ǰ���ְ�
  FROM TB_PRD
GROUP BY PRD_TYPE
HAVING MAX(PRD_PRICE) > 1000000;

//����3
SELECT PRD_TYPE, COUNT(*)
  FROM TB_PRD
 GROUP BY PRD_TYPE
HAVING COUNT(PRD_ID) =4;

SELECT PRD_ID
     , PRD_NAME
     , PRD_TYPE
     , PRD_PRICE
  FROM TB_PRD
 ORDER BY PRD_TYPE , PRD_PRICE DESC;
 
INSERT INTO TB_MEMBER(
       MEMBER_ID
     , MEMBER_NAME
     , PASSWD
     , PAY_CARD_NO
     , JOIN_DY
     , GRADE_CD
     , GENDER
     , DEL_YN
) VALUES(
       '11111'
     , '�����Z'
     , '11111'
     , 'BBBB-BBBB-BBBB-BBBB'
     , TO_CHAR(SYSDATE, 'YYYYMMDD')
     , 1
     , '��'
     , 'N'
);

SELECT * FROM TB_MEMBER;

UPDATE TB_MEMBER
   SET AGE = 50
 WHERE MEMBER_ID = '11111';
 
DELETE FROM TB_MEMBER
 WHERE MEMBER_ID = '11111';
 
COMMIT;