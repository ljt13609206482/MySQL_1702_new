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
SELECT
  lcase('H'),
  upper('h'),
  ucase('h');


SELECT *
FROM db_1702.csdn
WHERE username = substr(email, 1, locate('@', email) - 1);

-- ?
SELECT *
FROM db_1702.csdn
WHERE email REGEXP '@qq.com' AND trim(password) = replace(email, '@qq.com', '');


INSERT INTO db_1702.csdn VALUE (NULL, 'tester', '123', '123@qq.com');

SELECT *
FROM db_1702.csdn
WHERE id = 31521;

SELECT
  curdate(),
  current_date;
SELECT
  current_time,
  curtime();
SELECT now();

SELECT date_add(now(), INTERVAL 31 DAY); -- interval 间隔
SELECT date_sub(now(), INTERVAL 30 DAY); -- interval 间隔
SELECT dayofweek(now());
SELECT dayofyear(now());
SELECT dayname(now());
SELECT monthname(now());
SELECT quarter(NOW()); -- quarter 四 1 quarters to 12
SELECT week(now());

SELECT *
FROM db_1702.csdn
WHERE email = '123@qq.com';

CREATE INDEX idx_email
  ON db_1702.csdn (email);

ALTER TABLE db_1702.csdn
MODIFY COLUMN email VARCHAR(191);

DESC db_1702.csdn;

-- 25马赫



