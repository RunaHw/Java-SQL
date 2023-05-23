/* 
이전에 배운 내용을 복습해보기 위한 예시 문제입니다. 
문제 범위 [ SELECT 연산/함수의 내장형함수 ~ SELECT 끝까지] 

HR 계정이 가지고 있는 테이블을 이용해 문제를 풀이해주세요. 
(접속선택 창이 뜨면 hr 로 선택) 
*/ 


/* 
1. EMPLOYEES 테이블에는 JOB_ID 라는 컬럼이 있습니다. 
   이 컬럼(JOB_ID)의 값 들이 "앞에서 두글자씩만 출력" 되도록 SUBSTR 함수를 활용해 출력해주세요. 
   또한 출력시 AS를 이용해서 컬럼이름을 직장명_두글자 로 작성해주세요.   

[출력결과] (총 107행) 
직장명_두글자   <-- 이건 컬럼 이름 
    AC
    AC
    AD
    AD 
    ...     
    ST
    ST
*/ 
 SELECT SUBSTR(JOB_ID, 1, 2) AS 직작명_두글자
   FROM EMPLOYEES;




/*
2. EMPLOYEES 테이블에는 PHONE_NUMBER 라는 컬럼이 있으며 111.111.1111 같은 형태로 데이터가 저장되어있습니다. 
   REPLACE 함수를 활용해서 아래와 같이 데이터를 출력해주세요. 
   힌트 : PHONE_NUMBER 컬럼을 이용해서 두 가지 경우에 대해 REPLACE를 해보고 
        각각의 결과에 대해 PHONE_VER2 , PHONE_VER3 으로 AS 별칭을 만들어주세요.  

[출력결과] (총 107행) 
EMPLOYEE_ID  FIRST_NAME  PHONE_NUMBER    PHONE_VER2     PHONE_VER3    <-- 이건 컬럼이름 
    100    	   Steven	 515.123.4567	515-123-4567	5151234567
    101	       Neena	 515.123.4568	515-123-4568	5151234568
    ...         ...          ...            ...            ... 
    206	       William	 515.123.8181	515-123-8181	5151238181
*/ 

 SELECT EMPLOYEE_ID
      , FIRST_NAME
      , PHONE_NUMBER
      , REPLACE(PHONE_NUMBER, '.', '-') AS PHONE_VER2
      , REPLACE(PHONE_NUMBER, '.', '')  AS PHONE_VER3 
   FROM EMPLOYEES;



/*
3. EMPLOYEES 테이블에는 HIRE_DATE 라는 컬럼이 있으며, 이는 직원들의 입사일시가 저장된 날짜형 컬럼입니다. 
   형변환 함수 중에 TO_CHAR을 이용하면 날짜형 데이터에서 원하는 포맷으로 
   문자형 데이터를 변환해 가져올 수 있습니다. [ 즉, TO_CHAR(날짜형데이터 , 포맷 ) => 문자형데이터 ] 

   아래와 같이 년월일 포맷만 나오도록 출력을 해주세요. 

[출력결과] (총 107행) 
EMPLOYEE_ID      HIRE_DATE            입사연월일   <-- 이건 컬럼이름 
    100	       2003-06-17 00:00:00	  20030617
    101	       2005-09-21 00:00:00	  20050921
    ...                 ...            ... 
    206	       2002-06-07 00:00:00	  20020607    
*/ 
 SELECT EMPLOYEE_ID
      , HIRE_DATE
      , TO_CHAR(HIRE_DATE, 'YYYYMMDD') AS 입사연월일
   FROM EMPLOYEES;




/*
4. EMPLOYEES 테이블에는 COMMISSION_PCT 라는 컬럼이 있습니다. 
   하지만 모든 직원이 COMMISSION_PCT 컬럼에 데이터가 있는 것은 아닙니다.
   이 때, NVL 조건을 활용해서 아래 조건에 맞게 데이터를 출력해주세요. 
   [ 만약 값이 존재한다면 해당 값을 그대로 출력하고, 값이 NULL이라면 숫자 0으로 출력을 하기 ] 

[출력결과] (총107행) 
EMPLOYEE_ID  COMMISSION_PCT    NVL적용한커미션       <-- 이건 컬럼 이름 
    100		       NULL              0
    101		       NULL              0 
    ...            ...              ... 
    146	           0.3	            0.3
    ...            ...              ... 
    206		       NULL              0
*/ 

 SELECT EMPLOYEE_ID
      , COMMISSION_PCT
      , NVL(COMMISSION_PCT, 0) AS NVL적용한커미션
   FROM EMPLOYEES;



/* 
5. (심화) EMPLOYEES 테이블에는 DEPARTMENT_ID 컬럼이 존재합니다. (직원이 어느 부서에 있는지를 표현합니다.) 
         이번 회사의 영업이익을 확인해보니 DEPARTMENT_ID 가 50인 부서가 눈에 띄는 활약을 해주어 보너스를 지급하려고 합니다.
         즉, DEPARTMEMT_ID 가 50 이면 기존 SALARY에 +1000을 추가해 실지급액으로 주고, 그 외에는 기존의 SALARY만큼만 실지급액을 주면 됩니다. 

         아래와 같이 출력을 해주세요.  
         @힌트1 : 보너스여부 와 실지급액 컬럼은 AS 로 만든 컬럼입니다. 
         @힌트2: DECODE 함수와 산술연산을 적절히 조합하여 문제를 풀어볼 수 있습니다.


[출력결과] (총 107행 출력) 
EMPLOYEE_ID   DEPARTMENT_ID   SALARY   보너스여부   실지급액    <-- 여긴 컬럼 이름 
    100  	        90	       24000	   N	   24000
    101	            90	       17000	   N	   17000
    ...            ...          ...       ...       ... 
    123         	50	       6500	       Y	   7500
    124	            50	       5800	       Y	   6800    
    ...            ...          ...       ...       ... 
    205	           110	      12008	       N	   12008
    206	           110	      8300	       N	   8300
*/

 SELECT EMPLOYEE_ID
      , DEPARTMENT_ID
      , SALARY
      , DECODE(DEPARTMENT_ID , 50 , 'Y', 'N') AS 보너스여부
      , DECODE(DEPARTMENT_ID, 50, SALARY+1000, SALARY) AS 실지급액
   FROM EMPLOYEES;

--------------------------------------------------------
--1번 답) 
SELECT SUBSTR(JOB_ID , 1 , 2 ) AS 직장명_두글자
  FROM EMPLOYEES ;

--2번 답) 
SELECT EMPLOYEE_ID 
     , FIRST_NAME 
     , PHONE_NUMBER 
     , REPLACE(PHONE_NUMBER , '.' , '-') AS PHONE_VER2
     , REPLACE(PHONE_NUMBER , '.' , '')  AS PHONE_VER3 
  FROM EMPLOYEES ;

--3번 답) 
SELECT EMPLOYEE_ID 
     , HIRE_DATE
     , TO_CHAR(HIRE_DATE , 'YYYYMMDD') AS 입사연월일
  FROM EMPLOYEES ;

--4번 답) 
SELECT EMPLOYEE_ID 
     , COMMISSION_PCT
     , NVL(COMMISSION_PCT , 0) AS NVL적용한커미션
  FROM EMPLOYEES ;
 
--5번 답) 
SELECT EMPLOYEE_ID 
     , DEPARTMENT_ID 
     , SALARY
     , DECODE ( DEPARTMENT_ID , '50' , 'Y' , 'N') AS 보너스여부
     , SALARY + DECODE(DEPARTMENT_ID , '50' , 1000 , 0) AS 실지급액
  FROM EMPLOYEES ;

