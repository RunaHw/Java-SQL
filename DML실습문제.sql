/* 
   DML ���� ������ Ǯ���մϴ� 
   !!���ǻ��� 
   ==> �� ������ ���������� Ǯ���� �ݵ�� COMMIT; ����� �������ּ���.
       �׷��� �����Ͱ� ���������� ���̺� �ݿ��� �˴ϴ�. 
       ���� �����͸� �߸� ó���ߴٸ� ROLLBACK; ��ɾ�� �ǵ��� �� �ֽ��ϴ�.
*/ 


/*
1. K��ǰ���� ���ο� ȸ���� ȸ�������� �߽��ϴ�.
   �Ʒ� �����͸� Ȯ���Ͽ� TB_MEMBER ���̺� ��ϵ� �� �ֵ��� ���ּ���. 

������ => [  
MEMBER_ID    : 'NEWMAN' 
MEMBER_NAME  : '�����̳�����'
PASSWD       : 'STAR123!' 
PAY_CARD_NO  : '1111-2222-3333-4444' 
JOIN_DY      : �������� (SYSDATE �� Ȱ���� YYYYMMDD ������ ���ڿ��� �Է�)
GRADE_CD     : 1  
GENDER       : '��'  
AGE          : 25 
DEL_YN       : 'N' 
]
*/ 

INSERT INTO TB_MEMBER(
       MEMBER_ID
     , MEMBER_NAME
     , PASSWD
     , PAY_CARD_NO
     , JOIN_DY
     , GRADE_CD
     , GENDER
     , AGE
     , DEL_YN
) VALUES(
       'NEWMAN'
     , '�����̳�����'
     , 'STAR123!'
     , '1111-2222-3333-4444'
     , TO_CHAR(SYSDATE, 'YYYYMMDD')
     , 1
     , '��'
     , 25
     , 'N'

) ;

/*
2. ȸ��ID�� 'CCCCC' �� ȸ���� ����ī�������� �����Ϸ��� �մϴ�. 
   ������ DML�� �̿��Ͽ� �����͸� �������ּ���. 

[ ������ ����ī���ȣ : '1234-5678-AAAA-BBBB' ]  
*/ 

UPDATE TB_MEMBER
   SET PAY_CARD_NO = '1234-5678-AAAA-BBBB'
 WHERE MEMBER_ID = 'CCCCC';

/*
3. ȸ�� 'BBBBB' �� ����ó �߿� �����ڵ尡 '��' �� ����ó�� ����(DELETE) ���ּ���.  */ 

DELETE FROM TB_MEMBER_TEL
 WHERE TEL_DV_CD = '��'
   AND MEMBER_ID = 'BBBBB';

SELECT * FROM TB_MEMBER_TEL;


/* 
4. TB_ORDER ���̺��� ȸ���� Ư�� ��ǰ�� �ֹ��Ҷ� ��ϵǴ� �������Դϴ�.
   ���� �� ȸ���̸��� '�����H' �� ȸ���� '������'�� 1�� �����Ϸ��� �� �� ������ ���� �����͸� ������ �� �ֽ��ϴ�. 
   �Ʒ� �����Ϳ� ���� INSERT �� ���ּ���. 

������ => [
ORDER_NO    : 6 
MEMBER_ID   : '�����H' �� MEMBER_ID�� ã�Ƽ� �Է����ּ���.  
PRD_ID      : '������'�� PRD_ID �� ã�Ƽ� �Է����ּ���. 
ORDER_DATE  : �������� (SYSDATE �� Ȱ���� YYYYMMDD ������ ���ڿ��� �Է�)
ORDER_CNT   : 1 
ORDER_PRICE : '������'�� PRD_PRICE �� ã�Ƽ� �Է����ּ���. 
] 
*/
SELECT * FROM TB_ORDER;

INSERT INTO TB_ORDER(
       ORDER_NO
     , MEMBER_ID
     , PRD_ID
     , ORDER_DATE
     , ORDER_CNT
     , ORDER_PRICE
) VALUES(
       6
     , 'HHHHH'
     , 'P0004'
     , SYSDATE
     , 1
     , 800000
);

/*
5. 2023���� ������ ���ο� �̺�Ʈ�� �����Ϸ��� �մϴ�. 
   ȸ���� �߿� ����ڵ尡 1(�����) �� ����� ��� ����ڵ� 2(�ǹ�) �� ���׷��̵带 �� �����Դϴ�. 
   ������ DML�� �̿��� �����͸� �������ּ���. 
*/
SELECT * FROM TB_MEMBER;

