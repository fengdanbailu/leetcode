Drop table if exists `Person`;

CREATE TABLE `Person` (
`PersonId`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`FirstName` VARCHAR (20) NOT NULL COMMENT '名字',
`LastName` VARCHAR (20) NOT NULL COMMENT '姓氏',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`PersonId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '姓名表';


CREATE TABLE `Address` (
`AddressId`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id主键',
`PersonId` VARCHAR (20) NOT NULL COMMENT '用户ID',
`City` VARCHAR (20) NOT NULL COMMENT '城市',
`State` VARCHAR (20) NOT NULL COMMENT '州',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`AddressId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '地址表';

INSERT INTO `Person` (`FirstName` ,`LastName` ) VALUES ( 'guoming', 'chen');
INSERT INTO `Person` (`FirstName` ,`LastName` ) VALUES ( '国明', '陈');
INSERT INTO `Address` (`PersonId` ,`City` ,`State`) VALUES ( 1,'东丽', '天津');
INSERT INTO `Address` (`PersonId` ,`City` ,`State`) VALUES ( 2,'文安', '河北');

select FirstName, LastName, City, State from Person as a left join Address as b on a.PersonId=b.PersonId