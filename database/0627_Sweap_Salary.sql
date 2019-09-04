Drop table if exists `salary`;
CREATE TABLE `salary` (
`id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`name` VARCHAR (20) NOT NULL COMMENT '姓名',
`sex` VARCHAR (20) NOT NULL COMMENT '性别',
`salary` INT (11) UNSIGNED NOT NULL COMMENT '薪水',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '学生表';

INSERT INTO `salary` (`name`,`sex`,`salary`) VALUES ('A','m',2500);
INSERT INTO `salary` (`name`,`sex`,`salary`) VALUES ('B','f',1500);
INSERT INTO `salary` (`name`,`sex`,`salary`) VALUES ('C','m',5500);
INSERT INTO `salary` (`name`,`sex`,`salary`) VALUES ('D','f',500);


select * from salary;