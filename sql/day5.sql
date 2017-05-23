SELECT *
FROM scott.emp
LIMIT 3, 0; -- limit 限制\ ['lɪmɪt]

SELECT *
FROM scott.emp
LIMIT 3, 4;

SELECT *
FROM scott.emp
LIMIT 5 OFFSET 0; -- offset 偏移,\ 抵消,\ 位移

SELECT *
FROM scott.emp
ORDER BY ENAME
LIMIT 3 OFFSET 0;

SELECT *
FROM scott.emp
WHERE ENAME LIKE 'a%'; -- like 像 模糊匹配

SELECT *
FROM scott.emp
WHERE ENAME NOT LIKE '%\_%' ESCAPE '\\';

INSERT INTO scott.emp (EMPNO, ENAME) VALUES (2222, 'A_ADAMS');

SELECT *
FROM scott.emp
WHERE ENAME REGEXP '[^a-z]+'; -- 包含 a-z 之外的至少一个字符

SELECT *
FROM scott.emp
WHERE HIREDATE NOT RLIKE '';

SELECT *
FROM scott.emp
WHERE DEPTNO NOT IN (10, 20);

SELECT *
FROM scott.emp
WHERE JOB NOT IN ('manager', 'clerk');

SELECT *
FROM scott.emp
-- WHERE sal >= 2000 AND sal <=3000;
WHERE sal NOT BETWEEN 2000 AND 3000; -- [min, max]  ,min) (max,

SELECT
  ENAME '姓名',
  SAL   '基本工资' -- alias 别名\ [ˈeɪliəs]
FROM scott.emp;

SELECT e.ENAME
FROM scott.emp AS e;


SELECT *
FROM scott.emp
WHERE DEPTNO IS NOT NULL;

SELECT *
FROM scott.emp
WHERE COMM IS NULL;

UPDATE scott.emp
SET JOB = NULL
WHERE ENAME = 'jones';

SELECT
  ENAME,
  sal + ifnull(COMM, 0)
FROM scott.emp;




