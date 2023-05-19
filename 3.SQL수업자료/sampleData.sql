/* ������ �����ϴ� ���̺��� ���� */ 
DROP TABLE MAPPING ;
DROP TABLE TB_GRADE ; 
DROP TABLE TB_PRD_PIC; 
DROP TABLE TB_MEMBER_LIKE ; 
DROP TABLE TB_WISH ;   
DROP TABLE TB_DELIV_INFO ; 
DROP TABLE TB_ORDER ; 
DROP TABLE TB_PRD ; 
DROP TABLE TB_MEMBER_TEL; 
DROP TABLE TB_MEMBER ;
DROP TABLE ȸ������ó ; 
DROP TABLE ȸ�� ; 

--------------------------------------------------------------------------------

/* TB_GRADE ���̺� ���� */ 
CREATE TABLE TB_GRADE (    -- ����ڵ�� ����̸��� ����Ǿ� �ִ� ���̺�
    GRADE_CD     NUMBER         NOT NULL  , 
    GRADE_NAME   VARCHAR2(50)   NOT NULL  
) ; 

/* TB_GRADE ���̺� GRADE_CD �÷����� PRIMARY KEY ���� */ 
ALTER TABLE TB_GRADE ADD CONSTRAINT PK_GRADE PRIMARY KEY(GRADE_CD) ;

/* TB_GRADE ���̺��� �� �÷��� �ڸ�Ʈ�� �߰� */ 
COMMENT ON COLUMN TB_GRADE.GRADE_CD IS '����ڵ�';
COMMENT ON COLUMN TB_GRADE.GRADE_NAME IS '����̸�';


/* TB_MEMBER ���̺� ���� */ 
CREATE TABLE TB_MEMBER (    --������� ������ �����ϴ� ���̺� 

    MEMBER_ID     VARCHAR2(30)   NOT NULL   ,  --ȸ��ID 
    MEMBER_NAME   VARCHAR2(20)   NOT NULL   ,  --ȸ���̸� 
    PASSWD        VARCHAR2(50)   NOT NULL   ,  --�н�����
    PAY_CARD_NO   VARCHAR2(20)   NOT NULL   ,  --����ī���ȣ
    JOIN_DY       VARCHAR2(8)    NOT NULL   ,  --��������     
    GRADE_CD      NUMBER         NOT NULL   ,  --����ڵ� 
    GENDER        VARCHAR(5)                ,  --����  
    AGE           NUMBER(3,0)               ,  --����  
    DEL_YN        VARCHAR2(2) DEFAULT 'N'      --Ż�𿩺� 
) ; 

/* TB_MEMBER ���̺��� MEMBER_ID �÷��� �������� PRIMARY KEY ���� */ 
ALTER TABLE TB_MEMBER ADD CONSTRAINT PK_MEMBER PRIMARY KEY(MEMBER_ID) ;

/* TB_MEMBER ���̺��� �� �÷��� �ڸ�Ʈ�� �߰� */ 
COMMENT ON COLUMN TB_MEMBER.MEMBER_ID IS 'ȸ��ID';
COMMENT ON COLUMN TB_MEMBER.MEMBER_NAME IS 'ȸ���̸�';
COMMENT ON COLUMN TB_MEMBER.PASSWD IS '�н�����';
COMMENT ON COLUMN TB_MEMBER.PAY_CARD_NO IS '����ī���ȣ';
COMMENT ON COLUMN TB_MEMBER.JOIN_DY IS '��������';
COMMENT ON COLUMN TB_MEMBER.GRADE_CD IS '����ڵ�';
COMMENT ON COLUMN TB_MEMBER.GENDER IS '����';
COMMENT ON COLUMN TB_MEMBER.AGE IS '����';


/* TB_MEMBER_TEL ���̺� ���� */ 

