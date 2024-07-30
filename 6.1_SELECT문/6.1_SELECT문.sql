-- SELECT...FROM
-- 어떤 테이블로부터(FROM) 선택(SELECT)하는 구문
-- 원하는 데이터를 가져와주는 가장 기본적인 구문
SELECT {컬럼} FROM {테이블} WHERE {조건}

-- 선택된 DB가 employees라면 다음 두 쿼리는 동일
SELECT * FROM employees; -- 테이블의 모든 행 선택 및 진입
SELECT * FROM employees.employees; -- DB안의 Table 선택 및 진입

-- employees 테이블 안의 특정 컬럼을 SELECT
SELECT last_name, first_name FROM employees;

-- 👩‍💻 주석(Remark)
-- MySQL은 '--' 이후부터 주석으로 처리됨!
-- 코드에 설명을 달거나 잠시 해당 부분의 실행을 막고싶을 때 사용
-- 주의할 점은 -- 뒤에 바로 붙여서 쓰면 안되고, 공백이 하나 있어야 함

-- 👩‍💻 여러 줄 주석은 /* */ 로 묶음
/* 블록 주석 다는 법!
SELECT first_name, last_name, gender
FROM employees;
*/

-- 📌 데이터베이스 개체의 이름 규칙
/* 
데이터베이스(=스키마) 개체의 이름을 '식별자(identifier)'라고 함.
데이터베이스 개체란 데이터베이스, 테이블, 인덱스, 열, 인덱스, 뷰, 트리거, 스토어드 프로시저 등과 같은 개체들을 의미.
MySQL에서 이러한 개체를 정의할 때는 몇 가지 규칙을 따라야 함!

  1. A-Z, a-z, 0-9, $, _ 사용가능 / 그러나 영문 대문자나 소문자 어떤것을 사용해도 소문자로 생성된다.
  2. 개체 이름은 최대 64자로 제한된다.
  3. 예약어를 사용하면 안 된다.
  4. 개체 이름은 원칙적으로 중간에 공백이 있으면 안되지만, 중간에 공백을 꼭 사용하려면 백틱으로 꼭 묶어줘야 한다.
      ex) CREATE TABLE My Table 가능
  5. 개체에 이름은 짧으면서도 알기 쉽게 주어야한다.
  6. Linux 에서는 데이터베이스 이름과 테이블 이름은 모두 소문자를 사용해야 한다.
*/
