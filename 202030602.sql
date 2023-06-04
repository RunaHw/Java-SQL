// ��������1

CREATE TABLE TAB3(
    COL1 VARCHAR(20) PRIMARY KEY
  , COL2 VARCHAR(20)
);


INSERT INTO TAB3(COL1, COL2) VALUES('A', 'A');
INSERT INTO TAB3(COL1, COL2) VALUES('B', 'B');

COMMIT;
INSERT INTO TAB3 (COL1, COL2) VALUES('C', 'C');

ROLLBACK;
INSERT INTO TAB3(COL1, COL2) VALUES('D', 'D');

SAVEPOINT SV1;
INSERT INTO TAB3(COL1, COL2) VALUES ('E', 'E');
ROLLBACK TO SV1;
COMMIT;

SELECT *
  FROM TAB3;

// �������� 2

CREATE TABLE TAB4(
    COL1 VARCHAR(20) PRIMARY KEY
  , COL2 VARCHAR(20)
);

INSERT INTO TAB4(COL1, COL2) VALUES('A', 'A');
COMMIT;

INSERT INTO TAB4(COL1, COL2) VALUES('B', 'B');
INSERT INTO TAB4(COL1, COL2) VALUES('C', 'C');
CREATE TABLE HELLO(
    COL1 VARCHAR(10)
  , COL2 VARCHAR(10)
);
INSERT INTO TAB4(COL1, COL2) VALUES('D', 'D');
ROLLBACK;

INSERT INTO TAB4(COL1, COL2) VALUES('E', 'E');
COMMIT;

SELECT *
  FROM TAB4;
  
SELECT *
  FROM HELLO;
  
  
  /*
  UPDATE ���̺���
     SET �÷��� = '������ ��'
    ,����
   WHERE ����; (������ ���� ���� �ִ�.
    */
    
  /*
   INSERT, UPDATE, DELETE -- �ڵ� COMMIT(X)
   CREATE, ALTER, DROP     -- �ڵ� COMMIT(0)
   */
   
