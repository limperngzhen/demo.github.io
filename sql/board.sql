/*
Navicat MySQL Data Transfer

Source Server         : sql
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : board

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2019-12-27 17:56:47
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestboard
-- ----------------------------

INSERT INTO guestboard VALUES ('11', '11', '11213', '12135', '153132', '2019-12-29');
INSERT INTO guestboard VALUES ('12', '54564', '4651', '111', '123', '2019-12-29');
INSERT INTO guestboard VALUES ('13', 'asd', 'asd', 'asd', 'adasd', '2019-12-29');

-- ----------------------------
-- Table structure for `guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE `guestbook` (
  `no` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `content` text,
  `putdate` date DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestbook
-- ----------------------------
INSERT INTO guestbook VALUES ('6', 'test', 'tet', 'ete', 'tett', '2019-12-04', null);
INSERT INTO guestbook VALUES ('7', 'test', 'tet', 'ete', 'tett', '2019-12-04', null);
INSERT INTO guestbook VALUES ('8', 'test', 'ts', 'tet', 'etete', '2019-12-04', null);
INSERT INTO guestbook VALUES ('9', 'test', 'ts', 'tet', 'etete', '2019-12-04', null);
INSERT INTO guestbook VALUES ('10', 'test', 'ts', 'tet', 'etete', '2019-12-04', null);
INSERT INTO guestbook VALUES ('13', '測試', 'wwww', '測試', '測試', '2019-12-04', null);

