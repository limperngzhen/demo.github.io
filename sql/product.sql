/*
Navicat MySQL Data Transfer

Source Server         : sql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : sql

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-12-28 22:00:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `no` int(11) NOT NULL,
  `nofile` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `id` varchar(255) NOT NULL,
  `buyer` varchar(20) NOT NULL,
  `payway` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO ˋordersˋ VALUES ('5', '5', 'item', '蔥油蛋餅', '10', '60', '600', '12345', '123', '分期付款', '123131');

-- ----------------------------
-- Table structure for `omelet`
-- ----------------------------
DROP TABLE IF EXISTS `omelet`;
CREATE TABLE `omelet` (
  `ID` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(20) NOT NULL,
  `nofile` varchar(20) NOT NULL,
  `pathfile` varchar(20) NOT NULL,
  `ll` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of omelet
-- ----------------------------
INSERT INTO omelet VALUES ('3', '起司蛋餅', '60', '3', 'item', '300');
INSERT INTO omelet VALUES ('6', '蘿蔔糕', '70', '6', 'item', '300');
INSERT INTO omelet VALUES ('5', '蔥油蛋餅', '60', '5', 'item', '300');
INSERT INTO omelet VALUES ('4', '肉鬆蛋餅', '60', '4', 'item', '300');
INSERT INTO omelet VALUES ('1', '玉米培根蛋餅', '70', '1', 'item', '300');
INSERT INTO omelet VALUES ('2', '蔥抓餅', '50', '2', 'item', '300');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `no` int(20) NOT NULL,
  `nofile` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `total_price` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO cart VALUES ('1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO cart VALUES ('3', '3','item', '起司蛋餅', '8', '60', 'yolo', '480');

-- ----------------------------
-- Table structure for `others`
-- ----------------------------
DROP TABLE IF EXISTS `others`;
CREATE TABLE `others` (
  `ID` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(20) NOT NULL,
  `nofile` varchar(20) NOT NULL,
  `pathfile` varchar(20) NOT NULL,
  `ll` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of others
-- ----------------------------
INSERT INTO others VALUES ('3', '雞塊', '60', '9', 'item', '300');
INSERT INTO others VALUES ('5', '清香綠茶', '40', '11', 'item', '300');
INSERT INTO others VALUES ('2', '雙層肉蛋堡', '100', '8', 'item', '300');
INSERT INTO others VALUES ('6', '奶茶', '50', '12', 'item', '300');
INSERT INTO others VALUES ('1', '異國蔥抓餅', '50', '7', 'item', '300');
INSERT INTO others VALUES ('4', '歐洲紅茶', '30', '10', 'item', '300');

-- ----------------------------
-- Table structure for `counter`
-- ----------------------------
DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `count` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of counter
-- ----------------------------
INSERT INTO counter VALUES ('67');

-- ----------------------------
-- Table structure for `guestboard`
-- ----------------------------
DROP TABLE IF EXISTS `guestboard`;
CREATE TABLE `guestboard` (
  `no` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `mean` varchar(255) NOT NULL,
  `aa` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestboard
-- ----------------------------
INSERT INTO guestboard VALUES ('1', '我', '11', 'test', 't', '2018-01-05');
INSERT INTO guestboard VALUES ('2', '球', '11', 'cp', '往', '2018-01-05');
INSERT INTO guestboard VALUES ('3', '你好', '0831', '安安', '哈囉', '2018-01-06');
INSERT INTO guestboard VALUES ('4', '123', 'test', '123', '13\r\n', '2018-01-06');
INSERT INTO guestboard VALUES ('5', '酥酥酥', '12345', '哈囉', '哈囉囉囉囉', '2018-01-06');
INSERT INTO guestboard VALUES ('6', '132', '11', '123', 'test', '2018-01-06');
INSERT INTO guestboard VALUES ('7', 'vdfv', '123456', 'dfv', 'dfv', '2018-01-06');
INSERT INTO guestboard VALUES ('8', 'rtyfghvbn', 'rtyfghvbn', 'hi', '<script>alert(\"hi!\")</script>', '2018-01-06');
INSERT INTO guestboard VALUES ('9', 'rtyfghvbn', 'rtyfghvbn', 'no', '<script language=\"JavaScript\">\r\nVIH_BackColor = \"palegreen\";\r\nVIH_ForeColor = \"navy\";\r\nVIH_FontPix = \"16\";\r\nVIH_DisplayFormat = \"You are visiting from:<br>IP Address: %%IP%%<br>Host: %%HOST%%\";\r\nVIH_DisplayOnPage = \"yes\";\r\n</script>', '2018-01-06');

-- ----------------------------
-- Table structure for `hot`
-- ----------------------------
DROP TABLE IF EXISTS `hot`;
CREATE TABLE `hot` (
  `ID` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `nofile` varchar(20) DEFAULT NULL,
  `pathfile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hot
-- ----------------------------
INSERT INTO hot VALUES ('1', '招牌漢堡', '80', '13', 'item');
INSERT INTO hot VALUES ('2', '厚片培根漢堡', '70', '15', 'item');
INSERT INTO hot VALUES ('3', '薯餅滿福堡', '50', '17', 'item');
INSERT INTO hot VALUES ('4', '肉鬆蛋餅', '60', '4', 'item');
INSERT INTO hot VALUES ('5', '奶茶', '50', '12', 'item');
INSERT INTO hot VALUES ('6', '玉米培根蛋餅', '70', '1', 'item');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `name` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `pwdcheck` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `tel` int(255) NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `rank` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO member VALUES ('swing', '0831', '08310831', '08310831', '111', 'girl', '1', 'swing@com.tw', '2');
INSERT INTO member VALUES ('Jeff', '11', '11', '11', '123321', '11', '11111', 'jeff@com.tw', '0');
INSERT INTO member VALUES ('你好', '123', '123', '123', '123', 'man', '123', '123@com.tw', '0');
INSERT INTO member VALUES ('123', '12345', '123', '123', '123131', 'man', '12313231', '12313121@123132123', '0');
INSERT INTO member VALUES ('123456', '123456', '123456', '123456', '123456', 'man', '123456', '123456@ew', '0');
INSERT INTO member VALUES ('222', '222', '222', '222', '222', 'man', '222', '222@com.tw', '0');
INSERT INTO member VALUES ('5', '5', '5', '5', '5', 'man', '5', '5@G', '0');
INSERT INTO member VALUES ('123456', '512224', '512224', '512224', '123456', 'woman', '988123456', '123@abc', '0');
INSERT INTO member VALUES ('curry', '987654321', '123456789', '123456789', 'rgrgregr', 'man', '1232165', '1g586r4g5rg45@gamil.com', '0');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `ID` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `nofile` varchar(20) DEFAULT NULL,
  `pathfile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO menu VALUES ('1', '玉米培根蛋餅', '70', '1', 'item');
INSERT INTO menu VALUES ('2', '蔥抓餅', '50', '2', 'item');
INSERT INTO menu VALUES ('3', '起司蛋餅', '60', '3', 'item');
INSERT INTO menu VALUES ('4', '肉鬆蛋餅', '60', '4', 'item');
INSERT INTO menu VALUES ('5', '蔥油蛋餅', '60', '5', 'item');
INSERT INTO menu VALUES ('6', '蘿蔔糕', '70', '6', 'item');
INSERT INTO menu VALUES ('7', '異國蔥抓餅', '50', '7', 'item');
INSERT INTO menu VALUES ('8', '雙層肉蛋堡', '100', '8', 'item');
INSERT INTO menu VALUES ('9', '雞塊', '60', '9', 'item');
INSERT INTO menu VALUES ('10', '歐洲紅茶', '30', '10', 'item');
INSERT INTO menu VALUES ('11', '清香綠茶', '40', '11', 'item');
INSERT INTO menu VALUES ('12', '奶茶', '50', '12', 'item');
INSERT INTO menu VALUES ('13', '招牌漢堡', '80', '13', 'item');
INSERT INTO menu VALUES ('14', '煙熏雞蛋堡', '60', '14', 'item');
INSERT INTO menu VALUES ('15',  '厚片培根漢堡', '70', '15', 'item');
INSERT INTO menu VALUES ('16', '鮪魚玉米堡', '60', '16', 'item');
INSERT INTO menu VALUES ('17', '薯餅滿福堡', '50', '17', 'item');
INSERT INTO menu VALUES ('18', '豬肉滿福堡', '70', '18', 'item');

-- ----------------------------
-- Table structure for `shoporder`
-- ----------------------------
DROP TABLE IF EXISTS `shoporder`;
CREATE TABLE `shoporder` (
  `no` int(20) NOT NULL,
  `nofile` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `total_price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoporder
-- ----------------------------

-- ----------------------------
-- Table structure for `burger`
-- ----------------------------
DROP TABLE IF EXISTS `burger`;
CREATE TABLE `burger` (
  `ID` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(20) NOT NULL,
  `nofile` varchar(20) NOT NULL,
  `pathfile` varchar(20) NOT NULL,
  `ll` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of burger
-- ----------------------------
INSERT INTO burger VALUES ('1', '招牌漢堡', '80', '13', 'item', '300');
INSERT INTO burger VALUES ('5', '薯餅滿福堡', '50', '17', 'item', '300');
INSERT INTO burger VALUES ('4', '鮪魚玉米堡', '60', '16', 'item', '300');
INSERT INTO burger VALUES ('6', '豬肉滿福堡', '70', '18', 'item', '300');
INSERT INTO burger VALUES ('3', '厚片培根漢堡', '70', '15', 'item', '300');
INSERT INTO burger VALUES ('2', '煙熏雞蛋堡', '60', '14', 'item', '300');
