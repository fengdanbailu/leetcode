Drop table if exists `World`;
CREATE TABLE `World` (
`Name` VARCHAR (20) NOT NULL COMMENT '名称',
`continent` VARCHAR (20) NOT NULL COMMENT '洲',
`area`INT (11) UNSIGNED NOT NULL  COMMENT  '面积',
`population`INT (11) UNSIGNED NOT NULL  COMMENT  '人口',
`gdp`INT (11) UNSIGNED NOT NULL  COMMENT  'GDP',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间'
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '世界表';

INSERT INTO `World` (`name`,`continent`,`area`,`population`,`gdp`) VALUES ('Afghanistan','Asia',65230,25500100,20343000);
INSERT INTO `World` (`name`,`continent`,`area`,`population`,`gdp`) VALUES ('Albania','Europe',28748,2831741,12960000);
INSERT INTO `World` (`name`,`continent`,`area`,`population`,`gdp`) VALUES ('Algeria','Africa',2381741,37100000,188681000);
INSERT INTO `World` (`name`,`continent`,`area`,`population`,`gdp`) VALUES ('Andorra','Europe',468,78115,3712000);
INSERT INTO `World` (`name`,`continent`,`area`,`population`,`gdp`) VALUES ('Angola','Africa',1246700,20609294,100990000);

select * from World;

select name,population,area from world where population >25000000 or area > 3000000