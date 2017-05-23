SHOW DATABASES;
USE db_1702;
SHOW TABLES;

SHOW FULL COLUMNS FROM db_1702.student;
SHOW FULL COLUMNS FROM db_1702.course;
SHOW FULL COLUMNS FROM db_1702.student_course;

SELECT *
FROM db_1702.student;

SELECT *
FROM db_1702.course;

SELECT *
FROM db_1702.student_course;

TRUNCATE TABLE db_1702.student_course;

DELETE FROM db_1702.course
WHERE id > 2;

INSERT INTO db_1702.student
VALUES (NULL, '20170001', 'Tom', 'asdf', NULL, 19, 1.7, 1234567.891, '1999-5-1', '2017-5-1 1:39:01');

-- 选课表 学生<->课程
DROP TABLE IF EXISTS db_1702.student_course;
CREATE TABLE db_1702.student_course (
  id        INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  studentId INT COMMENT '学生 ID',
  courseId  INT COMMENT '课程 ID',
  score     INT COMMENT '考试成绩'
  -- CONSTRAINT fk_sutdent_course_studentId FOREIGN KEY (studentId) REFERENCES db_1702.student (id)
);

-- alter 改变\ ['ɔːltə\;\ 'ɒl-]    DDL
ALTER TABLE db_1702.student_course
  ADD CONSTRAINT
  fk_student_course_studentId
FOREIGN KEY (studentId)
REFERENCES db_1702.student (id)
  ON DELETE SET NULL; -- a href hyper reference  cascade 级联 Cascading Style Sheet

ALTER TABLE db_1702.student_course
  ADD CONSTRAINT
  fk_student_course_courseId
FOREIGN KEY (courseId)
REFERENCES db_1702.course (id);

SHOW FULL COLUMNS FROM db_1702.student_course;

INSERT INTO db_1702.student_course
VALUES (NULL, 12345, 10, NULL);

INSERT INTO db_1702.student_course
VALUES (NULL, 12345, 11, NULL);

INSERT INTO db_1702.student_course
VALUES (NULL, 1, 3, NULL);

INSERT INTO db_1702.student_course
VALUES (NULL, 3, 2, NULL);

SELECT *
FROM student_course;


SHOW COLUMNS FROM db_1702.student;
SHOW COLUMNS FROM db_1702.student_course;

SELECT *
FROM db_1702.course;

DELETE FROM db_1702.course
WHERE id = 10;

DELETE FROM db_1702.student_course;

SELECT *
FROM db_1702.student;

DELETE FROM db_1702.student;

# DDL Data Definition Language
# CREATE ...
# DROP ...
# ALTER ...

# DML INSERT UPDATE DELETE

DROP TABLE IF EXISTS db_1702.test;
CREATE TABLE db_1702.test (
  id  INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  col VARCHAR(255) COMMENT 'test column'
);

ALTER TABLE db_1702.test_new
  RENAME db_1702.test;

SHOW TABLES;

ALTER TABLE db_1702.test
  ADD COLUMN col1 VARCHAR(255);

ALTER TABLE db_1702.test
  ADD COLUMN col2 VARCHAR(255)
  AFTER id;

ALTER TABLE db_1702.test
  ADD COLUMN col3 VARCHAR(255)
  FIRST;

ALTER TABLE db_1702.test
  DROP COLUMN col3;

ALTER TABLE db_1702.test
  MODIFY COLUMN col INT FIRST;

ALTER TABLE db_1702.test
  MODIFY COLUMN id INT;

ALTER TABLE db_1702.test
  DROP PRIMARY KEY;

ALTER TABLE db_1702.test
  ADD CONSTRAINT pk_test_id PRIMARY KEY (id);

ALTER TABLE db_1702.test
  MODIFY COLUMN id INT AUTO_INCREMENT;

ALTER TABLE db_1702.test
  CHANGE col colNew VARCHAR(255)
  AFTER id;

SHOW FULL COLUMNS FROM db_1702.test;

SHOW FULL COLUMNS FROM db_1702.student_course;

ALTER TABLE db_1702.student_course
  DROP FOREIGN KEY fk_student_course_studentId;

ALTER TABLE db_1702.student_course
    ENABLE KEYS;

ALTER TABLE db_1702.student_course
  ADD CONSTRAINT
  fk_student_course_studentId
FOREIGN KEY (studentId)
REFERENCES db_1702.student (id);


SELECT *
FROM db_1702.student;
SELECT *
FROM db_1702.course;

INSERT INTO db_1702.student_course VALUES (NULL, 1, 10, NULL);

SELECT *
FROM db_1702.student_course;

