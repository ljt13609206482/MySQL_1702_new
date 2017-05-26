DROP TABLE IF EXISTS db_1702.csdn;
CREATE TABLE db_1702.csdn (
  id       INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  username VARCHAR(255) COMMENT '用户名',
  password VARCHAR(255) COMMENT '密码',
  email    VARCHAR(255) COMMENT '邮箱'
)
  COMMENT 'CSDN 用户表';

SELECT count(*)
FROM db_1702.csdn;

LOAD DATA LOCAL INFILE '/Users/mingfei/Desktop/www.csdn.net.sql'
INTO TABLE db_1702.csdn
FIELDS TERMINATED BY ' # ' (username, password, email)
SET id = NULL;

SELECT password
FROM db_1702.csdn
GROUP BY password
ORDER BY count(password) DESC
LIMIT 10;

# 各列值的快速模糊查询
SELECT *
FROM db_1702.csdn
WHERE username LIKE '%tester%';
SELECT *
FROM db_1702.csdn
WHERE password LIKE '%123%';
SELECT *
FROM db_1702.csdn
WHERE email LIKE '%test@qq.com%';

# 排名前十的密码
# 排名前十的邮箱
SELECT substr(email, locate('@', email) + 1) -- subString() indexOf()
FROM db_1702.csdn
GROUP BY substr(email, locate('@', email) + 1)
ORDER BY count(substr(email, locate('@', email) + 1)) DESC
LIMIT 10;

# 用户名和邮箱名相同的数据

# 密码可能是生日的数据 -- 378775
SELECT count(*)
FROM db_1702.csdn
WHERE password REGEXP '^19[0-9]{2}0[1-9]{1}[0-3]{1}[0-9]{1}$' -- 235782
UNION
SELECT count(*)
FROM db_1702.csdn
WHERE password REGEXP '^19[0-9]{2}1[0-2]{1}[0-3]{1}[0-9]{1}$'; -- 142993

# 哪一年出生的用户最多


# 哪个星座的用户最多


# 密码是 QQ 号的

# 密码是手机号的

# 哪个运营商的用户最多

# 弱密码用户数据
