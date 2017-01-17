DROP DATABASE IF EXISTS db_user;
CREATE DATABASE db_user;
DROP TABLE IF EXISTS db_user.register;
CREATE TABLE db_user.register(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'PK',
  mailbox VARCHAR(255) NOT NULL  UNIQUE COMMENT '邮箱',
  accountNumber VARCHAR(255) NOT NULL COMMENT '账号',
  password VARCHAR(255) NOT NULL COMMENT '密码'

)COMMENT '用户表';

SELECT *
FROM db_user.register;

INSERT INTO db_user.register VALUE (1,'330286610@qq.com','15810479689','jly93113',1);

SELECT *
FROM db_user.register
WHERE mailbox = '330286610@qq.com'AND password = 'jly93113';


CREATE TABLE IF NOT EXISTS db_user.leftWord(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'PK',
  time VARCHAR(255) COMMENT '留言时间',
  content VARCHAR(255) COMMENT '留言内容'
)COMMENT '留言表';

# ALTER TABLE db_user.register
#   ADD CONSTRAINT
#   fk_register_orderNemberId
# FOREIGN KEY (orderNemberId)
# REFERENCES db_user.leftWord(id);

INSERT INTO db_user.leftWord VALUE (1,'2017.01.17','hello2017');

SELECT *
FROM db_user.leftWord;
