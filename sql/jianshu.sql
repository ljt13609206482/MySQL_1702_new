# 核心功能
/*
5. 关注 follow
6. 专题 topic
7. 收藏 collection
8. 打赏 pay
*/

DROP DATABASE IF EXISTS db_jianshu;
CREATE DATABASE db_jianshu;

# 1. 用户 user
DROP TABLE IF EXISTS db_jianshu.user;
CREATE TABLE db_jianshu.user (
  id       INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  nick     VARCHAR(15)  NOT NULL UNIQUE
  COMMENT '昵称',
  mobile   VARCHAR(191) UNIQUE
  COMMENT '手机号',
  password VARCHAR(255) NOT NULL
  COMMENT '密码'
)
  COMMENT '用户表';


# 2. 文集 notebook
DROP TABLE IF EXISTS db_jianshu.notebook;
CREATE TABLE db_jianshu.notebook (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  title  VARCHAR(255) NOT NULL
  COMMENT '名称',
  userId INT COMMENT 'FK 用户 ID'
)
  COMMENT '文集表';


# 3. 文章 note
DROP TABLE IF EXISTS db_jianshu.note;
CREATE TABLE db_jianshu.note (
  id         INT      AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  content    TEXT NOT NULL
  COMMENT '内容',
  time       DATETIME DEFAULT now()
  COMMENT '时间',
  views      INT      DEFAULT 0
  COMMENT '阅读次数',
  likes      INT      DEFAULT 0
  COMMENT '喜欢次数',
  notebookId INT COMMENT 'FK 文集 ID'
)
  COMMENT '文章表';

# 4. 评论 comment
DROP TABLE IF EXISTS db_jianshu.comment;
CREATE TABLE db_jianshu.comment (
  id        INT      AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  content   TEXT NOT NULL
  COMMENT '内容',
  time      DATETIME DEFAULT now()
  COMMENT '时间',
  noteId    INT COMMENT 'FK 文章 ID',
  userId    INT COMMENT 'FK 用户 ID',
  commentId INT COMMENT 'FK 评论 ID'
)
  COMMENT '评论表';

# 外键
ALTER TABLE db_jianshu.notebook
ADD CONSTRAINT
notebook_fk_userId
FOREIGN KEY (userId)
REFERENCES db_jianshu.user (id);

ALTER TABLE db_jianshu.note
  ADD CONSTRAINT
  note_fk_notebookId
FOREIGN KEY (notebookId)
REFERENCES db_jianshu.notebook (id);


ALTER TABLE db_jianshu.comment
  ADD CONSTRAINT
  comment_fk_noteId
FOREIGN KEY (noteId)
REFERENCES db_jianshu.note (id);


ALTER TABLE db_jianshu.comment
  ADD CONSTRAINT
  comment_fk_userId
FOREIGN KEY (userId)
REFERENCES db_jianshu.user (id);


ALTER TABLE db_jianshu.comment
  ADD CONSTRAINT
  comment_fk_commentId
FOREIGN KEY (commentId)
REFERENCES db_jianshu.comment (id);