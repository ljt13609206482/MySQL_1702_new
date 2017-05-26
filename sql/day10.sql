SELECT max(SAL)
FROM scott.emp;

SELECT
  JOB,
  max(sal)
FROM scott.emp
GROUP BY JOB; -- group 组


SELECT password
FROM db_1702.csdn
GROUP BY password
ORDER BY count(password) DESC
LIMIT 10 OFFSET 0;


SELECT *
FROM scott.emp;