CREATE TABLE TB_MEMBER_TEL (
    MEMBER_ID VARCHAR2(30) NOT NULL ,    --ȸ��ID  
    TEL_DV_CD    VARCHAR2(10) NOT NULL , --����ó_����_�ڵ� 
    TEL_NO    VARCHAR2(20) NOT NULL      --����ó_��ȣ     
) ; 

/* TB_MEMBER_TEL ���̺��� MEMBER_ID �� TEL_DV_CD �÷��� �������� PRIMARY KEY ���� */ 
ALTER TABLE TB_MEMBER_TEL ADD CONSTRAINT PK_MEMBER_TEL PRIMARY KEY(MEMBER_ID , TEL_DV_CD) ; 

/* TB_MEMBER_TEL ���̺��� �� �÷��� �ڸ�Ʈ�� �߰� */ 
COMMENT ON COLUMN TB_MEMBER_TEL.MEMBER_ID IS 'ȸ��ID';
COMMENT ON COLUMN TB_MEMBER_TEL.TEL_DV_CD IS '����ó�����ڵ�';
COMMENT ON COLUMN TB_MEMBER_TEL.TEL_NO IS '����ó��ȣ';


/* TB_PRD ���̺� ����*/ 
CREATE TABLE TB_PRD (              --��ǰ ������ ����ִ� ���̺� 
   PRD_ID         VARCHAR2(30)  NOT NULL   ,   --��ǰID 
   PRD_NAME       VARCHAR2(50)  NOT NULL   ,   --��ǰ�� 
   PRD_TYPE       VARCHAR2(50)  NOT NULL   ,   --��ǰŸ�� 
   PRD_INFO       VARCHAR2(4000) NOT NULL  ,   --��ǰ���� 
   PRD_PRICE      NUMBER         NOT NULL  ,   --��ǰ���� 
   SELL_COMP_NAME VARCHAR2(50)  NOT NULL   ,   --�Ǹ�ȸ���
   REG_DATE       DATE          NOT NULL       --����Ͻ�    
) ; 

/* TB_PRD ���̺��� PRD_ID �÷��� PRIMARY KEY �� ���� */ 
ALTER TABLE TB_PRD ADD CONSTRAINT PK_PRD PRIMARY KEY(PRD_ID);

/* TB_PRD ���̺��� �� �÷��� �ڸ�Ʈ�� �߰� */ 
COMMENT ON COLUMN TB_PRD.PRD_ID IS '��ǰID';
COMMENT ON COLUMN TB_PRD.PRD_NAME IS '��ǰ�̸�';
COMMENT ON COLUMN TB_PRD.PRD_TYPE IS '��ǰŸ��';
COMMENT ON COLUMN TB_PRD.PRD_INFO IS '��ǰ����';
COMMENT ON COLUMN TB_PRD.PRD_PRICE IS '��ǰ����';
COMMENT ON COLUMN TB_PRD.SELL_COMP_NAME IS '�Ǹ�ȸ���̸�';
COMMENT ON COLUMN TB_PRD.REG_DATE IS '����Ͻ�';


/* TB_MEMBER_LIKE ���̺� ���� */ 
CREATE TABLE TB_MEMBER_LIKE (     --����ڰ� ��ȣ�ϴ� ��ǰ Ÿ���� �����ϴ� ���̺� 
    MEMBER_ID      VARCHAR2(30)   NOT NULL   ,  --ȸ��ID 
    LIKE_PRD_TYPE  VARCHAR2(50)   NOT NULL   ,  --��ǰŸ��
    REG_DATE       DATE           NOT NULL      --����Ͻ�     
) ; 

/* TB_MEMBER_LIKE ���̺��� MEMBER_ID �� LIKE_PRD_TYPE �÷��� �����ؼ� PRIMRAY KEY ó�� */ 
ALTER TABLE TB_MEMBER_LIKE ADD CONSTRAINT PK_MEMBER_LIKE PRIMARY KEY ( MEMBER_ID , LIKE_PRD_TYPE ) ;