UPDATE TB_MEMBER
   SET GRADE_CD = 2
 WHERE GRADE_CD = 1;



/*
6. ȸ��ID �� 'BBBBB' �� ȸ���� ����ó ������ �����߽��ϴ�. 
   �����Ϸ��� ������ ������ �����ϴ�.

   �޴��� : '010-9999-9999'
   ��    : '062-999-9999' 

   TB_MEMBER_TEL �����͸� Ȯ���ؼ� �̹� �����ϴ� ����ó��� UPDATE �� , �������� �ʴ� �����Ͷ�� INSERT �� ���� 
   �ش� �����͸� ó�����ּ���.
*/ 


SELECT * FROM TB_MEMBER_TEL;

UPDATE TB_MEMBER_TEL
   SET TEL_NO = '010-9999-9999'
 WHERE MEMBER_ID = 'BBBBB';
 
INSERT INTO TB_MEMBER_TEL(
       MEMBER_ID
     , TEL_DV_CD
     , TEL_NO
) VALUES(
       'BBBBB'
     , '��'
     , '062-999-9999'
);



/*
7.  K���θ��� ��ǰ ������ 5000�� ������ ����� ��ǰ���� ������� �ʱ�� �����Ͽ����ϴ�. 
    TB_PRD (��ǰ ���̺�) �� PRD_PRICE (��ǰ����) �� 5000�� ������ ����� ���� ó���� ���ּ���. 
*/ 

SELECT * FROM TB_PRD;

DELETE FROM TB_PRD
 WHERE PRD_PRICE <= 5000;


/*
8. TB_MEMBER_LIKE ���̺��� ȸ���� ��ȣ�ϴ� ��ǰŸ���� ����س��� ���̺��Դϴ�. 
   ���� BBBBB�� ��ȣ�ϴ� ��ǰ�� ������ �����ϴ�. (SELECT * FROM TB_MEMBER_LIKE WHERE MEMBER_ID = 'BBBBB' ) 
   [ ��ǻ�� , ����Ʈ�� ] 

   ���� ���¿��� BBBBB�� ��ȣ�ϴ� ��ǰ�� ������ ���� �����Ϸ��� �Ҷ� ������ DML �� �����Ͽ� �ּ���.
   ( ���� INSERT �� �ؾ��� ��� REG_DATE(��Ͻ���)�� SYSDATE �� �Էµǵ��� ���ּ���) 
   [ ��ǻ�� , ���� ] 
   
*/ 

SELECT * FROM TB_MEMBER_LIKE;

SELECT * FROM TB_MEMBER_LIKE
 WHERE MEMBER_ID = 'BBBBB';
 
DELETE FROM TB_MEMBER_LIKE
 WHERE LIKE_PRD_TYPE = '����Ʈ��'
   AND MEMBER_ID = 'BBBBB';
   
INSERT INTO TB_MEMBER_LIKE(
       MEMBER_ID
     , LIKE_PRD_TYPE
     , REG_DATE
) VALUES(
       'BBBBB'
     , '����'
     , SYSDATE
);
 
ROLLBACK;

/*
9. ���� TB_PRD ���̺��� SELL_COMP_NAME (�Ǹ�ȸ���̸�) �� '�Ｚ' �� �����Ͱ� �ֽ��ϴ�. 
   ��Ȯ�� ������ �ϱ� ���ؼ� SELL_COMP_NAME �� '�Ｚ' �̸鼭 PRD_TYPE(��ǰŸ��) �� '��ǻ��' �̰ų� '����Ʈ��' �̸� 
   �Ǹ�ȸ���̸��� '�ＺELEC' ���� �����Ϸ��� �մϴ�. 
   �� ���ǿ� ���� �˸°� UPDATE�� �������ּ���. 
*/ 


SELECT * FROM TB_PRD WHERE SELL_COMP_NAME = '�ＺELEC';

UPDATE TB_PRD
   SET SELL_COMP_NAME = '�ＺELEC'
 WHERE SELL_COMP_NAME = '�Ｚ'
   AND PRD_TYPE IN ('��ǻ��' , '����Ʈ��');

COMMIT;


--�������̽��ϴ�. 