// CASE����1
SELECT MEMBER_ID
     , MEMBER_NAME
     , JOIN_DY
     -- �ڹ��� IF ���� �ſ� ����� CASE ����
     , CASE WHEN JOIN_DY LIKE '2020%' THEN '2020'
            WHEN JOIN_DY LIKE '2021%' THEN '2021'
            WHEN JOIN_DY LIKE '2022%' THEN '2022'
            ELSE '2023'
             END AS JOIN_DY
  FROM TB_MEMBER;
  
// CASE����2
SELECT MEMBER_ID
     , MEMBER_NAME
     , GENDER
     , CASE WHEN GENDER = '��' THEN 'Man'
            WHEN GENDER = '��' THEN 'Woman'
            ELSE 'notChecked'
             END AS ��������
     , DECODE(GENDER, '��', 'Man', '��', 'Woman', 'notChecked') AS ��������2
  FROM TB_MEMBER;
  
// CASE ����1

SELECT MEMBER_ID
     , MEMBER_NAME
     , GRADE_CD
     , CASE WHEN GRADE_CD >= 5 THEN 'VVIP'
            WHEN GRADE_CD >= 4 THEN 'VIP'
            WHEN GRADE_CD >= 3 THEN '���'
            WHEN GRADE_CD >= 2 THEN '�ǹ�'
            WHEN GRADE_CD >= 1 THEN '�����'
            ELSE 'X'
            END AS ����ڵ�
  FROM TB_MEMBER;
  
// CASE ����2
SELECT *
  FROM TB_GRADE;
  
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , A.GRADE_CD
     , B.GRADE_NAME
  FROM TB_MEMBER A INNER JOIN TB_GRADE B
    ON (A.GRADE_CD = B.GRADE_CD);

// CASE ����3
SELECT MEMBER_ID
     , MEMBER_NAME
     , GRADE_CD
     , CASE WHEN GRADE_CD >=4 THEN '���'
            ELSE '����'
             END AS �����ο����
  FROM TB_MEMBER;
  
//MURGE
SELECT *
  FROM TB_MEMBER_TEL
 WHERE MEMBER_ID = 'BBBBB'
   AND TEL_DV_CD = '�޴���';
   
// MURGE ����1
MERGE INTO TB_MEMBER_TEL A
USING DUAL
   ON (A.MEMBER_ID = 'BBBBB' AND TEL_DV_CD = '�޴���')

WHEN MATCHED THEN
UPDATE
   SET TEL_NO = '010-7777-7777'
   
WHEN NOT MATCHED THEN
INSERT ( MEMBER_ID, TEL_DV_CD, TEL_NO)
VALUES ( 'BBBBB', '�޴���', '010-7777-7777' );


// MURGE ����2
MERGE INTO TB_MEMBER_TEL A
USING DUAL
   ON (A.MEMBER_ID = 'BBBBB' AND TEL_DV_CD ='����')
   
WHEN MATCHED THEN
UPDATE
   SET TEL_NO = '010-7777-7777'
   
WHEN NOT MATCHED THEN

INSERT (MEMBER_ID, TEL_DV_CD, TEL_NO)
VALUES ('BBBBB', '����', '010-7777-7777');

SELECT * FROM TB_MEMBER_TEL;

DROP TABLE ����; 
DROP TABLE ����_���� ;
CREATE TABLE ���� (
����ID VARCHAR2(30) PRIMARY KEY , 
�����̸� VARCHAR2(50) NOT NULL , 
���� NUMBER NOT NULL
) ; 
INSERT INTO ���� VALUES ( 'A0001' , '������' , 4000) ; 
INSERT INTO ���� VALUES ( 'A0002' , '������' , 5000) ; 
INSERT INTO ���� VALUES ( 'A0003' , '����â' , 5000) ; 
CREATE TABLE ����_���� (
����ID VARCHAR2(30) PRIMARY KEY , 
�����̸� VARCHAR2(50) NOT NULL , 
���� NUMBER NOT NULL
) ; 
INSERT INTO ����_���� VALUES ( 'A0001' , '������' , 4000) ; 
INSERT INTO ����_���� VALUES ( 'A0002' , '������' , 5000) ; 
INSERT INTO ����_���� VALUES ( 'A0003' , '����â' , 6000) ; 
INSERT INTO ����_���� VALUES ( 'A0004' , '���Կ�' , 3400) ; 
INSERT INTO ����_���� VALUES ( 'A0005' , '������' , 3400) ; 
COMMIT ;

// ����1
SELECT * FROM ����;
SELECT * FROM ����_����;

MERGE INTO ���� A
USING ����_���� B
   ON ( A.����ID = B.����ID)
   
WHEN MATCHED THEN
UPDATE
   SET A.�����̸� = B.�����̸�
     , A. ���� = B.����
     
WHEN NOT MATCHED THEN
INSERT (A.����ID, A.�����̸�, A.���� )
VALUES (B.����ID, B.�����̸�, B.����);

//����2
MERGE INTO TB_MEMBER_TEL 
USING DUAL
   ON (A.MEMBER_ID = 'EEEEE' AND TEL_DV_CD = '�޴���')
   
