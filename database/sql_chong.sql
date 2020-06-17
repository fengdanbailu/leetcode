1)
Drop TABLE if exists `Book`;
CREATE TABLE `Book` (
`id` VARCHAR (21) NOT NULL  COMMENT  '书号',
`name` VARCHAR (20) COMMENT '书名',
`author` VARCHAR (20)  COMMENT '作者',
`publishingHouse` VARCHAR (20) COMMENT '出版社',
`price` FLOAT COMMENT '价格',
`isBroken` BOOLEAN DEFAULT False COMMENT '有破损',
`remark` VARCHAR(20) COMMENT '备注',
PRIMARY KEY (`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = 'Book'

Drop TABLE if exists `Book2`;
CREATE TABLE `Book2` LIKE `Book`;

2）
ALTER TABLE `Book` ADD COLUMN `type` VARCHAR (20) COMMENT '类型';
3)
ALTER TABLE `Book` MODIFY COLUMN `publishingHouse` VARCHAR(30) COMMENT '出版社';
4）
ALTER TABLE `Book` DROP COLUMN `remark`;
5)
DROP TABLE `Book2`;   
6）
INSERT INTO `Book` (`id` ,`name`,`author`,`publishingHouse`,`price`,`isBroken`) VALUES ( 'ISBN978-7-115-4257X-X', '大学计算机基础', '张小燕','人民邮电出版社',39.8,False);
7)
工龄？女性雇员？
DELETE from `Book` where balabala
8）
UPDATE `Book` SET price = price*0.8 WHERE `publishingHouse` = '科学出版社' AND `type` = '计算机'
