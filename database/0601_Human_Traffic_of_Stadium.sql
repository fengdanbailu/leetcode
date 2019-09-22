Drop table if exists `stadium`;
CREATE TABLE `stadium` (
`id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`visit_date` DATE NOT NULL COMMENT '访问日期',
`people` INT (11) UNSIGNED NOT NULL COMMENT '人数',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '体育馆';

INSERT INTO `stadium` (`visit_date`,`people`) VALUES ('2017-01-01',10);
INSERT INTO `stadium` (`visit_date`,`people`) VALUES ('2017-01-02',109);
INSERT INTO `stadium` (`visit_date`,`people`) VALUES ('2017-01-03',150);
INSERT INTO `stadium` (`visit_date`,`people`) VALUES ('2017-01-04',99);
INSERT INTO `stadium` (`visit_date`,`people`) VALUES ('2017-01-05',145);
INSERT INTO `stadium` (`visit_date`,`people`) VALUES ('2017-01-06',1455);
INSERT INTO `stadium` (`visit_date`,`people`) VALUES ('2017-01-07',199);
INSERT INTO `stadium` (`visit_date`,`people`) VALUES ('2017-01-08',188);

select distinct A.id,A.visit_date,A.people from 
(select id,visit_date,people from stadium where people>=100) as A,
(select id,visit_date,people from stadium where people>=100) as B,
(select id,visit_date,people from stadium where people>=100) as C 
where (A.id-2=B.id and A.id-1=C.id) or (A.id-1=B.id and A.id+1=C.id) or (A.id+1=B.id and A.id+2=C.id) order by A.id asc;


select distinct A.id,A.visit_date,A.people from 
stadium as A,stadium as B,stadium as C
where ((A.id-2=B.id and A.id-1=C.id) or (A.id-1=B.id and A.id+1=C.id) or (A.id+1=B.id and A.id+2=C.id)) and A.people>=100 and B.people>=100 and C.people>=100 order by A.id asc;