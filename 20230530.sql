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
     , '사용자Z'
     , '88888'
     , 'BBBB-BBBB-BBBB-BBBB'
     , TO_CHAR(SYSDATE , 'YYYYMMDD')
     , 1
     , '여'
     , 'N'
) ; 

INSERT INTO TB_MEMBER 
VALUES ( 
'YYYYY' 
, '사용자Y' 
, 'PASS567!!' 
, 'CCCC-CCCC-CCCC-CCCC'
, TO_CHAR(SYSDATE , 'YYYYMMDD') 
, 2
, '남'
, 30
, 'N' 
) ;

UPDATE TB_MEMBER
   SET MEMBER_NAME = '변경된사용자A'
     , GRADE_CD = 2
     , AGE = 52
 WHERE MEMBER_ID = 'AAAAA';
 
 SELECT * FROM TB_WISH;

DELETE FROM TB_WISH
 WHERE MEMBER_ID = 'AAAAA'
   AND PRD_ID = 'P0006';
ROLLBACK;




