/* 
이전에 배운 내용을 복습해보기 위한 예시 문제입니다. 
문제 범위 [ FROM 전체 ] 

HR 계정이 가지고 있는 테이블을 이용해 문제를 풀이해주세요. 
(접속선택 창이 뜨면 hr 로 선택) 
*/ 




/* 
1. EMPLOYEES 테이블과 DEPARTMENTS 테이블에서 동시에 데이터를 가져오기 위해 조인을 하려고 합니다. 
   우리가 가져오고자 하는 데이터는 아래와 같습니다.

   [ EMPLOYEES   => EMPLOYEE_ID , FIRST_NAME , DEPARTMENT_ID ] 
   [ DEPARTMENTS => DEPARTMENT_NAME , LOCATION_ID ] 
   
   단, 직원의 연봉(SALARY)이 4500 ~ 6000 사이인 대상만 출력해주세요.    
   *힌트 : EMPLOYEES 와 DEPARTMENTS 테이블은 DEPARTMENT_ID 라는 컬럼으로 서로 관계를 가지고 있습니다. 
   
[출력결과] (총 5행)  *출력 순서 상관 x 

EMPLOYEE_ID    FIRST_NAME   DEPARTMENT_ID   DEPARTMENT_NAME    LOCATION_ID   
    202	          Pat	        20	          Marketing	          1800	         
    124	          Kevin	        50	          Shipping	          1500	          
    105	          David	        60	          IT	              1400	          
    104	          Bruce	        60	          IT	              1400	          
    106	          Valli	        60	          IT	              1400	    
*/ 
SELECT A.EMPLOYEE_ID
     , A. FIRST_NAME
     , A.DEPARTMENT_ID
     , B. DEPARTMENT_NAME
     , B.LOCATION_ID
  FROM EMPLOYEES A
     , DEPARTMENTS B
 WHERE A.DEPARTMENT_ID = B.DEPARTMENT_ID
   AND SALARY BETWEEN 4500 AND 6000;
   
  



/* 
2. 위에서 작성한 쿼리를 ANSI 방식의 조인으로 변환해보세요.
   [ 힌트 : 오라클에서 (+) 기호가 따로 없으면 INNER JOIN 입니다. ] 

[출력결과] (총 5행)  *출력 순서 상관 x 

EMPLOYEE_ID    FIRST_NAME   DEPARTMENT_ID   DEPARTMENT_NAME    LOCATION_ID   
    202	          Pat	        20	          Marketing	          1800	         
    124	          Kevin	        50	          Shipping	          1500	          
    105	          David	        60	          IT	              1400	          
    104	          Bruce	        60	          IT	              1400	          
    106	          Valli	        60	          IT	              1400	          
*/ 
SELECT A.EMPLOYEE_ID
     , A. FIRST_NAME
     , A.DEPARTMENT_ID
     , B. DEPARTMENT_NAME
     , B.LOCATION_ID
  FROM EMPLOYEES A INNER JOIN DEPARTMENTS B
    ON (A.DEPARTMENT_ID =B.DEPARTMENT_ID)
 WHERE SALARY BETWEEN 4500 AND 6000;



 
/* 
3. DEPARTMENTS 테이블에서 LOCATION_ID 가 1700인 부서의 정보를 출력하되, MANAGER_ID (관리자ID) 의 이름을 함께 출력하고자 합니다.  
   즉, 우리가 가져오고 싶은 컬럼은 다음과 같습니다. 
   
   [DEPARTMENTS => DEPARTMENT_ID , DEPARTMENT_NAME , MANAGER_ID ] 
   [EMPLOYEES   => EMPLOYEE_ID , FIRST_NAME , LAST_NAME ] 

   단, DEPARTMENTS 테이블의 MANAGER_ID 가 NULL인 데이터도 출력되도록 해주세요.

   힌트  : 한 테이블에만 데이터가 있고, 다른 테이블에는 없는 데이터를 가져오기 위해 OUTER JOIN 을 활용할 수 있습니다. 
   힌트2 : DEPARTMENTS 테이블의 MANAGER_ID 와 EMPLOYEES 테이블의 EMPLOYEE_ID 컬럼은 서로 관계를 가지고 있습니다. 
     
[출력 결과] (총 21행) *출력 순서 상관 x 

DEPARTMENT_ID   DEPARTMENT_NAME   MANAGER_ID   FIRST_NAME   LAST_NAME 
    90	            Executive	     100	    Steven	    King
    100	            Finance	         108	    Nancy	    Greenberg
    30	            Purchasing	     114	    Den	        Raphaely
    ...             ...              ...        ...         ... 
    130         	Corporate Tax    null       null        null 			
    120	            Treasury		 null       null        null 

*/ 
SELECT A.DEPARTMENT_ID
     , A.DEPARTMENT_NAME
     , A.MANAGER_ID
     , B.EMPLOYEE_ID
     , B.FIRST_NAME
     , B.LAST_NAME
  FROM DEPARTMENTS A 
     , EMPLOYEES B
 WHERE A.MANAGER_ID = B.EMPLOYEE_ID(+)
   AND A.LOCATION_ID = 1700;




