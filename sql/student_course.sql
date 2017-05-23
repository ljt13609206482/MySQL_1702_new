DROP DATABASE IF EXISTS db_sc;
CREATE DATABASE db_sc;

# 学生表
DROP TABLE IF EXISTS db_sc.student;
CREATE TABLE db_sc.student (
  id           INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  name         VARCHAR(255) COMMENT '姓名',
  age          INT COMMENT '年龄',
  gender       VARCHAR(255) COMMENT '性别',
  dob          DATE COMMENT '出生日期',
  departmentId INT COMMENT 'FK 系 ID'
)
  COMMENT '学生表';

# 系别表
DROP TABLE IF EXISTS db_sc.student;
CREATE TABLE db_sc.student (
  id    INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  title VARCHAR(255) COMMENT '系名称',
  tel   VARCHAR(255) COMMENT '电话'
)
  COMMENT '系别表';

# 课程表
DROP TABLE IF EXISTS db_sc.student;
CREATE TABLE db_sc.student (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  title  VARCHAR(255) COMMENT '课程名称',
  credit INT COMMENT '学分'
)
  COMMENT '课程表';

# 选课表
DROP TABLE IF EXISTS db_sc.student;
CREATE TABLE db_sc.student (
  id           INT AUTO_INCREMENT PRIMARY KEY
  COMMENT '',
  studentId    INT COMMENT 'FK 学生 ID',
  departmentId INT COMMENT 'FK 系 ID',
  score        INT COMMENT '考试成绩'
)
  COMMENT '选课表';


-- 学生选了哪些课？
-- 课有哪些学生选？
-- 所有学生获得的总学分？ - student course student_course
/*
  ----------
  Tom   | 10
  ------+---
  Jerry |  5
*/