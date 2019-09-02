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



CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    DECLARE M INT;
    IF N = 0 THEN SET M = 0;
    ELSE SET M = N - 1;
    END IF;
  RETURN (
      # Write your MySQL query statement below.
      select (
  select distinct Salary from Employee order by Salary Desc limit 1 offset M
) as SecondHighestSalary
  );
END

select getNthHighestSalary(1);  
select getNthHighestSalary(2);  
select getNthHighestSalary(3);   