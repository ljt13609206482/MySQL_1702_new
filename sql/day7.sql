SHOW DATABASES;

SELECT
  e.ENAME,
  d.DNAME
FROM scott.emp e INNER JOIN scott.dept d
  -- ON e.DEPTNO = d.DEPTNO;
  USING (DEPTNO);

-- id
-- xxxId

DROP TABLE IF EXISTS scott.emp_test;
CREATE TABLE scott.emp_test
  SELECT ENAME
  FROM scott.emp;

SELECT *
FROM scott.emp_test;

DELETE FROM scott.emp_test;

INSERT INTO scott.emp_test (ENAME)
  SELECT ENAME
  FROM scott.emp;

DROP DATABASE scott;

SELECT
  e.*,
  d.dname
FROM scott.emp e INNER JOIN scott.dept d
    ON e.DEPTNO = d.DEPTNO -- ON 联合条件
WHERE d.DNAME = 'research';

SELECT
  e.*,
  d.dname
FROM scott.emp e INNER JOIN scott.dept d
WHERE e.DEPTNO = d.DEPTNO AND d.DNAME = 'research'; -- WHERE 行检索

CREATE VIEW scott.v_emp
AS
  SELECT
    JOB,
    HIREDATE,
    SAL
  FROM scott.emp
  WHERE DEPTNO = 20;

USE scott;
SHOW TABLES;

DROP VIEW v_emp;

SELECT *
FROM scott.v_emp;

UPDATE scott.emp
SET HIREDATE = '1981-5-1'
WHERE HIREDATE = '1981-4-2';

UPDATE scott.v_emp
SET HIREDATE = '1981-6-1'
WHERE HIREDATE = '1981-5-1';

CREATE VIEW v_emp_dept
AS
  SELECT
    e.ename,
    d.dname
  FROM scott.emp e LEFT OUTER JOIN scott.dept d
      ON e.DEPTNO = d.DEPTNO;

DROP VIEW v_emp_dept;

SELECT *
FROM scott.v_emp_dept;

UPDATE scott.v_emp_dept
SET scott.v_emp_dept.ename = 'Tom';