INSERT INTO TB_MEMBER ( 
       MEMBER_ID
     , MEMBER_NAME
     , PASSWD
     , PAY_CARD_NO
     , JOIN_DY
     , GRADE_CD 
     , GENDER 
     , DEL_YN
) VALUES ( 
       '88888'    
     , '�����Z'
     , '88888'
     , 'BBBB-BBBB-BBBB-BBBB'
     , TO_CHAR(SYSDATE , 'YYYYMMDD')
     , 1
     , '��'
     , 'N'
) ; 

INSERT INTO TB_MEMBER 
VALUES ( 
'YYYYY' 
, '�����Y' 
, 'PASS567!!' 
, 'CCCC-CCCC-CCCC-CCCC'
, TO_CHAR(SYSDATE , 'YYYYMMDD') 
, 2
, '��'
, 30
, 'N' 
) ;

UPDATE TB_MEMBER
   SET MEMBER_NAME = '����Ȼ����A'
     , GRADE_CD = 2
     , AGE = 52
 WHERE MEMBER_ID = 'AAAAA';
 
 SELECT * FROM TB_WISH;

DELETE FROM TB_WISH
 WHERE MEMBER_ID = 'AAAAA'
   AND PRD_ID = 'P0006';
ROLLBACK;