/* 
4. 3번에서 작성한 쿼리를 ANSI방식의 조인문법으로 바꾸어주세요. 

[출력 결과] (총 21행) *출력 순서 상관 x 

DEPARTMENT_ID   DEPARTMENT_NAME   MANAGER_ID   FIRST_NAME   LAST_NAME 
    90	            Executive	     100	    Steven	    King
    100	            Finance	         108	    Nancy	    Greenberg
    30	            Purchasing	     114	    Den	        Raphaely
    ...             ...              ...        ...         ... 
    130         	Corporate Tax    null       null        null 			
    120	            Treasury		 null       null        null 
*/ 
SELECT A.DEPARTMENT_ID
     , A.DEPARTMENT_NAME
     , A.MANAGER_ID
     , B.EMPLOYEE_ID
     , B.FIRST_NAME
     , B.LAST_NAME
  FROM DEPARTMENTS A LEFT OUTER JOIN EMPLOYEES B
    ON (A.MANAGER_ID = B.EMPLOYEE_ID)
 WHERE A.LOCATION_ID = 1700;




/* 
5(심화). 테이블 3개를 한번에 조인해보려고 합니다. 
        우리가 데이터를 한번에 가져오고자 하는 테이블과 컬럼은 아래와 같습니다. 
        [ DEPARTMENTS  => DEPARTMENT_ID , DEPARTMENT_NAME , LOCATION_ID ] 
        [ LOCATIONS    => CITY , COUNTRY_ID ]
        [ COUNTRIES   => COUNTRY_NAME ] 

        테이블 DEPARTMENTS 와 LOCATIONS 끼리는 LOCATION_ID 컬럼으로 서로 의미가 연결되어있습니다.
        테이블 LOCATIONS 와 COUNTRY_ID 는 COUNTRY_ID 컬럼으로 서로 의미가 연결되어있습니다. 

        INNER JOIN 을 통해 세 테이블이 모두 조인조건을 만족하도록 데이터를 출력해주세요. 
        단, DEPARTMENT_ID 가 10,50,60 인 데이터만 출력해주세요. 

[출력결과 (총 3행) *출력 결과 상관 X 
DEPARTMENT_ID   DEPARTMENT_NAME   LOCATION_ID    CITY                COUNTRY_ID     COUNTRY_NAME
     60	         IT	                 1400	     Southlake	            US	        United States of America
     50	         Shipping	         1500	     South San Francisco	US	        United States of America
     10	         Administration	     1700	     Seattle	            US	        United States of America
*/ 

SELECT A.DEPARTMENT_ID
     , A.DEPARTMENT_NAME
     , A.LOCATION_ID
     , B.CITY
     , B.COUNTRY_ID
     , C.COUNTRY_NAME     
  FROM DEPARTMENTS A INNER JOIN LOCATIONS B  ON (A.LOCATION_ID  = B.LOCATION_ID )
                     INNER JOIN COUNTRIES C ON (B.COUNTRY_ID  = C.COUNTRY_ID )
 WHERE A.DEPARTMENT_ID IN(10, 50, 60);









--------------------------------------------------------
--1번 답) 
SELECT A.EMPLOYEE_ID 
     , A.FIRST_NAME 
     , A.DEPARTMENT_ID
     , B.DEPARTMENT_NAME 
     , B.LOCATION_ID
  FROM EMPLOYEES A
     , DEPARTMENTS B 
 WHERE A.DEPARTMENT_ID = B.DEPARTMENT_ID
   AND A.SALARY BETWEEN 4500 AND 6000 ;


--2번 답) 
SELECT A.EMPLOYEE_ID 
     , A.FIRST_NAME 
     , A.DEPARTMENT_ID
     , B.DEPARTMENT_NAME 
     , B.LOCATION_ID
  FROM EMPLOYEES A INNER JOIN DEPARTMENTS B ON ( A.DEPARTMENT_ID = B.DEPARTMENT_ID ) 
 WHERE A.SALARY BETWEEN 4500 AND 6000 ;
 
 
--3번 답) 
SELECT A.DEPARTMENT_ID 
     , A.DEPARTMENT_NAME 
     , A.MANAGER_ID 
     , B.FIRST_NAME 
     , B.LAST_NAME 
  FROM DEPARTMENTS A 
     , EMPLOYEES B 
 WHERE A.MANAGER_ID = B.EMPLOYEE_ID(+)
   AND A.LOCATION_ID = 1700 ;


--4번 답) 
SELECT A.DEPARTMENT_ID 
     , A.DEPARTMENT_NAME 
     , A.MANAGER_ID 
     , B.FIRST_NAME 
     , B.LAST_NAME 
  FROM DEPARTMENTS A LEFT OUTER JOIN EMPLOYEES B ON (A.MANAGER_ID = B.EMPLOYEE_ID) 
 WHERE A.LOCATION_ID = 1700 ;


--5번 답) 
SELECT A.DEPARTMENT_ID 
     , A.DEPARTMENT_NAME 
     , A.LOCATION_ID 
     , B.CITY 
     , B.COUNTRY_ID
     , C.COUNTRY_NAME
  FROM DEPARTMENTS A 
     , LOCATIONS B
     , COUNTRIES C 
 WHERE A.LOCATION_ID = B.LOCATION_ID 
   AND B.COUNTRY_ID = C.COUNTRY_ID 
   AND A.DEPARTMENT_ID IN(10 , 50 , 60);