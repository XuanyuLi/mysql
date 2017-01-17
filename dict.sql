DROP DATABASE IF EXISTS db_dict;
CREATE DATABASE db_dict;

CREATE TABLE db_dict.dict(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'PK',
  info VARCHAR(255) NULL COMMENT '信息',
  definition VARCHAR(255) COMMENT '释义',
  appendix VARCHAR(255) COMMENT '附录',
  historyId INT COMMENT 'FK'

)COMMENT '翻译表';

INSERT INTO db_dict.dict VALUES (1,'info','info...','.',1);
INSERT INTO db_dict.dict VALUES (2,'info2','info2...','..',2);
INSERT INTO db_dict.dict VALUES (3,'info3','info3...','...',3);
DROP TABLE db_dict.dict;
SELECT *
FROM db_dict.dict;


ALTER TABLE db_dict.dict
  ADD CONSTRAINT
  fk_dict_historyId
FOREIGN KEY (historyId)
REFERENCES db_dict.histroy(id);




CREATE TABLE db_dict.histroy(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'PK'
  );