/* TB_MEMBER_LIKE ���̺��� �� �÷��� �ڸ�Ʈ�� �߰� */ 
COMMENT ON COLUMN TB_MEMBER_LIKE.MEMBER_ID IS 'ȸ��ID';
COMMENT ON COLUMN TB_MEMBER_LIKE.LIKE_PRD_TYPE IS '��ȣ��ǰŸ��';
COMMENT ON COLUMN TB_MEMBER_LIKE.REG_DATE IS '����Ͻ�';


/* TB_PRD_PIC ���̺� ���� */ 
CREATE TABLE TB_PRD_PIC (         --��ǰ ���� ���� ���������� ����ִ� ���̺� 
   PIC_NO        NUMBER         NOT NULL   ,  --������ȣ  
   PRD_ID        VARCHAR2(30)   NOT NULL   ,  --��ǰID 
   PIC_INFO      BLOB           NULL       ,  --������ü�����Ұ��
   PIC_PATH      VARCHAR2(500)  NULL          --������θ������Ұ��
); 

/* TB_PRD_PIC ���̺��� PIC_NO �÷��� �������� PRIMARY KEY ���� */ 
ALTER TABLE TB_PRD_PIC ADD CONSTRAINT PK_PRD_PIC PRIMARY KEY ( PIC_NO ) ;

/* TB_PRD_PIC ���̺��� �� �÷��� �ڸ�Ʈ �߰� */ 
COMMENT ON COLUMN TB_PRD_PIC.PIC_NO IS '������ȣ';
COMMENT ON COLUMN TB_PRD_PIC.PRD_ID IS '��ǰID';
COMMENT ON COLUMN TB_PRD_PIC.PIC_INFO IS '��������(������ü�����Ұ��)';
COMMENT ON COLUMN TB_PRD_PIC.PIC_PATH IS '�������(������θ������Ұ��)';

/* TB_ORDER ���̺� ���� */ 
CREATE TABLE TB_ORDER ( 
   ORDER_NO     NUMBER         NOT NULL   ,  --�ֹ���ȣ 
   MEMBER_ID    VARCHAR2(30)   NOT NULL   ,  --ȸ��ID
   PRD_ID       VARCHAR2(30)   NOT NULL   ,  --��ǰID 
   ORDER_DATE   DATE           NOT NULL   ,  --�ֹ��Ͻ�
   ORDER_CNT    NUMBER         NOT NULL   ,  --�ֹ����� 
   ORDER_PRICE  NUMBER         NOT NULL      --�ֹ����� (���� X ��ǰ����) 
) ; 

/* TB_ORDER ���̺��� ORDER_NO �÷��� PRIMARY KEY �� ���� */ 
ALTER TABLE TB_ORDER ADD CONSTRAINT PK_ORDER PRIMARY KEY (ORDER_NO ) ;

/* TB_ORDER ���̺��� �� �÷��� �ڸ�Ʈ �߰� */ 
COMMENT ON COLUMN TB_ORDER.ORDER_NO IS '�ֹ���ȣ';
COMMENT ON COLUMN TB_ORDER.MEMBER_ID IS 'ȸ��ID';
COMMENT ON COLUMN TB_ORDER.PRD_ID IS '��ǰID';
COMMENT ON COLUMN TB_ORDER.ORDER_DATE IS '�ֹ��Ͻ�';
COMMENT ON COLUMN TB_ORDER.ORDER_CNT IS '�ֹ�����';
COMMENT ON COLUMN TB_ORDER.ORDER_PRICE IS '�ֹ�����';

/* TB_DELIV_INFO ���̺� ����*/ 
CREATE TABLE TB_DELIV_INFO ( 
  ORDER_NO        NUMBER       NOT NULL   ,  --�ֹ���ȣ
  DELIV_STATE     VARCHAR2(30) NOT NULL   ,  --��ۻ���
  REG_SEQ         NUMBER       NOT NULL   ,  --��ϼ��� 
  REG_DATE        DATE         NOT NULL      --����Ͻ� 
) ; 

