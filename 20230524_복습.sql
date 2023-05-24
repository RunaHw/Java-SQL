/* 
이전에 배운 내용을 복습해보기 위한 예시 문제입니다. 
문제 범위 [ WHERE 전체 ] 

HR 계정이 가지고 있는 테이블을 이용해 문제를 풀이해주세요. 
(접속선택 창이 뜨면 hr 로 선택) 
*/ 



/* 
1. EMPLOYEES 테이블에서 FIRST_NAME 이 대문자 S 로 시작하면서 
   LAST_NAME 이 대문자 M 으로 시작하는 대상의 EMPLOYEE_ID , FIRST_NAME , LAST_NAME 을 출력해주세요. 
   (출력 순서는 상관 없습니다) 
   [힌트 : LIKE , AND 활용 , LIKE 사용시 매칭할 값을 겉따옴표(') 로 감싸주세요. 

[출력결과] (총 3행) 
EMPLOYEE_ID    FIRST_NAME   LAST_NAME  
    128	        Steven	     Markle
    203	        Susan	     Mavris
    194	        Samuel	     McCain
*/ 
 SELECT EMPLOYEE_ID
      , FIRST_NAME
      , LAST_NAME
   FROM EMPLOYEES
 WHERE FIRST_NAME LIKE'S%'
   AND LAST_NAME LIKE'M%';




/* 
2. DEPARTMENTS 테이블은 부서관련 정보를 저장하는 테이블이며, 각 부서마다 MANAGER_ID 가 존재합니다.  
   그 중 MANAGER_ID 가 정해지지 않은 대상의 모든 정보(*) 를 출력해주세요. 
   [힌트 : IS NULL / IS NOT NULL ] 

[출력결과] (총 16행) 
DEPARTMENT_ID   DEPARTMENT_NAME    MANAGER_ID   LOCATION_ID 
    120	        Treasury		      NULL          1700
    130	        Corporate Tax		  NULL          1700
    140	        Control And Credit	  NULL	        1700
    ...         ...                   ...           ...
    260	        Recruiting		      NULL          1700
    270	        Payroll		          NULL          1700
*/ 
 SELECT *
   FROM DEPARTMENTS
  WHERE MANAGER_ID IS  NULL;


/* 
3. EMPLOYEES 테이블에서 직원들의 SALARY(연봉) 이 6000 ~ 7000 사이이면서 
   COMMISSION_PCT(커미션)이 NULL이 아닌 대상의 EMPLOYEE_ID , HIRE_DATE , SALARY , COMMISSION_PCT 를 출력해주세요. 
   [힌트 : BETWEEN ] 

[출력 결과] (총 8행) 
EMPLOYEE_ID      HIRE_DATE          SALARY    COMMISSION_PCT 
    155	      2007-11-23 00:00:00	   7000	        0.15
    161	      2006-11-03 00:00:00	   7000	        0.25
    165	      2008-02-23 00:00:00	   6800	        0.1
    166	      2008-03-24 00:00:00	   6400	        0.1
    167	      2008-04-21 00:00:00	   6200	        0.1
    173	      2008-04-21 00:00:00	   6100	        0.1
    178	      2007-05-24 00:00:00	   7000	        0.15
    179	      2008-01-04 00:00:00	   6200	        0.1
*/ 
 SELECT EMPLOYEE_ID
      , HIRE_DATE
      , SALARY
      , COMMISSION_PCT
   FROM EMPLOYEES
  WHERE SALARY BETWEEN 6000 AND 7000
    AND COMMISSION_PCT IS NOT NULL;


/* 
4. COUNTRIES 테이블에서 REGION_ID 가 1 , 2 , 3 인 대상의 모든 정보를 출력해주세요. 
   [힌트 : IN 활용 , 혹은 부정연산으로도 풀이 가능 ] 


[출력 결과] (총 8행) 
COUNTRY_ID    COUNTRY_NAME               REGION_ID 
    AR         Argentina    	            2
    AU	       Australia	                3
    BE	       Belgium	                    1
    BR	       Brazil	                    2
    ...         ...                        ... 
    UK	       United Kingdom	            1
    US	       United States of America  	2
*/ 
 SELECT *
   FROM COUNTRIES
  WHERE REGION_ID IN(1, 2, 3);



/* 
5(심화). EMPLOYEES 테이블에는 다양한 직원들이 있습니다.
        그 중에서 JOB_ID 가 'SA_REP' 이고, SALARY 가 7000 ~ 9000 이면서 FIRST_NAME에 소문자 et 가 포함된 
        대상의 EMPLOYEE_ID , FIRST_NAME , JOB_ID , SALARY 를 출력해주세요. 

[출력결과 (총 3행) 
EMPLOYEE_ID   FIRST_NAME    JOB_ID  SALARY 
    152	        Peter	    SA_REP	 9000
    154	        Nanette	    SA_REP	 7500
    172	        Elizabeth	SA_REP	 7300
*/ 
 SELECT EMPLOYEE_ID
      , FIRST_NAME
      , JOB_ID
      , SALARY
   FROM EMPLOYEES
  WHERE JOB_ID = 'SA_REP'
    AND SALARY BETWEEN 7000 AND 9000
    AND FIRST_NAME LIKE'%et%';










--------------------------------------------------------
--1번 답) 
SELECT EMPLOYEE_ID 
     , FIRST_NAME 
     , LAST_NAME 
  FROM EMPLOYEES 
 WHERE FIRST_NAME LIKE 'S%' 
   AND LAST_NAME LIKE 'M%';


--2번 답) 
SELECT * 
  FROM DEPARTMENTS 
 WHERE MANAGER_ID IS NULL ; 
 
 
--3번 답) 
SELECT EMPLOYEE_ID 
     , HIRE_DATE 
     , SALARY 
     , COMMISSION_PCT 
  FROM EMPLOYEES 
 WHERE SALARY BETWEEN 6000 AND 7000 
   AND COMMISSION_PCT IS NOT NULL ;


--4번 답) 
SELECT * 
  FROM COUNTRIES 
 WHERE REGION_ID IN (1,2,3) ;
--혹은
SELECT * 
  FROM COUNTRIES 
 WHERE REGION_ID != 4 ;


--5번 답) 
SELECT EMPLOYEE_ID 
     , FIRST_NAME 
     , JOB_ID 
     , SALARY 
  FROM EMPLOYEES 
 WHERE SALARY BETWEEN 7000 AND 9000 
   AND JOB_ID = 'SA_REP' 
   AND FIRST_NAME LIKE '%et%';
