Drop table if exists `courses`;
CREATE TABLE `courses` (
`Id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`student` VARCHAR (20) NOT NULL COMMENT '学生',
`class` VARCHAR (20) NOT NULL COMMENT '科目',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '温度表';

INSERT INTO `courses` (`student`,`class`) VALUES ('A','Math');
INSERT INTO `courses` (`student`,`class`) VALUES ('B','English');
INSERT INTO `courses` (`student`,`class`) VALUES ('C','Math');
INSERT INTO `courses` (`student`,`class`) VALUES ('D','Biology');
INSERT INTO `courses` (`student`,`class`) VALUES ('E','Math');
INSERT INTO `courses` (`student`,`class`) VALUES ('F','Computer');
INSERT INTO `courses` (`student`,`class`) VALUES ('G','Math');
INSERT INTO `courses` (`student`,`class`) VALUES ('H','Math');
INSERT INTO `courses` (`student`,`class`) VALUES ('I','Math');


select * from courses;