SHOW FULL COLUMNS FROM db_1702.student;

# DML INSERT UPDATE DELETE

SELECT *
FROM db_1702.student;

INSERT INTO db_1702.student
VALUES (NULL, '002', 'tester', 'I\'m...', 'F', 22, 1.7, 12.34, '1998-1-2', '2017-5-18 9:01:02');

INSERT INTO db_1702.student (name)
VALUES ('Tom');

INSERT INTO db_1702.student (name)
VALUES ('N1'), ('N2'), ('N3');

SHOW CREATE TABLE db_1702.student; -- 显示建表语句

SELECT *
FROM db_1702.student;

UPDATE db_1702.student
SET gender = '女';

UPDATE db_1702.student
SET height = 1.6
WHERE id = 10001;

UPDATE db_1702.student
SET height = 1.7, name = '李四'
WHERE id = 10001;

DELETE FROM db_1702.student
WHERE name = BINARY 'TESTER'; -- binary

DELETE FROM db_1702.student
WHERE sno IS NULL;

DELETE FROM db_1702.student;

DELETE FROM db_1702.student
WHERE age >= 20; -- [20, 22]

SHOW CREATE TABLE db_1702.student;

# collate = utf8_unicode_cs CI Case Insensitive 大小写不敏感 CS

DROP TABLE IF EXISTS db_1702.case_test;
CREATE TABLE db_1702.case_test (
  col VARCHAR(255)
)
  COLLATE = utf8_bin; -- binary

INSERT INTO db_1702.case_test VALUES ('test');

SELECT *
FROM db_1702.case_test;

DELETE FROM db_1702.case_test
WHERE col = 'test';

SELECT *
FROM db_1702.ip;

SHOW DATABASES;

USE db_1702;
SHOW TABLES;

SHOW TABLE STATUS FROM db_1702;

SHOW TABLE STATUS FROM db_1702
WHERE name = 'student';

SHOW FULL COLUMNS FROM db_1702.student;

SHOW FULL TABLES FROM db_1702;

SHOW VARIABLES LIKE 'char%';
SHOW VARIABLES LIKE 'coll%';

SHOW VARIABLES;

SHOW CREATE TABLE db_1702.student;

SELECT * -- 所有行，所有列
FROM db_1702.student;

SELECT
  min,
  geo
FROM db_1702.ip; -- 投影操作

SELECT count(DISTINCT geo)
FROM db_1702.ip;

SHOW DATABASES;

SHOW TABLE STATUS FROM scott;

SHOW FULL COLUMNS FROM scott.emp;
SHOW FULL COLUMNS FROM scott.dept;
SHOW FULL COLUMNS FROM scott.salgrade;

SELECT *
FROM scott.emp;

SELECT *
FROM scott.dept;

SELECT *
FROM scott.salgrade;

SELECT
  ENAME,
  HIREDATE,
  DEPTNO
FROM scott.emp;

SELECT DISTINCT JOB
FROM scott.emp;

SELECT *
FROM scott.emp
WHERE JOB = 'salesman';

SELECT *
FROM scott.emp
WHERE HIREDATE <> '1987-01-01';

SELECT *
FROM scott.emp
WHERE SAL > 1000 AND JOB = 'salesman';

SELECT *
FROM scott.emp
ORDER BY HIREDATE DESC; -- asc ascend 上升 desc descend 下降

SELECT *
FROM scott.emp
ORDER BY sal DESC; -- asc ascend 上升 desc descend 下降

SELECT DEPTNO
FROM scott.emp
ORDER BY 1 DESC, sal; -- asc ascend 上升 desc descend 下降