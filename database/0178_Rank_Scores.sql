Drop table if exists `Scores`;
CREATE TABLE `Scores` (
`Id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`Score` FLOAT COMMENT '得分',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '分数表';

INSERT INTO `Scores` (`Score` ) VALUES ( 3.50 );
INSERT INTO `Scores` (`Score` ) VALUES ( 3.65 );
INSERT INTO `Scores` (`Score` ) VALUES ( 4.00 );
INSERT INTO `Scores` (`Score` ) VALUES ( 3.85 );
INSERT INTO `Scores` (`Score` ) VALUES ( 4.00 );
INSERT INTO `Scores` (`Score` ) VALUES ( 3.65 );

select a.Score,b.rank from Scores as a,(
	SELECT DISTINCT Score from Scores as c,order by Score desc
) as b where a.Score= b.Score order by a.Score desc     

select a.Score as Score, count(b.Score) as Rank from
	(select DISTINCT Score Frome Scroes ) as b ,Scores as a 
	where a.Score<=b.Score GROUP BY b.Id,b.Score order by a.Score desc;