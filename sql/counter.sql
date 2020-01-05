/*
Navicat MySQL Data Transfer

Source Server         : sql
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : counter

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2019-12-29 17:56:28
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `counter`
-- ----------------------------
DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `counter` int(20) NOT NULL,
  PRIMARY KEY (`counter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of counter
-- ----------------------------
INSERT INTO counter VALUES ('1');
