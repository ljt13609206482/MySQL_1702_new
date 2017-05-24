SELECT *
FROM scott.dept;

CREATE VIEW scott.v_emp_10
AS
  SELECT *
  FROM scott.emp
  WHERE DEPTNO = 10;

SHOW FULL TABLES IN scott
WHERE table_type LIKE 'view';

SHOW FULL TABLES IN scott;

DROP VIEW scott.v_emp_10;

DESC scott.dept; -- desc describe 描述\ [dɪ'skraɪb]
SHOW FULL COLUMNS FROM scott.dept;
SHOW TABLE STATUS FROM db_sc;
SHOW CREATE TABLE db_sc.student;

SHOW CREATE VIEW scott.v_emp_10;

SELECT *
FROM scott.v_emp_10
WHERE JOB = 'manager';

SELECT *
FROM scott.emp
WHERE DEPTNO = 10 AND JOB = 'manager';


CREATE OR REPLACE VIEW scott.v_emp_dept
AS
  SELECT
    e.ENAME,
    d.DNAME
  FROM scott.emp e LEFT OUTER JOIN scott.dept d
      ON e.DEPTNO = d.DEPTNO;

SELECT *
FROM scott.v_emp_dept;

UPDATE scott.v_emp_dept
SET scott.v_emp_dept.ENAME = 'scott'
WHERE scott.v_emp_dept.ENAME = 'scott new';

CREATE VIEW scott.v_max
AS
  SELECT max(sal) max_sal
  FROM scott.emp;

SELECT *
FROM scott.v_max;

UPDATE scott.v_max
SET max_sal = 6000;

CREATE VIEW scott.v_union
AS
  SELECT ename
  FROM scott.emp
  WHERE DEPTNO = 10

  UNION

  SELECT ename
  FROM scott.emp
  WHERE DEPTNO = 20;

SELECT *
FROM scott.v_union;

UPDATE scott.v_union
SET scott.v_union.ename = 'SCOTT'
WHERE scott.v_union.ename = 'scott';

-- 嵌套 sub-query
SELECT * -- 主查询
FROM scott.emp
WHERE SAL > (-- 子查询
  SELECT SAL
  FROM scott.emp
  WHERE ENAME = 'scott'
);

SELECT
  EMPNO,
  ENAME
FROM scott.emp AS e
WHERE sal > (
  SELECT AVG(sal)
  FROM scott.emp
  WHERE e.DEPTNO = e.DEPTNO
);

-- ------------------
/*
transaction 事务

SELECT ...

---------------------------------
UPDATE1 ...   ok    ok    X    X|
UPDATE2 ...   ok    X    ok    X|
---------------------------------

SELECT ...
*/

START TRANSACTION;
SELECT *
FROM scott.emp;
TRUNCATE TABLE scott.emp; --
DELETE FROM scott.emp;
ROLLBACK; -- roll back 回滚









