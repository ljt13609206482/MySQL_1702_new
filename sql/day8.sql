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