/* TB_DELIV_INFO ���̺��� ORDER_NO �� DELIV_STATE , REG_SEQ �÷��� ������ PRIMARY KEY �� ���� */ 
ALTER TABLE TB_DELIV_INFO ADD CONSTRAINT PK_DELIV_INFO PRIMARY KEY(ORDER_NO , DELIV_STATE , REG_SEQ) ; 

/* TB_DELIV_INFO ���̺��� �� �÷��� �ڸ�Ʈ �߰� */ 
COMMENT ON COLUMN TB_DELIV_INFO.ORDER_NO IS '�ֹ���ȣ';
COMMENT ON COLUMN TB_DELIV_INFO.DELIV_STATE IS '��ۻ���';
COMMENT ON COLUMN TB_DELIV_INFO.REG_SEQ IS '��ϼ���';
COMMENT ON COLUMN TB_DELIV_INFO.REG_DATE IS '����Ͻ�';

/* TB_WISH ���̺� ���� */ 
CREATE TABLE TB_WISH (         --����ڰ� ��ǰ�� ���� ���� �� ����� �����ϴ� ���̺�
   MEMBER_ID   VARCHAR2(30)   NOT NULL   ,  --ȸ��ID 
   PRD_ID      VARCHAR2(30)   NOT NULL   ,  --��ǰID 
   REG_DATE    DATE           NOT NULL      --����Ͻ� 
) ; 

/* TB_WISH ���̺��� MEMBER_ID , PRD_ID �� �����Ͽ� PRIMARY KEY ���� */ 
ALTER TABLE TB_WISH ADD CONSTRAINT PK_WISH PRIMARY KEY ( MEMBER_ID , PRD_ID ) ;

/* TB_WISH ���̺��� �� �÷��� �ڸ�Ʈ �߰� */ 
COMMENT ON COLUMN TB_WISH.MEMBER_ID IS 'ȸ��ID';
COMMENT ON COLUMN TB_WISH.PRD_ID IS '��ǰID';
COMMENT ON COLUMN TB_WISH.REG_DATE IS '����Ͻ�';

CREATE TABLE MAPPING (           --�� ���̺�� �÷��� ���� ����-�ѱ� ���� ���踦 ������ ���̺� 
   ENG   VARCHAR2(100) NOT NULL , 
   KOR   VARCHAR2(100) NOT NULL 
) ;

--MAPPING ���̺��� ENG �÷��� PRIMARY KEY �� ���� 
ALTER TABLE MAPPING ADD CONSTRAINT PK_MAPPING PRIMARY KEY(ENG); 
 

/***************************** ���̺� �� �ܷ�Ű (Foreign key ����) ***************************/ 
-- TB_MEMBER �� TB_MEMBER_TEL �� FK ���� 
ALTER TABLE TB_MEMBER_TEL ADD CONSTRAINT FK_MEMBER 
FOREIGN KEY(MEMBER_ID) REFERENCES TB_MEMBER(MEMBER_ID) ; 

--TB_MEMBER �� TB_MEMBER_LIKE �� FK ���� 
ALTER TABLE TB_MEMBER_LIKE ADD CONSTRAINT FK_MEMBER_LIKE FOREIGN KEY(MEMBER_ID) REFERENCES TB_MEMBER(MEMBER_ID) ; 

--TB_MEMBER �� TB_WISH �� FK����
ALTER TABLE TB_WISH ADD CONSTRAINT FK_WISH FOREIGN KEY(MEMBER_ID) REFERENCES TB_MEMBER(MEMBER_ID) ON DELETE CASCADE; 
--TB_PRD �� TB_WISH �� FK ���� 
ALTER TABLE TB_WISH ADD CONSTRAINT FK_WISH_2 FOREIGN KEY(PRD_ID) REFERENCES TB_PRD(PRD_ID) ON DELETE SET NULL; 

