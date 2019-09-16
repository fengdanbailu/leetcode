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



delete from Person where Id not in (select A.Id from (select min(Id) as Id from Person group by Email) as A);
select * from Person;





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


delete A from Person as A join Person as B where A.Email =B.Email and a.Id>B.Id;
select * from Person;