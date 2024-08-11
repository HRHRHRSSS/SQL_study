-- SELECT...FROM...WHERE
-- 특정 조건의 데이터만 조회

-- WHERE
-- 조건에 부합하는 대상을 SELECT 함

SELECT {컬럼} FROM {테이블} WHERE {조건식};
-- EXAMPLE
SELECT * FROM usertbl WHERE name='김경호';

/*[관계연산자]
- OR 연산자 : '~또는'
- AND 연산자 : '~면서'
- 조건 연산자 (=, <, >, <=, >=, != 등)
- 관계 연산자 (NOT, AND, OR 등)
*/

SELECT userId, name FROM usertbl WHERE birthYear >= 1970 AND height > 180;

-- [BETWEEN...AND]
-- 데이터가 숫자로 구성되어 있으며 연속적인 값을 조회할때 사용합니다.

SELECT * FROM usertbl WHERE height BETWEEN 180 AND 190;

-- IN(...)
-- 여러 값의 조건 안에서 조회할 때 사용합니다
SELECT * FROM usertbl WHERE addr IN ('서울', '경기', '경남');

-- LIKE
/* 문자열의 내용 중 부분별 내용을 검색합니다.
% 는 무엇이든 허용합니다
_ 한 글자와 매치*/

SELECT * FROM usertbl WHERE name LIKE '%경호'; -- 김경호, 남궁경호 등
SELECT * FROM usertbl WHERE name LIKE '_경호'; -- '○경호' 만 조회
SELECT * FROM usertbl WHERE name LIKE '%경%'; -- '경'자가 들어간 모든 이름


/*수정필요*/

