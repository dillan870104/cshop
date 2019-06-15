DROP SCHEMA IF EXISTS `mydatabase`;
CREATE SCHEMA `mydatabase` ;
USE mydatabase;
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `mydatabase`.`customer` (
  `customer_no` INT NOT NULL AUTO_INCREMENT,
  `customer_name` VARCHAR(10) NULL,
  `customer_tel` VARCHAR(12) NULL,
  `customer_address` VARCHAR(30) NULL,
  PRIMARY KEY (`customer_no`));
  ALTER TABLE `mydatabase`.`customer` 
ADD COLUMN `customer_ login` VARCHAR(15) NOT NULL AFTER `customer_address`,
ADD COLUMN `customer_password` VARCHAR(15) NOT NULL AFTER `customer_ login`,
CHANGE COLUMN `customer_name` `customer_name` VARCHAR(10) NOT NULL ,
CHANGE COLUMN `customer_tel` `customer_tel` VARCHAR(12) NOT NULL ,
CHANGE COLUMN `customer_address` `customer_address` VARCHAR(30) NOT NULL ;
ALTER TABLE `mydatabase`.`customer` 
ADD COLUMN `customer_email` VARCHAR(40) NOT NULL AFTER `customer_password`;
ALTER TABLE `mydatabase`.`customer` 
CHANGE COLUMN `customer_ login` `customer_login` VARCHAR(15) NOT NULL ;
ALTER TABLE `mydatabase`.`customer` 
ADD COLUMN `customer_birthday` VARCHAR(20) NOT NULL AFTER `customer_email`;
INSERT INTO `mydatabase`.`customer` (`customer_no`, `customer_name`, `customer_tel`, `customer_address`, `customer_login`, `customer_password`, `customer_email`, `customer_birthday`) VALUES ('1', 'ZACHARY', '007', 'taipei', 'zzz', 'xxx', 'zz@yahoo.com.tw', '0717');

USE mydatabase;
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_no` varchar(10) NOT NULL,
  `product_no` varchar(10) NOT NULL,
  `customer_no` varchar(10) NOT NULL,
  `buying_amount` int(11) DEFAULT NULL,
  `total_cost` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_no`)
);
#INSERT INTO order VALUES ('', '', '', '', '');




USE mydatabase;
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_no` varchar(10) NOT NULL,
  `product_name` varchar(10) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_amount` int(5) NOT NULL,
  `supplier_no` text DEFAULT NULL,
  `sex` text,
  PRIMARY KEY (`product_no`)
);

INSERT INTO product VALUES ('001', '漸層藍襯衫', '250','100','001','男裝');
INSERT INTO product VALUES ('002', '圓領襯衫', '250','100','001','男裝');
INSERT INTO product VALUES ('003', '牛仔薄衫-女', '230','100','001','女裝');
INSERT INTO product VALUES ('004', '格子薄衫-女', '230','100','001','女裝');
INSERT INTO product VALUES ('005', '棉質白素T', '150','100','001','男裝');
INSERT INTO product VALUES ('006', '棉質黑素T', '150','100','001','男裝');
INSERT INTO product VALUES ('007', '印花白短T', '190','100','001','男裝');
INSERT INTO product VALUES ('008', '印花橘短T', '190','100','001','男裝');
INSERT INTO product VALUES ('009', '卡通印花短T-女', '170','100','001','女裝');
INSERT INTO product VALUES ('010', '白素T-女', '140','100','001','女裝');
INSERT INTO product VALUES ('011', '粉素T-女', '140','100','002','女裝');
INSERT INTO product VALUES ('012', '白大學T', '250','100','002','男裝');
INSERT INTO product VALUES ('013', '長袖白T', '250','100','002','男裝');
INSERT INTO product VALUES ('014', '格子毛衣', '490','100','002','男裝');
INSERT INTO product VALUES ('015', '大學T-女', '240','100','002','女裝');
INSERT INTO product VALUES ('016', '高領毛衣-女', '450','100','002','女裝');
INSERT INTO product VALUES ('017', '長袖薄T-女', '270','100','002','女裝');
INSERT INTO product VALUES ('018', '牛仔長褲', '490','100','002','男裝');
INSERT INTO product VALUES ('019', '白棉褲', '390','100','002','男裝');
INSERT INTO product VALUES ('020', '牛仔長褲-女', '590','100','002','女裝');
INSERT INTO product VALUES ('021', '灰色丹寧褲-女', '390','100','002','女裝');
INSERT INTO product VALUES ('022', '牛仔短褲', '490','100','002','男裝');
INSERT INTO product VALUES ('023', '牛仔短褲-女', '390','100','002','女裝');
INSERT INTO product VALUES ('024', '休閒短褲-(褐)女', '390','100','002','女裝');
INSERT INTO product VALUES ('025', '女休閒短褲-(白)女', '390','100','002','女裝');


USE mydatabase;
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `supplier_no` int(11) DEFAULT NULL,
  `supplier_name` varchar(45) NOT NULL,
  `supplier_address` varchar(45) DEFAULT NULL
);
INSERT INTO supplier VALUES ('001', 'Tom', '320桃園市中壢區中北路200號');
INSERT INTO supplier VALUES ('002', 'Ted', '320桃園市中壢區中大路300號');


/*USE mydatabase;
DROP TABLE IF EXISTS `board`;
CREATE TABLE `board` (
  `no` tinyint(4) NOT NULL AUTO_INCREMENT,
  `content` text,
  `name` varchar(10) ,
  `mail` varchar(30) ,
  `subject` varchar(30) ,
  `putdate` text,
  `reply` text,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;*/

USE mydatabase;
DROP TABLE IF EXISTS `board`;
CREATE TABLE `board` (
  `pro` varchar(10)  NULL ,
  `content` text,
  `putdate` date default NULL
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
INSERT INTO board VALUES("001","lol","2019/9/1");
INSERT INTO board VALUES("001","lol","2019/9/2");
INSERT INTO board VALUES("001","lol","2019/9/3");     
*/

USE mydatabase;
DROP TABLE IF EXISTS `ad`;
CREATE TABLE `ad` (
  `ADID` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `file_path` varchar(20) NOT NULL,
  `ad_file` varchar(20) NOT NULL,
  `link` varchar(30) NOT NULL,
  `Alternate` text NOT NULL,
  `ADContent` text NOT NULL,
  PRIMARY KEY (`ADID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO ad VALUES ('1', 'pic', '1.GIF', 'shopping.pchome.com.tw', 'pchome網路購物', 'pchome網路購物');
INSERT INTO ad VALUES ('2', 'pic', '2.GIF', 'tw.yahoo.com', 'yahoo', 'yahoo');
INSERT INTO ad VALUES ('3', 'pic', '3.GIF', 'udn.com', '聯合新聞網', '聯合新聞網');
	
CREATE TABLE `mydatabase`.`shop` (
  `number` int (4) unsigned NOT NULL AUTO_INCREMENT ,
  `pdno` VARCHAR(10) NOT NULL,
  `amount` VARCHAR(10) NULL,
  `size` VARCHAR(10) NULL,
  PRIMARY KEY (`number`));
  
    CREATE TABLE `mydatabase`.`ppcar` (
  prod_no VARCHAR(5) NOT NULL,
  prod_amount VARCHAR(5) NULL,
  prod_size VARCHAR(10) NULL,
  PRIMARY KEY (`prod_no`));
