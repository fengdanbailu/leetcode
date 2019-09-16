Drop table if exists `Trips`;
CREATE TABLE `Trips` (
`Id`INT (11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT  'id主键',
`Client_Id` INT (11) UNSIGNED NOT NULL COMMENT '客户id',
`Driver_Id` INT (11) UNSIGNED NOT NULL COMMENT '司机id',
`City_Id` INT (11) UNSIGNED NOT NULL COMMENT '城市id',
`Status` VARCHAR (40) NOT NULL COMMENT '状态',
`Request_at` DATE NOT NULL COMMENT '日期',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间',
PRIMARY KEY (`Id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '温度表';

INSERT INTO `Trips` (`Client_Id`,`Driver_Id`,`City_Id`,`Status`,`Request_at`) VALUES (1,10,1,'completed','2013-10-01');
INSERT INTO `Trips` (`Client_Id`,`Driver_Id`,`City_Id`,`Status`,`Request_at`) VALUES (2,11,1,'cancelled_by_driver','2013-10-01');
INSERT INTO `Trips` (`Client_Id`,`Driver_Id`,`City_Id`,`Status`,`Request_at`) VALUES (3,12,6,'completed','2013-10-01');
INSERT INTO `Trips` (`Client_Id`,`Driver_Id`,`City_Id`,`Status`,`Request_at`) VALUES (4,13,6,'cancelled_by_client','2013-10-01');
INSERT INTO `Trips` (`Client_Id`,`Driver_Id`,`City_Id`,`Status`,`Request_at`) VALUES (1,10,1,'completed','2013-10-02');
INSERT INTO `Trips` (`Client_Id`,`Driver_Id`,`City_Id`,`Status`,`Request_at`) VALUES (2,11,6,'completed','2013-10-02');
INSERT INTO `Trips` (`Client_Id`,`Driver_Id`,`City_Id`,`Status`,`Request_at`) VALUES (3,12,6,'completed','2013-10-02');
INSERT INTO `Trips` (`Client_Id`,`Driver_Id`,`City_Id`,`Status`,`Request_at`) VALUES (2,12,12,'completed','2013-10-03');
INSERT INTO `Trips` (`Client_Id`,`Driver_Id`,`City_Id`,`Status`,`Request_at`) VALUES (3,10,12,'completed','2013-10-03');
INSERT INTO `Trips` (`Client_Id`,`Driver_Id`,`City_Id`,`Status`,`Request_at`) VALUES (4,13,12,'cancelled_by_driver','2013-10-03');



Drop table if exists `Users`;
CREATE TABLE `Users` (
`Users_Id`INT (11) UNSIGNED NOT NULL UNIQUE COMMENT  '用户ID',
`Banned` VARCHAR (20) NOT NULL COMMENT '禁止',
`Role` VARCHAR (20) NOT NULL COMMENT '角色',
`create_time` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`modify_time` DATETIME DEFAULT NULL COMMENT '修改时间'
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '用户表';

INSERT INTO `Users` (`Users_Id`,`Banned`,`Role`) VALUES (1,"No","client");
INSERT INTO `Users` (`Users_Id`,`Banned`,`Role`) VALUES (2,"Yes","client");
INSERT INTO `Users` (`Users_Id`,`Banned`,`Role`) VALUES (3,"No","client");
INSERT INTO `Users` (`Users_Id`,`Banned`,`Role`) VALUES (4,"No","client");
INSERT INTO `Users` (`Users_Id`,`Banned`,`Role`) VALUES (10,"No","driver");
INSERT INTO `Users` (`Users_Id`,`Banned`,`Role`) VALUES (11,"No","driver");
INSERT INTO `Users` (`Users_Id`,`Banned`,`Role`) VALUES (12,"No","driver");
INSERT INTO `Users` (`Users_Id`,`Banned`,`Role`) VALUES (13,"No","driver");
 
select * from `Trips`;
select * from `Users`;

Select tb.Request_at as Day,
round(sum(case when tb.status = 'completed' then 0 else 1 end) / count(*),2) as 'Cancellation Rate'
from
(Select u.Users_Id,u.Banned,u.Role,t.Request_at,t.status from Users u inner join Trips t
on u.Users_Id = t.Client_Id
where u.Banned = 'No'
) as tb
where tb.Request_at between '2013-10-01' and '2013-10-03'
group by tb.Request_at


