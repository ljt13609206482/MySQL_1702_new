SHOW DATABASES;

SELECT *
FROM scott.emp
WHERE COMM != 300; -- wrong

SELECT *
FROM scott.emp
WHERE NOT (COMM <=> 300); -- correct
-- <=>

SELECT *
FROM scott.emp
WHERE COMM IS NOT NULL;

SELECT *
FROM scott.emp
WHERE NOT (COMM <=> NULL); -- COMM <=> NULL 1


SELECT *
FROM scott.emp; -- 15

SELECT *
FROM scott.dept; -- 4

SELECT
  ENAME,
  DNAME
FROM scott.emp
  INNER JOIN scott.dept; -- join 60 = 15 * 4

SELECT
  ENAME,
  LOC
FROM scott.emp
  INNER JOIN scott.dept
  -- 内连接
    ON scott.emp.DEPTNO = scott.dept.DEPTNO; -- 连接条件 FK ?= PK

SHOW FULL COLUMNS FROM scott.emp;
SHOW FULL COLUMNS FROM scott.dept;

SELECT *
FROM scott.emp;

UPDATE scott.emp
SET sal = 10
WHERE EMPNO = 1111;

SELECT *
FROM scott.dept;

SELECT
  DISTINCT
  d.DEPTNO,
  -- ambiguous 模棱两可的\ [æm'bɪgjʊəs]
  d.DNAME -- d. 提高查询效率
FROM scott.dept d
  INNER JOIN scott.emp e
    ON e.DEPTNO = d.DEPTNO;

# 返回员工和所属经理的姓名
SELECT
  e1.ENAME 员工姓名,
  e2.ENAME 经理姓名
FROM scott.emp e1 INNER JOIN scott.emp e2 -- 自连接
    ON e1.MGR = e2.EMPNO;

-- left outer join

SELECT
  e.ENAME,
  d.DNAME
FROM scott.dept d RIGHT OUTER JOIN scott.emp e -- 左外联接
    ON e.DEPTNO = d.DEPTNO

UNION -- 并集 自动去重

SELECT
  e.ENAME,
  d.DNAME
FROM scott.dept d LEFT OUTER JOIN scott.emp e -- 左外联接
    ON e.DEPTNO = d.DEPTNO;
/*
SELECT s.name, d.tel
from student s INNER JOIN department d
ON s.departmentId = d.id;
*/

-- 学生选了哪些课？
-- 课有哪些学生选？
-- 所有学生获得的总学分？ - student course student_course
/*
  --------
  Tom | 10
  ----+---
  Jer |  5
*/