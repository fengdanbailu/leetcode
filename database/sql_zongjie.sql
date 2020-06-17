-- 创建/删除数据库
DROP DATABASE IF EXISTS `backup_tables`;
CREATE DATABASE `backup_tables`;

-- 创建/删除表
Drop TABLE IF EXISTS `t_type_exercise`;
CREATE TABLE `t_type_exercise` (
`type_id` INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`name` VARCHAR (32) NOT NULL DEFAULT '-'  COMMENT  '名称',
`remark` VARCHAR(256) NOT NULL DEFAULT '-' COMMENT '备注',
`num_tinyint` TINYINT NOT NULL DEFAULT 0 COMMENT '数字',
`num_smallint` SMALLINT NOT NULL DEFAULT 0 COMMENT '数字',
`num_mediumint` MEDIUMINT NOT NULL DEFAULT 0 COMMENT '数字',
`num_int` INT (11) NOT NULL DEFAULT 0 COMMENT '数字',
`num_bigint` BIGINT (20) NOT NULL DEFAULT 0 COMMENT '数字',
`num_float` FLOAT NOT NULL DEFAULT 0.0 COMMENT '数字',
`num_double` DOUBLE NOT NULL DEFAULT 0.0 COMMENT '数字',
`num_decimal` DECIMAL(19,4) NOT NULL DEFAULT 0.0 COMMENT '数字',
`date_date` DATE NOT NULL DEFAULT '2020-01-01' COMMENT '日期',
`date_time` TIME NOT NULL DEFAULT '00:00:00' COMMENT '日期',
`date_year` YEAR NOT NULL DEFAULT "2020" COMMENT '日期',
`date_datetime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '日期',
`date_timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '日期',
`string_char` CHAR(20) NOT NULL DEFAULT 'CHAR' COMMENT '字符串',
`string_varchar` VARCHAR(20) NOT NULL DEFAULT 'VARCHAR' COMMENT '字符串',
`string_tinytext` TINYTEXT COMMENT '字符串',
`string_text` TEXT COMMENT '字符串',
`string_mediumtext` MEDIUMTEXT COMMENT '字符串',
`string_longtext` LONGTEXT COMMENT '字符串',
`string_tinyblob` TINYBLOB COMMENT '字符串',
`string_blob` BLOB COMMENT '字符串',
`string_mediumblob` MEDIUMBLOB COMMENT '字符串',
`string_longblob` LONGBLOB COMMENT '字符串',
PRIMARY KEY (`type_id`),
-- UNIQUE KEY `uniq_type_id` (`type_id`) USING BTREE,
-- KEY `idx_name` (`name`) USING BTREE,
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '数据库类型练习'
-- MyISAM|INNODB   utf8|UTF8MB4  
--FULLTEXT|HASH|BTREE|RTREE default is BTREE

-- 表备份与恢复
-- Drop TABLE IF EXISTS `backup_tables.t_type_exercise_20200427`;
CREATE TABLE backup_tables.t_type_exercise_20200427 LIKE leetcode.t_type_exercise;
INSERT INTO backup_tables.t_type_exercise_20200427 SELECT * FROM leetcode.t_type_exercise WHERE 1=1; 

UPDATE leetcode.t_type_exercise a
INNER JOIN backup_tables.t_type_exercise_20200427 b ON a.type_id=b.type_id         
SET a.remark = b.remark where 1 = 1;
 
INSERT INTO t_type_exercise(type_id, name)
select type_id, name
from backup_tables.t_type_exercise_20200427
where 1=1;

-- 修改表结构
ALTER TABLE `t_type_exercise` MODIFY COLUMN remark VARCHAR(128) DEFAULT null COMMENT '修改测试'
ALTER TABLE `t_type_exercise` ADD COLUMN add_one_test TINYINT COMMENT '添加练习';
ALTER TABLE `t_type_exercise` DROP COLUMN add_one_test;
ALTER TABLE `t_type_exercise` ADD INDEX idx_name(name);

-- 插入/修改语句
INSERT INTO t_type_exercise ( name, num_tinyint, date_date) VALUES ("exercise", 26, now());
INSERT INTO t_type_exercise ( name, num_tinyint, num_decimal, date_date, date_datetime, date_timestamp) VALUES ("exercise", 1, 2.23, "2020-03-08", "2020-02-01 10:33:22", "2020-02-01 10:33:23");
INSERT INTO t_type_exercise SELECT * FROM t_type_exercise2; 

UPDATE t_type_exercise SET name = '测试修改id=8的名字', num_tinyint = 0 WHERE type_id = 8;

-- 查询&跨库查询
select * from `t_type_exercise` where name like '测试%' and num_int > 100 and type_id in (1, 3, 5, 7, 8, 10, 12);
select * from backup_tables.t_type_exercise_20200427;


-----------------------------------------
常见DBMS工单类型：
1）全量数据备份，更改少量数据;
---
2）部分数据备份，update大量SQL语句;
-
3）没备份直接修改的表内容；
--
4）更改表结构
----
5）创建表
-


-----------------------------------------
SQL SERVER
-- 建表
CREATE TABLE t_srms_order(                                                                                             --表名命名规则：t_模块名称_说明
id int NOT NULL IDENTITY(1,1)
CONSTRAINT [PK_t_srms_order_ID] PRIMARY KEY CLUSTERED ( id ASC)                                                        --必须指定主键，主键名称不能与其他主键名称重复
) 
go
execute sp_addextendedproperty 'MS_Description', '上门保养关闭城市表','SCHEMA', 'dbo', 'table', 't_srms_order'          --增加表说明
go
execute sp_addextendedproperty 'MS_Description', '主键id', 'SCHEMA', 'dbo', 'table', 't_srms_order', 'column', 'id'    --增加列说明
go
-- 修改表
alter table t_srms_order add remark nvarchar(1000)                   --增加字段，必须有列说明
go
alter table t_srms_order alter column remark nvarchar(2000)          --修改字段
go
alter table t_srms_order drop column remark                          --删除字段
go

-- DML操作
insert into t_a (name,crdate) values ('张3','2017-01-01')            --insert操作
go
update t_a set name = '李4' where name = '张3'                       --update操作，必须具有where条件
go
delete t_a where name = '张3'                                        --delete操作必须具有where条件
go

-- 修复数据样例
select *
into backup_tables.dbo.balance_2018010501
from balance
where xid=18494005
go
update b
set xispay=0,xpayemployee_id=null,xpaytime=null
from balance b
inner join backup_tables.dbo.balance_2018010501 bak on bak.xid = b.xid
where 1=1                                                                     --update操作，必须具有where条件
go

-- 创建索引
create nonclustered index idx_name on t_a (name) with(online = on)     
-- 备份数据表
select * into backup_tables.dbo.A from A with(nolock)    