--TB_PRD �� TB_PRD_PIC �� FK ����
ALTER TABLE TB_PRD_PIC ADD CONSTRAINT FK_PRD_PIC FOREIGN KEY(PRD_ID) REFERENCES TB_PRD(PRD_ID) ON DELETE CASCADE ;  





/********************************** ������ ���� ���� ***********************************/

/* TB_GRADE ���̺� �׽�Ʈ�� ������ ���� */ 
INSERT INTO TB_GRADE VALUES( 1 , '�����');
INSERT INTO TB_GRADE VALUES( 2 , '�ǹ�');
INSERT INTO TB_GRADE VALUES( 3 , '���');
INSERT INTO TB_GRADE VALUES( 4 , 'VIP');
INSERT INTO TB_GRADE VALUES( 5 , 'VVIP');


/* TB_MEMBER ���̺� �׽�Ʈ�� ������ ���� */ 
INSERT INTO TB_MEMBER VALUES ( 'AAAAA' , '�����A' , 'AAAAA' , '1111-1111-1111-1111' , TO_CHAR( TO_DATE('20200101' , 'YYYYMMDD') , 'YYYYMMDD') ,  1 , '��' , NULL , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'BBBBB' , '�����B' , 'BBBBB' , '2222-2222-2222-2222' , TO_CHAR( TO_DATE('20200327' , 'YYYYMMDD') , 'YYYYMMDD') ,  2 , '��' ,   25 , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'CCCCC' , '�����C' , 'CCCCC' , '3333-3333-3333-3333' , TO_CHAR( TO_DATE('20210105' , 'YYYYMMDD') , 'YYYYMMDD') ,  1 , '��' ,   27 , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'DDDDD' , '�����D' , 'DDDDD' , '4444-4444-4444-4444' , TO_CHAR( TO_DATE('20210630' , 'YYYYMMDD') , 'YYYYMMDD') ,  3 , '��' ,   30 , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'EEEEE' , '�����E' , 'EEEEE' , '5555-5555-5555-5555' , TO_CHAR( TO_DATE('20210831' , 'YYYYMMDD') , 'YYYYMMDD') ,  1 , '��' , NULL , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'FFFFF' , '�����F' , 'FFFFF' , '6666-6666-6666-6666' , TO_CHAR( TO_DATE('20220216' , 'YYYYMMDD') , 'YYYYMMDD') ,  3 , '��' ,   35 , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'GGGGG' , '�����G' , 'GGGGG' , '7777-7777-7777-7777' , TO_CHAR( TO_DATE('20220317' , 'YYYYMMDD') , 'YYYYMMDD') ,  2 , '��' ,   39 , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'HHHHH' , '�����H' , 'HHHHH' , '8888-8888-8888-8888' , TO_CHAR( TO_DATE('20220812' , 'YYYYMMDD') , 'YYYYMMDD') ,  5 , NULL ,   44 , 'N' ) ;
INSERT INTO TB_MEMBER VALUES ( 'IIIII' , '�����I' , 'IIIII' , '9999-9999-9999-9999' , TO_CHAR( TO_DATE('20230430' , 'YYYYMMDD') , 'YYYYMMDD') ,  4 , NULL ,   52 , 'N' ) ;



/* TB_MEMBER ���̺� �׽�Ʈ�� ������ ���� */ 
INSERT INTO TB_MEMBER_TEL VALUES ( 'AAAAA' , '��' , '062-123-1234' );
INSERT INTO TB_MEMBER_TEL VALUES ( 'AAAAA' , '�޴���' , '010-1231-1231' );
INSERT INTO TB_MEMBER_TEL VALUES ( 'AAAAA' , 'ȸ��' , '02-9999-9999' );
INSERT INTO TB_MEMBER_TEL VALUES ( 'BBBBB' , '��' , '062-555-7777' );
INSERT INTO TB_MEMBER_TEL VALUES ( 'BBBBB' , '�޴���' , '010-5555-8888' );


