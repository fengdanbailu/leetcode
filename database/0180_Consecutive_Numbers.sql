Drop table if exists `Logs`;
CREATE TABLE `Logs` (
`Id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`Num` INT (11) COMMENT '编号',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '日志表';

INSERT INTO `Logs` (`Num` ) VALUES ( 1 );
INSERT INTO `Logs` (`Num` ) VALUES ( 1 );
INSERT INTO `Logs` (`Num` ) VALUES ( 1 );
INSERT INTO `Logs` (`Num` ) VALUES ( 2 );
INSERT INTO `Logs` (`Num` ) VALUES ( 1 );
INSERT INTO `Logs` (`Num` ) VALUES ( 2 );
INSERT INTO `Logs` (`Num` ) VALUES ( 2 );

select distinct a.Num as ConsecutiveNums from Logs as a,Logs as b,Logs as c 
where a.Id+1=b.Id and a.Id+2=c.Id and a.Num=b.Num and a.Num=c.Num