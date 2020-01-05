/*
Navicat MySQL Data Transfer

Source Server         : sql
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : guestboard

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2019-12-28 17:56:41
*/

SET FOREIGN_KEY_CHECKS=0;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestboard
-- ----------------------------

INSERT INTO guestboard VALUES ('3', '1', '1', '1', '1hjt\r\n', '2019-12-26');
INSERT INTO guestboard VALUES ('4', 'fdgfd', 'dsds', 'fdgfdd', 'dssf', '2019-12-26');

