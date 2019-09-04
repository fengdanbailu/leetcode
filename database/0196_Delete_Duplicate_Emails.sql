Drop table if exists `Person`;
CREATE TABLE `Person` (
`Id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`Email` VARCHAR (20) NOT NULL COMMENT '邮件',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '人员表';

INSERT INTO `Person` (`Email`) VALUES ('john@example.com');
INSERT INTO `Person` (`Email`) VALUES ('bob@example.com');
INSERT INTO `Person` (`Email`) VALUES ('john@example.com');


select * from Person






select Id,Email from Person where Email in (select Email from Person group by Email having count(Id)>1) 