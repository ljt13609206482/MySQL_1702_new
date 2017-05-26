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


SELECT substr(email, locate('@', email) + 1) -- subString() indexOf()
FROM db_1702.csdn
GROUP BY substr(email, locate('@', email) + 1)
ORDER BY count(substr(email, locate('@', email) + 1)) DESC
LIMIT 10;


SELECT
  job,
  deptno,
  max(sal)
FROM scott.emp
GROUP BY JOB, DEPTNO;