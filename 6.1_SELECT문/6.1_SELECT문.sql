-- SELECT...FROM
-- 어떤 테이블로부터(FROM) 선택(SELECT)하는 구문
-- 원하는 데이터를 가져와주는 가장 기본적인 구문
SELECT {컬럼} FROM {테이블} WHERE {조건}

-- 선택된 DB가 employees라면 다음 두 쿼리는 동일
SELECT * FROM employees; -- 테이블의 모든 행 선택 및 진입
SELECT * FROM employees.employees; -- DB안의 Table 선택 및 진입

-- employees 테이블 안의 특정 컬럼을 SELECT
SELECT last_name, first_name FROM employees;

-- 주석(Remark)
-- MySQL은 '--' 이후부터 주석으로 처리됨!
-- 코드에 설명을 달거나 잠시 해당 부분의 실행을 막고싶을 때 사용
-- 주의할 점은 -- 뒤에 바로 붙여서 쓰면 안되고, 공백이 하나 있어야 함

-- 여러 줄 주석은 /* */ 로 묶음
/* 블록 주석 다는 법!
SELECT first_name, last_name, gender
FROM employees;
*/

-- 데이터베이스 개체의 이름 규칙