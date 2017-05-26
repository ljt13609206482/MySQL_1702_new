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

SELECT
  deptno,
  count(*)
FROM scott.emp
GROUP BY DEPTNO
HAVING avg(sal) > 2000; -- 组检索 where 行检索

SELECT abs(-100);
SELECT hex(15);
SELECT ceiling(1.00000001);
SELECT floor(1.999999999999);
SELECT round(1.4999);
SELECT MOD(10, 1);
SELECT pi();
SELECT rand();
SELECT truncate(1234.567, -4);

SELECT ascii('a');
SELECT bit_length('asdf'); -- 1 byte = 8 bit
SELECT concat('hello', ', ', 'world', '!');
SELECT length('中文');
SELECT locate('e', 'hello');
SELECT lcase('H'), upper('h'), ucase('h');




