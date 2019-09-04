Drop table if exists `Employee`;
CREATE TABLE `Employee` (
`Id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`Name` VARCHAR (20) NOT NULL COMMENT '名字',
`Salary` INT (11) COMMENT '薪水',
`DepartmentId` INT (11) DEFAULT NULL COMMENT '部门编号',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '雇员表';

INSERT INTO `Employee` (`Name`,`Salary` ,`DepartmentId`) VALUES ('Joe',70000,1 );
INSERT INTO `Employee` (`Name`,`Salary` ,`DepartmentId`) VALUES ('Jim',90000,1 );
INSERT INTO `Employee` (`Name`,`Salary` ,`DepartmentId`) VALUES ('Henry',80000,2 );
INSERT INTO `Employee` (`Name`,`Salary` ,`DepartmentId`) VALUES ('Sam',60000,2 );
INSERT INTO `Employee` (`Name`,`Salary` ,`DepartmentId`) VALUES ('Max',90000,1 );


Drop table if exists `Department`;
CREATE TABLE `Department` (
`Id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`Name` VARCHAR (20) NOT NULL COMMENT '部门名称',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '部门表';

INSERT INTO `Department` (`Name`) VALUES ('IT');
INSERT INTO `Department` (`Name`) VALUES ('Sales');




select b.Name as Department, a.Name as Employee,a.Salary as Salary from Employee as a 
join Department as b on a.DepartmentId = b.Id 
join (SELECT DepartmentId, MAX(Salary) as Salary FROM Employee GROUP BY DepartmentId) as c on a.DepartmentId=c.DepartmentId and a.Salary=c.Salary



select b.Name as Department, a.Name as Employee, a.Salary as Salary from Employee as a 
join Department as b on a.DepartmentId = b.Id
join Employee c on c.DepartmentId = a.DepartmentId and c.Salary >= a.Salary
group by b.Name, a.Name, a.Salary having count(distinct c.Salary) <=3 order by a.Salary desc


