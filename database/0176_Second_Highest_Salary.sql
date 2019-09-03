Drop table if exists `Employee`;

CREATE TABLE `Employee` (
`Id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`Salary` VARCHAR (20) NOT NULL COMMENT '薪水',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '雇员表';

INSERT INTO `Employee` (`Salary` ) VALUES ( 100);
INSERT INTO `Employee` (`Salary` ) VALUES ( 200);
INSERT INTO `Employee` (`Salary` ) VALUES ( 300);

select (
  select distinct Salary from Employee order by Salary Desc limit 1 offset 1
) as SecondHighestSalary