/* TB_PRD ���̺� �׽�Ʈ ������ ���� 20��*/ 
INSERT INTO TB_PRD VALUES ('P0001' , '������̱�' , '����' , '�Ӹ��� ���� �� �����ִ� ������̱� �Դϴ�.' , 30000 , 'LG' , TO_DATE('20230501122357' , 'YYYYMMDDHH24MISS') ) ; 
INSERT INTO TB_PRD VALUES ('P0002', '������', '����', '������ �� �� �����ִ� �������Դϴ�.', 1500000, '�Ｚ',  TO_DATE('20230501152222' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0003', '��Ź��', '����', '���� �����ϰ� ��Ź���ִ� ��Ź���Դϴ�.', 600000, 'LG',  TO_DATE('20230502030212' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0004', '������', '����', '������ �����ϰ� ���� ������ �� �ִ� �������Դϴ�.', 800000, '�Ｚ',  TO_DATE('20230502175525' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0005', '��Ʈ��', '��ǻ��', '������ �پ�� ������ ��Ʈ���Դϴ�.', 1500000, 'Apple',  TO_DATE('20230503235959' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0006', '����ũž', '��ǻ��', '������ ������ ���� ����ũž ��ǻ���Դϴ�.', 2000000, 'Dell',  TO_DATE('20230503122337' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0007', '�º�', '��ǻ��', '������鼭�� �پ��� ����� ���� �º��Դϴ�.', 800000, '�Ｚ',  TO_DATE('20230504221012' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0008', '����14', '����Ʈ��', '�پ��� ����� ���� ����Ʈ���Դϴ�.', 1200000, 'Apple',  TO_DATE('20230504105523' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0009', '������S23', '����Ʈ��', '���� ��û���� ���� ����Ʈ���Դϴ�.', 1500000, '�Ｚ',  TO_DATE('20230505172325' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0010' ,'���Ƽ�Ǫ'  , '��ǿ�ǰ' , '�Ӹ��� ���������� ��Ǫ�Դϴ�.' , 20000 , 'LG' ,  TO_DATE('20230505190101' , 'YYYYMMDDHH24MISS')) ;
INSERT INTO TB_PRD VALUES ('P0011', '������', '�ֹ��ǰ', '���� ���̱⿡ ������ �������Դϴ�.', 20000, 'LG',  TO_DATE('20230506120000' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0012', '������', '�ֹ��ǰ', '�Ҹ��� �������� �������Դϴ�.', 80000, '�Ｚ',  TO_DATE('20230506124728' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0013', '����', '�ֹ��ǰ', '����Ḧ ���̱⿡ ������ �����Դϴ�.', 30000, '��������',  TO_DATE('20230507123456' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0014', 'Į', '�ֹ��ǰ', '����Ḧ �ڸ��⿡ ������ Į�Դϴ�.', 15000, '��������',  TO_DATE('20230507122357' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0015', '������', '��ǿ�ǰ', '��� û�ҿ� ���Ǵ� �������Դϴ�.', 5000, '3M',  TO_DATE('20230508110025' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0017', '������������', '��ǿ�ǰ', '�����̸� ������ �� �ְ��Դϴ�.', 10000, '3M',  TO_DATE('20230508150010' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0018', '������', '��ǿ�ǰ', '������ ���ٱ�� û���� ����� ��� �� �ִ� �������Դϴ�.', 50000, '�ٿ��',  TO_DATE('20230509010101' , 'YYYYMMDDHH24MISS'));
INSERT INTO TB_PRD VALUES ('P0019', '����', '��ǿ�ǰ', '�����Ÿ��� �Ӹ��� ������ �ʹٸ� �� ��ǰ�� ����ϼ���' ,  20000 , '�ٿ��' ,  TO_DATE('20230509001212' , 'YYYYMMDDHH24MISS')) ; 
INSERT INTO TB_PRD VALUES ('P0020', '����', '��ǿ�ǰ', 'ȣ�ڿ����� ���Ǵ� ��޼����� ģȯ�� Ÿ�� ������ �����Դϴ�.' , 5000, '�ٿ��'  , TO_DATE('20230510215348' , 'YYYYMMDDHH24MISS')) ; 


/* TB_MEMBER_LIKE ���̺� �׽�Ʈ �����͸� �߰� */ 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'AAAAA' , '����' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'BBBBB' , '��ǻ��' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'BBBBB' , '����Ʈ��' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'CCCCC' , '�ֹ��ǰ' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'CCCCC' , '��ǿ�ǰ' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'DDDDD' , '��ǻ��' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'DDDDD' , '�ֹ��ǰ' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'DDDDD' , '����Ʈ��' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'DDDDD' , '����' , SYSDATE) ; 
INSERT INTO TB_MEMBER_LIKE VALUES ( 'DDDDD' , '��ǿ�ǰ' , SYSDATE) ; 

 
/* TB_ORDER ���̺� �׽�Ʈ ������ �߰� */ 
INSERT INTO TB_ORDER VALUES ( 1 , 'AAAAA' , 'P0002' , TO_DATE('20230427') , 1 , 1500000 ) ; 
INSERT INTO TB_ORDER VALUES ( 2 , 'AAAAA' , 'P0003' , TO_DATE('20230428') , 1 ,  600000 ) ; 
INSERT INTO TB_ORDER VALUES ( 3 , 'AAAAA' , 'P0004' , TO_DATE('20230429') , 1 ,  800000 ) ; 
INSERT INTO TB_ORDER VALUES ( 4 , 'AAAAA' , 'P0020' , TO_DATE('20230430') , 5 ,   25000 ) ; 
 
 
/* TB_DELIV_INFO ���̺� �׽�Ʈ ������ �߰� */ 
INSERT INTO TB_DELIV_INFO VALUES ( 1 , 'ķ������'   , 1 , TO_DATE('20230427')) ; 
INSERT INTO TB_DELIV_INFO VALUES ( 1 , '������'   , 2 , TO_DATE('20230428')) ; 
INSERT INTO TB_DELIV_INFO VALUES ( 1 , '��ۿϷ�'   , 3 , TO_DATE('20230430')) ; 
INSERT INTO TB_DELIV_INFO VALUES ( 2 , 'ķ������'   , 1 , TO_DATE('20230428')) ; 
INSERT INTO TB_DELIV_INFO VALUES ( 2 ,  '������'  , 2 , TO_DATE('20230429')) ; 
INSERT INTO TB_DELIV_INFO VALUES ( 3 ,  'ķ������'  , 1 , TO_DATE('20230430')) ; 
INSERT INTO TB_DELIV_INFO VALUES ( 4 ,  'ķ������'  , 1 , TO_DATE('20230430')) ; 


/* TB_WISH ���̺� ���� ������ �߰� */ 
INSERT INTO TB_WISH VALUES ( 'AAAAA' , 'P0002' , SYSDATE ); 
INSERT INTO TB_WISH VALUES ( 'AAAAA' , 'P0006' , SYSDATE ); 
INSERT INTO TB_WISH VALUES ( 'AAAAA' , 'P0007' , SYSDATE ); 
INSERT INTO TB_WISH VALUES ( 'AAAAA' , 'P0010' , SYSDATE ); 



--MAPPING ���� ������ ���� 
INSERT INTO MAPPING VALUES ('TB' , '���̺��� �ǹ��ϴ� ���λ�'); 
INSERT INTO MAPPING VALUES ('MEMBER' , 'ȸ��');
INSERT INTO MAPPING VALUES ('ID'     , '���̵�');
INSERT INTO MAPPING VALUES ('NAME'   , '�̸�');
INSERT INTO MAPPING VALUES ('PASSWD' , '��й�ȣ'); 
INSERT INTO MAPPING VALUES ('PAY'    , '����') ;
INSERT INTO MAPPING VALUES ('CARD'   , 'ī��');
INSERT INTO MAPPING VALUES ('GENDER' , '����');
INSERT INTO MAPPING VALUES ('AGE'    , '����');
INSERT INTO MAPPING VALUES ('REG'    , '���');
INSERT INTO MAPPING VALUES ('DATE'   , '�Ͻ�');
INSERT INTO MAPPING VALUES ('PRICE'  , '����');
INSERT INTO MAPPING VALUES ('SELL'  , '�Ǹ�');
INSERT INTO MAPPING VALUES ('COMP'  , 'ȸ��');
INSERT INTO MAPPING VALUES ('PIC'   , '����');
INSERT INTO MAPPING VALUES ('ORDER'   , '�ֹ�');
INSERT INTO MAPPING VALUES ('CNT'     , '����');
INSERT INTO MAPPING VALUES ('JOIN'    , '����');
INSERT INTO MAPPING VALUES ('DY'     , '����');
INSERT INTO MAPPING VALUES ('PRD'    , '��ǰ');
INSERT INTO MAPPING VALUES ('LIKE'   , '��ȣ');
INSERT INTO MAPPING VALUES ('TYPE'   , 'Ÿ��');
INSERT INTO MAPPING VALUES ('DELIV'  , '���');
INSERT INTO MAPPING VALUES ('WISH'  , '��');
INSERT INTO MAPPING VALUES ('INFO'   , '����');
INSERT INTO MAPPING VALUES ('NO'     , '��ȣ');
INSERT INTO MAPPING VALUES ('GRADE'  , '���');
INSERT INTO MAPPING VALUES ('CD'  , '�ڵ�');
INSERT INTO MAPPING VALUES ('ENG'  , '����');
INSERT INTO MAPPING VALUES ('KOR'  , '�ѱ�');
INSERT INTO MAPPING VALUES ('SEQ'  , '����');
INSERT INTO MAPPING VALUES ('DV'   , '����'); 
INSERT INTO MAPPING VALUES ('TEL'   , '����ó'); 

COMMIT; 



CREATE TABLE ȸ��(
   ȸ��ID VARCHAR2(5) PRIMARY KEY , 
     �̸� VARCHAR2(50) NOT NULL 
) ; 

CREATE TABLE ȸ������ó (     
    ȸ��ID     VARCHAR2(5)  ,
    �����ڵ�    VARCHAR2(10) ,
    ����ó      VARCHAR(15) NOT NULL 
) ; 

ALTER TABLE ȸ������ó ADD CONSTRAINT PK_ȸ������ó PRIMARY KEY(ȸ��ID , �����ڵ�) ; 

INSERT INTO ȸ�� VALUES ( 'A0001' , '������' ) ; 
INSERT INTO ȸ�� VALUES ( 'A0002' , '������' ) ; 
INSERT INTO ȸ�� VALUES ( 'A0003' , '������' ) ; 
INSERT INTO ȸ������ó VALUES ( 'A0001' , '����ȭ' , '062-111-1111') ; 
INSERT INTO ȸ������ó VALUES ( 'A0001' , '�޴���' , '010-1111-1111') ; 
INSERT INTO ȸ������ó VALUES ( 'A0002' , '�޴���' , '010-2222-2222') ; 
INSERT INTO ȸ������ó VALUES ( 'A0004' , '�޴���' , '010-4444-4444') ; 


--TB_PRD_PIC ���� ������ ���� 
INSERT INTO TB_PRD_PIC 
SELECT TO_NUMBER(SUBSTR(PRD_ID , 2 )) , PRD_ID , NULL ,  '/images/' || PRD_NAME || '.png' 
  FROM TB_PRD 
 ORDER BY PRD_ID ; 

COMMIT; 
