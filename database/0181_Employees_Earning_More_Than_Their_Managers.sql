Drop table if exists `Employee`;
CREATE TABLE `Employee` (
`Id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`Name` VARCHAR (20) NOT NULL COMMENT '名字',
`Salary` INT (11) COMMENT '薪水',
`ManagerId` INT (11) DEFAULT NULL COMMENT '薪水',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '日志表';

INSERT INTO `Employee` (`Name`,`Salary` ,`ManagerId`) VALUES ('Joe',70000,3 );
INSERT INTO `Employee` (`Name`,`Salary` ,`ManagerId`) VALUES ('Henry',80000,4 );
INSERT INTO `Employee` (`Name`,`Salary` ) VALUES ('Sam',60000 );
INSERT INTO `Employee` (`Name`,`Salary` ) VALUES ('Max',90000 );


select a.Name as Employee from `Employee` as a, `Employee` as b where a.ManagerId=b.Id AND  a.`Salary`>b.`Salary` 

select a.Name as Employee from `Employee` as a left join `Employee` as b on a.ManagerId=b.Id where a.`Salary`>b.`Salary` 