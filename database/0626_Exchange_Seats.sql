Drop table if exists `seat`;
CREATE TABLE `seat` (
`id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`student` VARCHAR (20) NOT NULL COMMENT '学生',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '学生表';

INSERT INTO `seat` (`student`) VALUES ('Abbot');
INSERT INTO `seat` (`student`) VALUES ('Doris');
INSERT INTO `seat` (`student`) VALUES ('Emerson');
INSERT INTO `seat` (`student`) VALUES ('Green');
INSERT INTO `seat` (`student`) VALUES ('Jeames');

select s1.id, ifnull(s2.student, s1.student) as student
from seat s1
left join seat s2 on s1.id = if(s1.id % 2 <> 0, s2.id - 1, s2.id + 1)
order by s1.id;

select * from seat;
