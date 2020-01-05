/*
Navicat MySQL Data Transfer

Source Server         : menu
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : product

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2019-12-28 23:00:50
*/

SET FOREIGN_KEY_CHECKS=0;
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
