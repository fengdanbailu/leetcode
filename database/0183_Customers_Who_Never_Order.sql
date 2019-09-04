Drop table if exists `Customers`;
CREATE TABLE `Customers` (
`Id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`Name` VARCHAR (20) NOT NULL COMMENT '名字',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '消费表';


INSERT INTO `Customers` (`Name`) VALUES ('Joe');
INSERT INTO `Customers` (`Name`) VALUES ('Henry');
INSERT INTO `Customers` (`Name`) VALUES ('Sam');
INSERT INTO `Customers` (`Name`) VALUES ('Max');


INSERT INTO `Customers` (`Name`) VALUES ('James');
INSERT INTO `Customers` (`Name`) VALUES ('James');

Drop table if exists `Orders`;
CREATE TABLE `Orders` (
`Id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`CustomerId` INT (11) COMMENT '编号',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '订单表';


INSERT INTO `Orders` (`CustomerId`) VALUES (3);
INSERT INTO `Orders` (`CustomerId`) VALUES (1);


INSERT INTO `Orders` (`CustomerId`) VALUES (1);
INSERT INTO `Orders` (`CustomerId`) VALUES (1);

select Name as Customers from Customers where Id not in (select Customers.Id from Customers, Orders where Customers.Id=Orders.CustomerId)

