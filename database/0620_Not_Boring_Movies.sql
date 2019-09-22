Drop table if exists `cinema`;
CREATE TABLE `cinema` (
`id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`movie` VARCHAR (20) NOT NULL COMMENT '电影名',
`description`  VARCHAR (20) NOT NULL COMMENT '描述',
`rating` FLOAT UNSIGNED NOT NULL COMMENT '评分',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '电影表';

INSERT INTO `cinema` (`movie`,`description`,`rating`) VALUES ('War','great 3D',8.9);
INSERT INTO `cinema` (`movie`,`description`,`rating`) VALUES ('Science','fiction',8.5);
INSERT INTO `cinema` (`movie`,`description`,`rating`) VALUES ('irish','boring',6.2);
INSERT INTO `cinema` (`movie`,`description`,`rating`) VALUES ('Ice Song','Fantacy',8.6);
INSERT INTO `cinema` (`movie`,`description`,`rating`) VALUES ('House card','Interesting',9.1);


select id,movie,description,rating from cinema where id%2=1 and description<>'boring' order by rating desc