WHEN MATCHED THEN
UPDATE
   SET TEL_NO = '010-8888-8888'
   
WHEN NOT MATCHED THEN
INSERT (MEMBER_ID, TEL_DV_CD, TEL_NO)
VALUES ('EEEEE', '�޴���', '010-8888-8888');

SELECT * FROM TB_MEMBER_TEL;

// 
CREATE TABLE �����ÿ��ų��� AS 
SELECT 1 AS ���Ź�ȣ , '������A' AS �������̸� , 50000 AS �����ð��� FROM DUAL UNION ALL 
SELECT 2 AS ���Ź�ȣ , '������B' AS �������̸� , 60000 AS �����ð��� FROM DUAL UNION ALL 
SELECT 3 AS ���Ź�ȣ , '������C' AS �������̸� , 70000 AS �����ð��� FROM DUAL UNION ALL 
SELECT 4 AS ���Ź�ȣ , '������D' AS �������̸� , 80000 AS �����ð��� FROM DUAL UNION ALL 
SELECT 5 AS ���Ź�ȣ , '������E' AS �������̸� , 90000 AS �����ð��� FROM DUAL ; 

CREATE TABLE �ܼ�Ʈ���ų��� AS 
SELECT 1 AS ���Ź�ȣ , '�ܼ�ƮA' AS �ܼ�Ʈ�̸� , 50000 AS �ܼ�Ʈ���� FROM DUAL UNION ALL 
SELECT 2 AS ���Ź�ȣ , '�ܼ�ƮB' AS �ܼ�Ʈ�̸� , 60000 AS �ܼ�Ʈ���� FROM DUAL UNION ALL 
SELECT 3 AS ���Ź�ȣ , '�ܼ�ƮC' AS �ܼ�Ʈ�̸� , 70000 AS �ܼ�Ʈ���� FROM DUAL UNION ALL 
SELECT 4 AS ���Ź�ȣ , '�ܼ�ƮD' AS �ܼ�Ʈ�̸� , 80000 AS �ܼ�Ʈ���� FROM DUAL UNION ALL 
SELECT 5 AS ���Ź�ȣ , '�ܼ�ƮE' AS �ܼ�Ʈ�̸� , 90000 AS �ܼ�Ʈ���� FROM DUAL ; 

CREATE TABLE ���忹�ų��� AS 
SELECT 1 AS ���Ź�ȣ , '��A' AS ���̸� , 50000 AS �ذ��� FROM DUAL UNION ALL 
SELECT 2 AS ���Ź�ȣ , '��B' AS ���̸� , 60000 AS �ذ��� FROM DUAL UNION ALL 
SELECT 3 AS ���Ź�ȣ , '��C' AS ���̸� , 70000 AS �ذ��� FROM DUAL UNION ALL 
SELECT 4 AS ���Ź�ȣ , '��D' AS ���̸� , 80000 AS �ذ��� FROM DUAL UNION ALL 
SELECT 5 AS ���Ź�ȣ , '��E' AS ���̸� , 90000 AS �ذ��� FROM DUAL ; 


SELECT * FROM �����ÿ��ų���;
SELECT * FROM �ܼ�Ʈ���ų���;
SELECT * FROM ���忹�ų���;

ALTER TABLE �����ÿ��ų��� ADD ( �����ð����÷� VARCHAR2(10) ); 
ALTER TABLE �ܼ�Ʈ���ų��� ADD ( �ܼ�Ʈ�����÷� NUMBER ); 
ALTER TABLE ���忹�ų��� ADD ( ��������÷� DATE ); 

UPDATE �����ÿ��ų��� SET �����ð����÷� = '��' || ROWNUM ; 
UPDATE �ܼ�Ʈ���ų��� SET �ܼ�Ʈ�����÷� = ROWNUM ; 

COMMIT; 

//
SELECT ���Ź�ȣ, �������̸�, �����ð���, NULL
  FROM �����ÿ��ų���
  
UNION ALL

SELECT ���Ź�ȣ, �ܼ�Ʈ�̸�, �ܼ�Ʈ����, �ܼ�Ʈ�����÷� --NUMBER
  FROM �ܼ�Ʈ���ų���
  
UNION ALL

SELECT ���Ź�ȣ, ���̸�, �ذ���, NULL
  FROM ���忹�ų���;

//����1
SELECT ���Ź�ȣ, �������̸�, �����ð���
  FROM �����ÿ��ų���
 WHERE ���Ź�ȣ >= 3
 
UNION ALL

SELECT ���Ź�ȣ, �ܼ�Ʈ�̸� AS �����̸�, �ܼ�Ʈ���� AS ��������
  FROM �ܼ�Ʈ���ų���
 WHERE ���Ź�ȣ >= 3

UNION ALL

SELECT ���Ź�ȣ, ���̸�, �ذ���
  FROM ���忹�ų���
 WHERE ���Ź�ȣ >= 3;

//����2
SELECT �����ð��� AS ��������
  FROM �����ÿ��ų���
  
UNION

SELECT �ܼ�Ʈ����
  FROM �ܼ�Ʈ���ų���
  
  UNION

SELECT �ذ���
  FROM ���忹�ų���;
  