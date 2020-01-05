/*
Navicat MySQL Data Transfer

Source Server         : sql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : member

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001


Date: 2019-12-28 23:00:22
*/

SET FOREIGN_KEY_CHECKS=0;
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
  `rank` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARACTER SET=UTF8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO member VALUES ('222', '222', '222', '222', '222', 'man', '222', '222@com.tw', '0');
INSERT INTO member VALUES ('mm', '0412', '04120412', '04120412', '6666', 'man', '6666', 'mm@gmail.com', '2');

