/*
Navicat MySQL Data Transfer

Source Server         : sql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : cart

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-12-27 23:00:08
*/

SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO cart VALUES ('1', '6', 'item', '蘿蔔糕', '1', '70', 'iosccc', '70');
