/* 
이전에 배운 내용을 복습해보기 위한 예시 문제입니다. 
문제 범위 [ GROUP BY - HAVING - ORDER BY 전체 ] 

HR 계정이 가지고 있는 테이블을 이용해 문제를 풀이해주세요. 
(접속선택 창이 뜨면 hr 로 선택) 
*/ 



/* 
1. EMPLOYEES 테이블에는 JOB_ID 라는 컬럼이 있습니다. 
   GROUP BY 문법을 이용해서 JOB_ID 별로 직원 수가 몇명있는지 확인해주세요.
   [ 힌트 : COUNT ] 

[출력결과] (총 19행)  *출력 순서 상관 x 
JOB_ID    직원수    <-- 이건 컬럼이름
FI_MGR	    1
HR_REP	    1
  ... 
SA_REP	    30
SH_CLERK    20
  ...
ST_MAN      5
*/ 
SELECT JOB_ID , COUNT(*) AS 직원수
  FROM EMPLOYEES
 GROUP BY JOB_ID;



/* 
2. 위 1번 문제에 대해서 HAVING 을 활용하여 직원수가 10명이상인 대상만 출력해주세요.
[출력결과] (총 3행)  *출력 순서 상관 x 
JOB_ID    직원수    <-- 이건 컬럼이름
SA_REP	    30
SH_CLERK	20
ST_CLERK	20
*/ 

SELECT JOB_ID , COUNT(*) AS 직원수
  FROM EMPLOYEES
 GROUP BY JOB_ID
HAVING COUNT(*) >= 10;


/* 
3. DEPARTMENTS 테이블에서 MANAGER_ID 가 NULL이 아니면서 LOCATION_ID 가 1700인 대상에 대해 
   DEPARTMENT_NAME 컬럼을 기준으로 오름차순 정렬해서 모든 컬럼을 출력해주세요. 
   [ 힌트 : ORDER BY ] 

[출력결과] 
DEPARTMENT_ID  DEPARTMENT_NAME   MANAGER_ID   LOCATION_ID 
    110	        Accounting	        205	        1700
    10	        Administration	    200	        1700
    90	        Executive	        100	        1700
    100	        Finance	            108	        1700
    30	        Purchasing	        114	        1700
*/ 

SELECT *
  FROM DEPARTMENTS
WHERE MANAGER_ID IS NOT NULL
  AND LOCATION_ID = 1700
ORDER BY DEPARTMENT_NAME;



/* 
4. 직원들에게 SALARY를 제공해야합니다.
   직원들은 모두 JOB_ID 의 값을 하나씩 가지고 있는데, 각각의 JOB_ID 별로 얼마의 SALARY 를 책정을 해야하는지 
   아래와 같이 출력을 해주세요. 

[출력결과] (총 19행) *출력 결과 상관 없음

JOB_ID    책정연봉합계    <-- 이건 컬럼이름
IT_PROG	    28800
AC_MGR	    12008
  ...        ...
ST_CLERK	55700
HR_REP	     6500
*/ 

SELECT JOB_ID , SUM(SALARY) AS 책정연봉합계
  FROM EMPLOYEES
 GROUP BY JOB_ID;



/* 
5. 위 4번 문항 결과에 대해서 책정연봉합계가 50000 이상인 대상만 출력을 하되 , 
   책정연봉합계 컬럼을 기준으로 내림차순 정렬하여 보여주세요. 

[출력결과] (총 4행) *출력 결과 상관 없음

JOB_ID    책정연봉합계    <-- 이건 컬럼이름
SA_REP	    250500
SH_CLERK	 64300
SA_MAN	     61000
ST_CLERK	 55700
*/ 
SELECT JOB_ID , SUM(SALARY) AS 책정연봉합계
  FROM EMPLOYEES
 GROUP BY JOB_ID
HAVING SUM(SALARY) >= 50000
ORDER BY 책정연봉합계 DESC;
   




--------------------------------------------------------
--1번 답) 
SELECT JOB_ID , COUNT(*) AS 직원수
  FROM EMPLOYEES 
 GROUP BY JOB_ID ; 
 
--2번 답)
SELECT JOB_ID , COUNT(*) AS 직원수
  FROM EMPLOYEES 
 GROUP BY JOB_ID 
 HAVING COUNT(*) >= 10; 

--3번 답) 
SELECT * 
  FROM DEPARTMENTS 
 WHERE MANAGER_ID IS NOT NULL 
   AND LOCATION_ID = 1700
 ORDER BY DEPARTMENT_NAME; 

--4번 답) 
SELECT JOB_ID , SUM(SALARY) AS 책정연봉합계
  FROM EMPLOYEES
 GROUP BY JOB_ID ;
 
--5번 답)
SELECT JOB_ID , SUM(SALARY) AS 책정연봉합계
  FROM EMPLOYEES
 GROUP BY JOB_ID 
HAVING SUM(SALARY) >= 50000 
ORDER BY 책정연봉합계 DESC;
