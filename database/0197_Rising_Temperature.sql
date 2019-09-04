Drop table if exists `Weather`;
CREATE TABLE `Weather` (
`Id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`RecordDate` DATE NOT NULL COMMENT '日期',
`Temperature` INT (11) UNSIGNED NOT NULL COMMENT '温度',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '温度表';

INSERT INTO `Weather` (`RecordDate`,`Temperature`) VALUES ('2015-01-01',10);
INSERT INTO `Weather` (`RecordDate`,`Temperature`) VALUES ('2015-01-02',25);
INSERT INTO `Weather` (`RecordDate`,`Temperature`) VALUES ('2015-01-03',20);
INSERT INTO `Weather` (`RecordDate`,`Temperature`) VALUES ('2015-01-04',30);

select * from Weather;