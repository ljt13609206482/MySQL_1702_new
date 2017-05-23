DROP DATABASE IF EXISTS db_1702;
CREATE DATABASE db_1702;

SELECT *
FROM db_1702.student;

SET FOREIGN_KEY_CHECKS = 1;

DROP TABLE IF EXISTS db_1702.student;
CREATE TABLE db_1702.student (
  id     INT     AUTO_INCREMENT PRIMARY KEY -- auto increment 增量\ ['ɪŋkrɪm\(ə\)nt]
  COMMENT 'ID PK', -- id identified
  sno    VARCHAR(10)
  COMMENT '学号',
  name   VARCHAR(255)
  COMMENT '姓名', -- 255
  intro  TEXT COMMENT '简介',
  gender CHAR(2) DEFAULT '男'
  COMMENT '性别',
  age    INT UNSIGNED
  COMMENT '年龄',
  height DOUBLE(3, 2) COMMENT '身高',
  price  DECIMAL(10, 3) COMMENT '价格', -- 1234.56
  dob    DATE COMMENT '出生日期', -- date of birth
  time   DATETIME COMMENT '时间'
)COMMENT '学生表';

ALTER TABLE db_1702.student AUTO_INCREMENT = 10000;

INSERT INTO db_1702.student
VALUES (NULL, '20170002', 'Jerry', 'asdf', '女', 19, 1.7, 1234567.891, '1999-5-1', '2017-5-1 1:39:01');

INSERT INTO db_1702.student
VALUES (NULL, '20170002', 'Jerry', 'asdf', NULL, 18, 1.7, 1234567.891, '1999-5-1', '2017-5-1 1:39:01');

INSERT INTO db_1702.student
VALUES (NULL, '20170001', NULL, 'asdf', NULL, NULL, 1.7, 1234567.891, '1999-5-1', '2017-5-1 1:39:01');

INSERT INTO db_1702.student (name, age)
VALUES ('Zhangsan', 20);

SELECT *
FROM db_1702.student;

DELETE FROM db_1702.student
WHERE id = 4 OR id = 5;

DELETE FROM db_1702.student;

TRUNCATE TABLE db_1702.student; -- truncate 清空

-- 课程表 课程名 学分 ...
DROP TABLE IF EXISTS db_1702.course;
CREATE TABLE db_1702.course (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID Pk',
  title  VARCHAR(191) UNIQUE
  COMMENT '课程名',
  credit INT COMMENT '学分'
);

-- 选课表 学生<->课程
DROP TABLE IF EXISTS db_1702.student_course;
CREATE TABLE db_1702.student_course (
  id        INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  studentId INT COMMENT '学生 ID',
  courseId  INT COMMENT '课程 ID',
  score     INT COMMENT '考试成绩'
  --  PRIMARY KEY (studentId, courseId) -- 联合主键
);

SELECT *
FROM db_1702.student;

INSERT INTO db_1702.course VALUES (NULL, 'Java SE', 4);
INSERT INTO db_1702.course VALUES (NULL, 'MySQL', 3);
INSERT INTO db_1702.course VALUES (NULL, NULL, 3);
INSERT INTO db_1702.course VALUES (NULL, NULL, 3);
INSERT INTO db_1702.course VALUES (NULL, NULL, 3);

SELECT *
FROM db_1702.course;

INSERT INTO db_1702.student_course VALUES (NULL, 2, 1, NULL);
INSERT INTO db_1702.student_course VALUES (NULL, 2, 2, NULL);
INSERT INTO db_1702.student_course VALUES (NULL, 1, 2, NULL);

SELECT *
FROM db_1702.student_course;

UPDATE db_1702.student_course
SET db_1702.student_course.score = 50
WHERE id = 1;
-- WHERE db_1702.student_course.courseId = 2 AND db_1702.student_course.studentId = 1;

SHOW FULL COLUMNS FROM db_1702.student_course;

SHOW VARIABLES LIKE 'char%';
