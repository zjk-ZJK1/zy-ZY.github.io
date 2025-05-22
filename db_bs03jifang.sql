/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50087
Source Host           : localhost:3306
Source Database       : db_bs03jifang

Target Server Type    : MYSQL
Target Server Version : 50087
File Encoding         : 65001

Date: 2025-04-07 14:22:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `adminId` int(11) NOT NULL auto_increment,
  `adminName` varchar(255) default NULL,
  `adminPassword` varchar(255) default NULL,
  PRIMARY KEY  (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `t_ggtype`
-- ----------------------------
DROP TABLE IF EXISTS `t_ggtype`;
CREATE TABLE `t_ggtype` (
  `ggtypeId` int(11) NOT NULL auto_increment,
  `ggtypeName` varchar(255) default NULL,
  `ggtypeMark` varchar(255) default NULL,
  PRIMARY KEY  (`ggtypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ggtype
-- ----------------------------
INSERT INTO `t_ggtype` VALUES ('1', '放假通知', '放假通知放假通知放假通知放假通知放假通知放假通知');

-- ----------------------------
-- Table structure for `t_gonggao`
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `gonggaoId` int(11) NOT NULL auto_increment,
  `gonggaoName` varchar(255) default NULL,
  `gonggaoMark` longtext,
  `gonggaoImg` varchar(255) default NULL,
  `gonggaoImgName` varchar(255) default NULL,
  `gonggaoDate` datetime default NULL,
  `ggtypeId` int(11) default NULL,
  `ggtypeName` varchar(255) default NULL,
  PRIMARY KEY  (`gonggaoId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('1', '阿三顶顶法案的发射点方法', '<p style=\"text-indent:2em;\">\r\n	<span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span>\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><span>阿三顶顶法案的发射点方法</span><br />\r\n</span>\r\n</p>', null, null, '2025-04-07 14:21:55', '1', '放假通知');

-- ----------------------------
-- Table structure for `t_jcbiaoti`
-- ----------------------------
DROP TABLE IF EXISTS `t_jcbiaoti`;
CREATE TABLE `t_jcbiaoti` (
  `jcbiaotiId` int(11) NOT NULL auto_increment,
  `jcbiaotiName` varchar(255) default NULL COMMENT '汉字',
  `jcbiaotiNeirong` varchar(255) default NULL COMMENT 'url',
  `jcbiaotiMark` varchar(255) default NULL,
  `jcbiaotiMark1` varchar(255) default NULL,
  `jcbiaotiMark2` varchar(255) default NULL,
  `jcbiaotiPaixu` int(11) default NULL,
  `jcbiaotiType` int(11) default NULL COMMENT '0网页导航1admin导航2user导航3yonghu导航4juese导航',
  `jcbiaotiType1` int(11) default NULL,
  `jcbiaotiType2` int(11) default NULL,
  PRIMARY KEY  (`jcbiaotiId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jcbiaoti
-- ----------------------------
INSERT INTO `t_jcbiaoti` VALUES ('1', '通知信息', null, null, null, null, '1', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('2', '运维人员', null, null, null, null, '2', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('3', '用户信息', null, null, null, null, '3', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('4', '机房信息', null, null, null, null, '4', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('5', '设备信息', null, null, null, null, '5', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('6', '报警维修', null, null, null, null, '6', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('7', '调拨报废', null, null, null, null, '7', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('8', '统计分析', null, null, null, null, '8', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('9', '通知信息', null, null, null, null, '1', '3', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('10', '机房信息', null, null, null, null, '2', '3', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('11', '设备信息', null, null, null, null, '3', '3', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('12', '报警维修', null, null, null, null, '4', '3', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('13', '调拨报废', null, null, null, null, '5', '3', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('14', '通知信息', null, null, null, null, '1', '2', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('15', '咨询反馈', null, null, null, null, '2', '2', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('16', '机房信息', null, null, null, null, '3', '2', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('17', '设备信息', null, null, null, null, '4', '2', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('18', '报警信息', null, null, null, null, '5', '2', '0', null);

-- ----------------------------
-- Table structure for `t_jcdaohang`
-- ----------------------------
DROP TABLE IF EXISTS `t_jcdaohang`;
CREATE TABLE `t_jcdaohang` (
  `jcdaohangId` int(11) NOT NULL auto_increment,
  `jcdaohangName` varchar(255) default NULL COMMENT '汉字',
  `jcdaohangNeirong` varchar(255) default NULL COMMENT 'url',
  `jcdaohangMark` varchar(255) default NULL,
  `jcdaohangMark1` varchar(255) default NULL,
  `jcdaohangMark2` varchar(255) default NULL,
  `jcdaohangPaixu` int(11) default NULL,
  `jcdaohangType` int(11) default NULL COMMENT '0网页导航1admin导航2user导航3yonghu导航4juese导航',
  `jcdaohangType1` int(11) default NULL,
  `jcdaohangType2` int(11) default NULL,
  `jcbiaotiId` int(11) default NULL,
  `jcbiaotiName` varchar(255) default NULL,
  PRIMARY KEY  (`jcdaohangId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jcdaohang
-- ----------------------------
INSERT INTO `t_jcdaohang` VALUES ('1', '通知类型', 'ggtype.jsp', null, null, null, '1', '1', '0', null, '1', null);
INSERT INTO `t_jcdaohang` VALUES ('2', '通知信息', 'gonggao.jsp', null, null, null, '2', '1', '0', null, '1', null);
INSERT INTO `t_jcdaohang` VALUES ('3', '运维人员', 'yonghu.jsp', null, null, null, '1', '1', '0', null, '2', null);
INSERT INTO `t_jcdaohang` VALUES ('4', '用户信息', 'user.jsp', null, null, null, '1', '1', '0', null, '3', null);
INSERT INTO `t_jcdaohang` VALUES ('5', '咨询反馈', 'uyijian.jsp', null, null, null, '2', '1', '0', null, '3', null);
INSERT INTO `t_jcdaohang` VALUES ('6', '机房信息', 'sjleixing.jsp', null, null, null, '1', '1', '0', null, '4', null);
INSERT INTO `t_jcdaohang` VALUES ('7', '设备信息', 'shuju.jsp', null, null, null, '1', '1', '0', null, '5', null);
INSERT INTO `t_jcdaohang` VALUES ('8', '报警信息', 'sjshaochu.jsp', null, null, null, '1', '1', '0', null, '6', null);
INSERT INTO `t_jcdaohang` VALUES ('9', '维修信息', 'sjduochu.jsp', null, null, null, '2', '1', '0', null, '6', null);
INSERT INTO `t_jcdaohang` VALUES ('10', '调拨信息', 'sjpinglun.jsp', null, null, null, '1', '1', '0', null, '7', null);
INSERT INTO `t_jcdaohang` VALUES ('11', '报废信息', 'sjjianchu.jsp', null, null, null, '2', '1', '0', null, '7', null);
INSERT INTO `t_jcdaohang` VALUES ('12', '设备统计', 'zhuzhuangtu.jsp?tijiaoUrl=shuliangTongji', null, null, null, '1', '1', '0', null, '8', null);
INSERT INTO `t_jcdaohang` VALUES ('13', '状态统计', 'bingzhuangtu.jsp?tijiaoUrl=shujuTongji', null, null, null, '2', '1', '0', null, '8', null);
INSERT INTO `t_jcdaohang` VALUES ('14', '通知信息', 'gonggao.jsp', null, null, null, '1', '3', '0', null, '9', null);
INSERT INTO `t_jcdaohang` VALUES ('15', '机房信息', 'sjleixing.jsp', null, null, null, '1', '3', '0', null, '10', null);
INSERT INTO `t_jcdaohang` VALUES ('16', '设备信息', 'shuju.jsp', null, null, null, '1', '3', '0', null, '11', null);
INSERT INTO `t_jcdaohang` VALUES ('17', '报警信息', 'sjshaochu.jsp', null, null, null, '1', '3', '0', null, '12', null);
INSERT INTO `t_jcdaohang` VALUES ('18', '维修信息', 'sjduochu.jsp', null, null, null, '2', '3', '0', null, '12', null);
INSERT INTO `t_jcdaohang` VALUES ('19', '调拨信息', 'sjpinglun.jsp', null, null, null, '1', '3', '0', null, '13', null);
INSERT INTO `t_jcdaohang` VALUES ('20', '报废信息', 'sjjianchu.jsp', null, null, null, '2', '3', '0', null, '13', null);
INSERT INTO `t_jcdaohang` VALUES ('21', '通知信息', 'gonggao.jsp', null, null, null, '1', '2', '0', null, '14', null);
INSERT INTO `t_jcdaohang` VALUES ('22', '咨询反馈', 'uyijian.jsp', null, null, null, '1', '2', '0', null, '15', null);
INSERT INTO `t_jcdaohang` VALUES ('23', '机房信息', 'sjleixing.jsp', null, null, null, '1', '2', '0', null, '16', null);
INSERT INTO `t_jcdaohang` VALUES ('24', '设备信息', 'shuju.jsp', null, null, null, '1', '2', '0', null, '17', null);
INSERT INTO `t_jcdaohang` VALUES ('25', '报警信息', 'sjshaochu.jsp', null, null, null, '1', '2', '0', null, '18', null);

-- ----------------------------
-- Table structure for `t_jcpeizhi`
-- ----------------------------
DROP TABLE IF EXISTS `t_jcpeizhi`;
CREATE TABLE `t_jcpeizhi` (
  `jcpeizhiId` int(11) NOT NULL auto_increment,
  `jcpeizhiName` varchar(255) default NULL,
  `jcpeizhiNeirong` varchar(255) default NULL,
  `jcpeizhiMark` varchar(255) default NULL,
  `bumenBieming` varchar(255) default NULL,
  `buyuanBieming` varchar(255) default NULL,
  `buzhiBieming` varchar(255) default NULL,
  `userBieming` varchar(255) default NULL COMMENT 'userBieming',
  `uxtypeBieming` varchar(255) default NULL,
  `uxinxiBieming` varchar(255) default NULL,
  `uyijianBieming` varchar(255) default NULL,
  `roleBieming` varchar(255) default NULL,
  `byumenBieming` varchar(255) default NULL,
  `byuyuanBieming` varchar(255) default NULL,
  `byuzhiBieming` varchar(255) default NULL,
  `yonghuBieming` varchar(255) default NULL COMMENT 'yonghuBieming',
  `yxtypeBieming` varchar(255) default NULL,
  `yxinxiBieming` varchar(255) default NULL,
  `yyijianBieming` varchar(255) default NULL,
  `yhroleBieming` varchar(255) default NULL,
  `ggtypeBieming` varchar(255) default NULL,
  `gonggaoBieming` varchar(255) default NULL,
  `ggpinglunBieming` varchar(255) default NULL,
  `shujuBieming` varchar(255) default NULL,
  `sjduochuBieming` varchar(255) default NULL,
  `sjjianchuBieming` varchar(255) default NULL,
  `sjlaiyuanBieming` varchar(255) default NULL,
  `sjleixingBieming` varchar(255) default NULL,
  `sjpinglunBieming` varchar(255) default NULL,
  `sjqitaBieming` varchar(255) default NULL,
  `sjshaochuBieming` varchar(255) default NULL,
  `sjxingtaiBieming` varchar(255) default NULL,
  `jcpeizhiType` int(11) default NULL,
  `jcpeizhiType1` int(11) default NULL,
  `jcpeizhiType2` int(11) default NULL,
  PRIMARY KEY  (`jcpeizhiId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jcpeizhi
-- ----------------------------
INSERT INTO `t_jcpeizhi` VALUES ('1', '智能化机房管理', null, null, null, null, null, '用户', null, null, '咨询', null, null, null, null, '运维', null, null, null, null, '类型', '通知', null, '设备', '维修', '报废', '调控', '机房', '调拨', null, '报警', null, null, null, null);

-- ----------------------------
-- Table structure for `t_rizhi`
-- ----------------------------
DROP TABLE IF EXISTS `t_rizhi`;
CREATE TABLE `t_rizhi` (
  `rizhiId` int(11) NOT NULL auto_increment,
  `rizhiName` varchar(255) NOT NULL,
  `dengluIp` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`rizhiId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rizhi
-- ----------------------------
INSERT INTO `t_rizhi` VALUES ('1', 'admin', '127.0.0.1', '2025-04-07 14:12:02');
INSERT INTO `t_rizhi` VALUES ('2', 'admin', '127.0.0.1', '2025-04-07 14:20:44');

-- ----------------------------
-- Table structure for `t_shuju`
-- ----------------------------
DROP TABLE IF EXISTS `t_shuju`;
CREATE TABLE `t_shuju` (
  `shujuId` int(11) NOT NULL auto_increment,
  `shujuName` varchar(255) default NULL,
  `shujuMark` varchar(2550) default NULL,
  `shujuMark1` varchar(2550) default NULL,
  `shujuMark2` varchar(2550) default NULL,
  `shujuMark3` varchar(2550) default NULL,
  `shujuDate` datetime default NULL,
  `shujuDate1` datetime default NULL,
  `shujuZong` int(11) default NULL,
  `shujuZong1` int(11) default NULL,
  `shujuZong2` int(11) default NULL,
  `shujuDouble` double default NULL,
  `shujuDouble1` double default NULL,
  `shujuDouble2` double default NULL,
  `shujuDouble3` double default NULL,
  `shujuDouble4` double default NULL,
  `shujuType` int(11) default NULL,
  `shujuType1` int(11) default NULL,
  `shujuType2` int(11) default NULL,
  `shujuImg` varchar(255) default NULL,
  `shujuImgName` varchar(255) default NULL,
  `sjleixingId` int(11) default NULL,
  `sjleixingName` varchar(255) default NULL,
  `sjxingtaiId` int(11) default NULL,
  `sjxingtaiName` varchar(255) default NULL,
  `userId` int(11) default NULL,
  `userName` varchar(255) default NULL,
  `bumenId` int(11) default NULL,
  `bumenName` varchar(255) default NULL,
  `buyuanId` int(11) default NULL,
  `buyuanName` varchar(255) default NULL,
  `yonghuId` int(11) default NULL,
  `yonghuName` varchar(255) default NULL,
  `byumenId` int(11) default NULL,
  `byumenName` varchar(255) default NULL,
  `byuyuanId` int(11) default NULL,
  `byuyuanName` varchar(255) default NULL,
  `buzhiId` int(11) default NULL,
  `buzhiName` varchar(255) default NULL,
  `roleId` int(11) default NULL,
  `roleName` varchar(255) default NULL,
  `byuzhiId` int(11) default NULL,
  `byuzhiName` varchar(255) default NULL,
  `yhroleId` int(11) default NULL,
  `yhroleName` varchar(255) default NULL,
  PRIMARY KEY  (`shujuId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shuju
-- ----------------------------
INSERT INTO `t_shuju` VALUES ('1', '设备信息1', '设备信息', '设备信息设备信息', '设备信息设备信息设备信息设备信息设备信息设备信息', null, '2025-04-07 14:13:13', null, null, null, null, '23', null, null, null, null, '0', '0', null, '/file/0.jpg', '0.jpg', '1', '机房信息1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('2', '设备信息2', '设备信息', '设备信息设备信息', '设备信息设备信息设备信息设备信息设备信息设备信息', '', '2025-04-07 14:13:13', null, null, null, null, '3434', null, null, null, null, '0', '0', null, '/file/1.jpg', '1.jpg', '1', '机房信息1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('3', '设备信息3', '设备信息', '设备信息设备信息', '设备信息设备信息设备信息设备信息设备信息设备信息', '', '2025-04-07 14:13:13', null, null, null, null, '234', null, null, null, null, '0', '0', null, '/file/2.jpg', '2.jpg', '2', '机房信息2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('4', '设备信息4', '设备信息', '设备信息设备信息', '设备信息设备信息设备信息设备信息设备信息设备信息', '', '2025-04-07 14:13:13', null, null, null, null, '543', null, null, null, null, '0', '0', null, '/file/0.jpg', '0.jpg', '3', '机房信息3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('5', '设备信息5', '设备信息', '设备信息设备信息', '设备信息设备信息设备信息设备信息设备信息设备信息', '', '2025-04-07 14:13:13', null, null, null, null, '456', null, null, null, null, '0', '0', null, '/file/1.jpg', '1.jpg', '4', '机房信息4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('6', '设备信息6', '设备信息', '设备信息设备信息', '设备信息设备信息设备信息设备信息设备信息设备信息', '', '2025-04-07 14:13:13', null, null, null, null, '765', null, null, null, null, '0', '0', null, '/file/2.jpg', '2.jpg', '1', '机房信息1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('7', '设备信息7', '设备信息', '设备信息设备信息', '设备信息设备信息设备信息设备信息设备信息设备信息', '', '2025-04-07 14:13:13', null, null, null, null, '67', null, null, null, null, '0', '0', null, '/file/0.jpg', '0.jpg', '2', '机房信息2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('8', '设备信息8', '设备信息', '设备信息设备信息', '设备信息设备信息设备信息设备信息设备信息设备信息', '', '2025-04-07 14:13:13', null, null, null, null, '234', null, null, null, null, '0', '0', null, '/file/1.jpg', '1.jpg', '1', '机房信息1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('9', '设备信息9', '设备信息', '设备信息设备信息', '设备信息设备信息设备信息设备信息设备信息设备信息', '', '2025-04-07 14:13:13', null, null, null, null, '546', null, null, null, null, '0', '0', null, '/file/2.jpg', '2.jpg', '2', '机房信息2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('10', '设备信息10', '设备信息', '设备信息设备信息', '设备信息设备信息设备信息设备信息设备信息设备信息', '', '2025-04-07 14:13:13', null, null, null, null, '657', null, null, null, null, '0', '0', null, '/file/0.jpg', '0.jpg', '3', '机房信息3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('11', '设备信息11', '设备信息', '设备信息设备信息', '设备信息设备信息设备信息设备信息设备信息设备信息', '', '2025-04-07 14:13:13', null, null, null, null, '786', null, null, null, null, '2', '0', null, '/file/1.jpg', '1.jpg', '1', '机房信息1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('12', '设备信息12', '设备信息', '设备信息设备信息', '设备信息设备信息设备信息设备信息设备信息设备信息', '', '2025-04-07 14:13:13', null, null, null, null, '213', null, null, null, null, '1', '0', null, '/file/2.jpg', '2.jpg', '2', '机房信息2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_sjduochu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sjduochu`;
CREATE TABLE `t_sjduochu` (
  `sjduochuId` int(11) NOT NULL auto_increment,
  `sjduochuName` varchar(255) default NULL,
  `sjduochuMark` varchar(2550) default NULL,
  `sjduochuMark1` varchar(2550) default NULL,
  `sjduochuMark2` varchar(2550) default NULL,
  `sjduochuMark3` varchar(2550) default NULL,
  `sjduochuDate` datetime default NULL,
  `sjduochuDate1` datetime default NULL,
  `sjduochuZong` int(11) default NULL,
  `sjduochuZong1` int(11) default NULL,
  `sjduochuZong2` int(11) default NULL,
  `sjduochuDouble` double default NULL,
  `sjduochuDouble1` double default NULL,
  `sjduochuDouble2` double default NULL,
  `sjduochuType` int(11) default NULL,
  `sjduochuType1` int(11) default NULL,
  `sjduochuType2` int(11) default NULL,
  `sjqitaId` int(11) default NULL,
  `sjqitaName` varchar(255) default NULL,
  `sjlaiyuanId` int(11) default NULL,
  `sjlaiyuanName` varchar(255) default NULL,
  `sjduochuImg` varchar(255) default NULL,
  `sjduochuImgName` varchar(255) default NULL,
  `shujuId` int(11) default NULL,
  `shujuName` varchar(255) default NULL,
  `sjleixingId` int(11) default NULL,
  `sjleixingName` varchar(255) default NULL,
  `sjxingtaiId` int(11) default NULL,
  `sjxingtaiName` varchar(255) default NULL,
  `userId` int(11) default NULL,
  `userName` varchar(255) default NULL,
  `bumenId` int(11) default NULL,
  `bumenName` varchar(255) default NULL,
  `buyuanId` int(11) default NULL,
  `buyuanName` varchar(255) default NULL,
  `yonghuId` int(11) default NULL,
  `yonghuName` varchar(255) default NULL,
  `byumenId` int(11) default NULL,
  `byumenName` varchar(255) default NULL,
  `byuyuanId` int(11) default NULL,
  `byuyuanName` varchar(255) default NULL,
  `buzhiId` int(11) default NULL,
  `buzhiName` varchar(255) default NULL,
  `roleId` int(11) default NULL,
  `roleName` varchar(255) default NULL,
  `byuzhiId` int(11) default NULL,
  `byuzhiName` varchar(255) default NULL,
  `yhroleId` int(11) default NULL,
  `yhroleName` varchar(255) default NULL,
  PRIMARY KEY  (`sjduochuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sjduochu
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sjjianchu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sjjianchu`;
CREATE TABLE `t_sjjianchu` (
  `sjjianchuId` int(11) NOT NULL auto_increment,
  `sjjianchuName` varchar(255) default NULL,
  `sjjianchuMark` varchar(2550) default NULL,
  `sjjianchuMark1` varchar(2550) default NULL,
  `sjjianchuMark2` varchar(2550) default NULL,
  `sjjianchuMark3` varchar(2550) default NULL,
  `sjjianchuDate` datetime default NULL,
  `sjjianchuDate1` datetime default NULL,
  `sjjianchuZong` int(11) default NULL,
  `sjjianchuZong1` int(11) default NULL,
  `sjjianchuZong2` int(11) default NULL,
  `sjjianchuDouble` double default NULL,
  `sjjianchuDouble1` double default NULL,
  `sjjianchuDouble2` double default NULL,
  `sjjianchuType` int(11) default NULL,
  `sjjianchuType1` int(11) default NULL,
  `sjjianchuType2` int(11) default NULL,
  `sjqitaId` int(11) default NULL,
  `sjqitaName` varchar(255) default NULL,
  `sjlaiyuanId` int(11) default NULL,
  `sjlaiyuanName` varchar(255) default NULL,
  `sjjianchuImg` varchar(255) default NULL,
  `sjjianchuImgName` varchar(255) default NULL,
  `shujuId` int(11) default NULL,
  `shujuName` varchar(255) default NULL,
  `sjleixingId` int(11) default NULL,
  `sjleixingName` varchar(255) default NULL,
  `sjxingtaiId` int(11) default NULL,
  `sjxingtaiName` varchar(255) default NULL,
  `userId` int(11) default NULL,
  `userName` varchar(255) default NULL,
  `bumenId` int(11) default NULL,
  `bumenName` varchar(255) default NULL,
  `buyuanId` int(11) default NULL,
  `buyuanName` varchar(255) default NULL,
  `yonghuId` int(11) default NULL,
  `yonghuName` varchar(255) default NULL,
  `byumenId` int(11) default NULL,
  `byumenName` varchar(255) default NULL,
  `byuyuanId` int(11) default NULL,
  `byuyuanName` varchar(255) default NULL,
  `buzhiId` int(11) default NULL,
  `buzhiName` varchar(255) default NULL,
  `roleId` int(11) default NULL,
  `roleName` varchar(255) default NULL,
  `byuzhiId` int(11) default NULL,
  `byuzhiName` varchar(255) default NULL,
  `yhroleId` int(11) default NULL,
  `yhroleName` varchar(255) default NULL,
  PRIMARY KEY  (`sjjianchuId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sjjianchu
-- ----------------------------
INSERT INTO `t_sjjianchu` VALUES ('1', '设备报废1', '设备报废', '设备报废设备报废', '设备报废设备报废设备报废设备报废设备报废设备报废设备报废设备报废设备报废设备报废设备报废设备报废设备报废设备报废设备报废设备报废设备报废设备报废', null, '2025-04-07 14:18:23', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, '11', '设备信息11', '1', '机房信息1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_sjlaiyuan`
-- ----------------------------
DROP TABLE IF EXISTS `t_sjlaiyuan`;
CREATE TABLE `t_sjlaiyuan` (
  `sjlaiyuanId` int(11) NOT NULL auto_increment,
  `sjlaiyuanName` varchar(255) default NULL,
  `sjlaiyuanMark` text,
  `sjlaiyuanMark1` varchar(255) default NULL,
  `sjlaiyuanMark2` varchar(255) default NULL,
  `sjlaiyuanPhone` varchar(255) default NULL,
  `sjlaiyuanDizhi` varchar(255) default NULL,
  `sjlaiyuanDate` datetime default NULL,
  `sjlaiyuanDate1` datetime default NULL,
  `sjlaiyuanType` int(11) default NULL,
  `sjlaiyuanType1` int(11) default NULL,
  `sjlaiyuanDouble` double default NULL,
  `sjlaiyuanDouble1` double default NULL,
  PRIMARY KEY  (`sjlaiyuanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sjlaiyuan
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sjleixing`
-- ----------------------------
DROP TABLE IF EXISTS `t_sjleixing`;
CREATE TABLE `t_sjleixing` (
  `sjleixingId` int(11) NOT NULL auto_increment,
  `sjleixingName` varchar(255) default NULL,
  `sjleixingMark` varchar(255) default NULL,
  `sjleixingMark1` varchar(255) default NULL,
  `sjleixingMark2` varchar(255) default NULL,
  `sjleixingPhone` varchar(255) default NULL,
  `sjleixingDizhi` varchar(255) default NULL,
  `sjleixingDate` datetime default NULL,
  `sjleixingDate1` datetime default NULL,
  `sjleixingType` int(11) default NULL,
  `sjleixingType1` int(11) default NULL,
  `sjleixingDouble` double default NULL,
  `sjleixingDouble1` double default NULL,
  PRIMARY KEY  (`sjleixingId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sjleixing
-- ----------------------------
INSERT INTO `t_sjleixing` VALUES ('1', '机房信息1', '机房信息', '机房信息机房信息', '机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息', null, '机房信息机房信息机房信息', null, null, null, null, null, null);
INSERT INTO `t_sjleixing` VALUES ('2', '机房信息2', '机房信息', '机房信息机房信息', '机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息', null, '机房信息机房信息机房信息', null, null, null, null, null, null);
INSERT INTO `t_sjleixing` VALUES ('3', '机房信息3', '机房信息', '机房信息机房信息', '机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息', null, '机房信息机房信息机房信息', null, null, null, null, null, null);
INSERT INTO `t_sjleixing` VALUES ('4', '机房信息4', '机房信息', '机房信息机房信息', '机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息机房信息', null, '机房信息机房信息机房信息', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_sjpinglun`
-- ----------------------------
DROP TABLE IF EXISTS `t_sjpinglun`;
CREATE TABLE `t_sjpinglun` (
  `sjpinglunId` int(11) NOT NULL auto_increment,
  `sjpinglunName` varchar(2550) default NULL,
  `sjpinglunMark` varchar(2550) default NULL,
  `sjpinglunDate` datetime default NULL,
  `sjpinglunDate1` datetime default NULL,
  `sjpinglunType` int(11) default NULL,
  `sjpinglunType1` int(11) default NULL,
  `sjpinglunImg` varchar(255) default NULL,
  `sjpinglunImgName` varchar(255) default NULL,
  `shujuId` int(11) default NULL,
  `shujuName` varchar(255) default NULL,
  `sjleixingId` int(11) default NULL,
  `sjleixingName` varchar(255) default NULL,
  `userId` int(11) default NULL,
  `userName` varchar(255) default NULL,
  `bumenId` int(11) default NULL,
  `bumenName` varchar(255) default NULL,
  `buyuanId` int(11) default NULL,
  `buyuanName` varchar(255) default NULL,
  `yonghuId` int(11) default NULL,
  `yonghuName` varchar(255) default NULL,
  `byumenId` int(11) default NULL,
  `byumenName` varchar(255) default NULL,
  `byuyuanId` int(11) default NULL,
  `byuyuanName` varchar(255) default NULL,
  `buzhiId` int(11) default NULL,
  `buzhiName` varchar(255) default NULL,
  `roleId` int(11) default NULL,
  `roleName` varchar(255) default NULL,
  `byuzhiId` int(11) default NULL,
  `byuzhiName` varchar(255) default NULL,
  `yhroleId` int(11) default NULL,
  `yhroleName` varchar(255) default NULL,
  PRIMARY KEY  (`sjpinglunId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sjpinglun
-- ----------------------------
INSERT INTO `t_sjpinglun` VALUES ('1', '阿道夫大师傅', '阿道夫大师傅阿道夫大师傅阿道夫大师傅阿道夫大师傅阿道夫大师傅阿道夫大师傅阿道夫大师傅阿道夫大师傅阿道夫大师傅阿道夫大师傅阿道夫大师傅', '2025-04-07 14:18:03', null, '0', null, null, null, '12', '设备信息12', '2', '机房信息2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_sjshaochu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sjshaochu`;
CREATE TABLE `t_sjshaochu` (
  `sjshaochuId` int(11) NOT NULL auto_increment,
  `sjshaochuName` varchar(255) default NULL,
  `sjshaochuMark` varchar(2550) default NULL,
  `sjshaochuMark1` varchar(2550) default NULL,
  `sjshaochuMark2` varchar(2550) default NULL,
  `sjshaochuMark3` varchar(2550) default NULL,
  `sjshaochuDate` datetime default NULL,
  `sjshaochuDate1` datetime default NULL,
  `sjshaochuZong` int(11) default NULL,
  `sjshaochuZong1` int(11) default NULL,
  `sjshaochuZong2` int(11) default NULL,
  `sjshaochuDouble` double default NULL,
  `sjshaochuDouble1` double default NULL,
  `sjshaochuDouble2` double default NULL,
  `sjshaochuType` int(11) default NULL,
  `sjshaochuType1` int(11) default NULL,
  `sjshaochuType2` int(11) default NULL,
  `sjqitaId` int(11) default NULL,
  `sjqitaName` varchar(255) default NULL,
  `sjlaiyuanId` int(11) default NULL,
  `sjlaiyuanName` varchar(255) default NULL,
  `sjshaochuImg` varchar(255) default NULL,
  `sjshaochuImgName` varchar(255) default NULL,
  `shujuId` int(11) default NULL,
  `shujuName` varchar(255) default NULL,
  `sjleixingId` int(11) default NULL,
  `sjleixingName` varchar(255) default NULL,
  `sjxingtaiId` int(11) default NULL,
  `sjxingtaiName` varchar(255) default NULL,
  `userId` int(11) default NULL,
  `userName` varchar(255) default NULL,
  `bumenId` int(11) default NULL,
  `bumenName` varchar(255) default NULL,
  `buyuanId` int(11) default NULL,
  `buyuanName` varchar(255) default NULL,
  `yonghuId` int(11) default NULL,
  `yonghuName` varchar(255) default NULL,
  `byumenId` int(11) default NULL,
  `byumenName` varchar(255) default NULL,
  `byuyuanId` int(11) default NULL,
  `byuyuanName` varchar(255) default NULL,
  `buzhiId` int(11) default NULL,
  `buzhiName` varchar(255) default NULL,
  `roleId` int(11) default NULL,
  `roleName` varchar(255) default NULL,
  `byuzhiId` int(11) default NULL,
  `byuzhiName` varchar(255) default NULL,
  `yhroleId` int(11) default NULL,
  `yhroleName` varchar(255) default NULL,
  PRIMARY KEY  (`sjshaochuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sjshaochu
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL auto_increment,
  `userName` varchar(255) default NULL,
  `userPassword` varchar(255) default NULL,
  `userXingming` varchar(255) default NULL,
  `userSex` int(11) default NULL,
  `userAge` int(11) default NULL,
  `userMinzu` varchar(255) default NULL,
  `userPhone` varchar(255) default NULL,
  `userMark` varchar(2550) default NULL,
  `userMark1` varchar(255) default NULL,
  `userMark2` varchar(255) default NULL,
  `userMark3` varchar(255) default NULL,
  `userMark4` varchar(255) default NULL,
  `userDate` datetime default NULL,
  `userDate1` datetime default NULL,
  `userDate2` datetime default NULL,
  `userType` int(11) default NULL,
  `userType1` int(11) default NULL,
  `userType2` int(11) default NULL,
  `userDouble` double default NULL,
  `userDouble1` double default NULL,
  `userDouble2` double default NULL,
  `userZong` int(11) default NULL,
  `userZong1` int(11) default NULL,
  `userZong2` int(11) default NULL,
  `userImg` varchar(255) default NULL,
  `userImgName` varchar(255) default NULL,
  `roleId` int(11) default NULL,
  `roleName` varchar(255) default NULL,
  `bumenId` int(11) default NULL,
  `bumenName` varchar(255) default NULL,
  `buyuanId` int(11) default NULL,
  `buyuanName` varchar(255) default NULL,
  `buzhiId` int(11) default NULL,
  `buzhiName` varchar(255) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------

-- ----------------------------
-- Table structure for `t_uyijian`
-- ----------------------------
DROP TABLE IF EXISTS `t_uyijian`;
CREATE TABLE `t_uyijian` (
  `uyijianId` int(11) NOT NULL auto_increment,
  `uyijianName` varchar(255) default NULL,
  `uyijianMark` varchar(2550) default NULL,
  `uyijianMark1` varchar(2550) default NULL,
  `uyijianMark2` varchar(2550) default NULL,
  `uyijianImg` varchar(255) default NULL,
  `uyijianImgName` varchar(255) default NULL,
  `uyijianDate` datetime default NULL,
  `uyijianZong` int(11) default NULL,
  `uyijianZong1` int(11) default NULL,
  `uyijianZong2` int(11) default NULL,
  `uyijianDouble` double default NULL,
  `uyijianDouble1` double default NULL,
  `uyijianDouble2` double default NULL,
  `uyijianType` int(11) default NULL,
  `uyijianType1` int(11) default NULL,
  `uyijianType2` int(11) default NULL,
  `uxtypeId` int(11) default NULL,
  `uxtypeName` varchar(255) default NULL,
  `userId` int(11) default NULL,
  `userName` varchar(255) default NULL,
  `bumenId` int(11) default NULL,
  `bumenName` varchar(255) default NULL,
  `buyuanId` int(11) default NULL,
  `buyuanName` varchar(255) default NULL,
  `buzhiId` int(11) default NULL,
  `buzhiName` varchar(255) default NULL,
  `roleId` int(11) default NULL,
  `roleName` varchar(255) default NULL,
  PRIMARY KEY  (`uyijianId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_uyijian
-- ----------------------------

-- ----------------------------
-- Table structure for `t_yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `t_yonghu`;
CREATE TABLE `t_yonghu` (
  `yonghuId` int(11) NOT NULL auto_increment,
  `yonghuName` varchar(255) default NULL,
  `yonghuPassword` varchar(255) default NULL,
  `yonghuXingming` varchar(255) default NULL,
  `yonghuSex` int(11) default NULL,
  `yonghuAge` int(11) default NULL,
  `yonghuPhone` varchar(255) default NULL,
  `yonghuMinzu` varchar(255) default NULL,
  `yonghuMark` varchar(255) default NULL,
  `yonghuMark1` varchar(255) default NULL,
  `yonghuMark2` varchar(255) default NULL,
  `yonghuMark3` varchar(255) default NULL,
  `yonghuMark4` varchar(255) default NULL,
  `yonghuDate` datetime default NULL,
  `yonghuDate1` datetime default NULL,
  `yonghuDate2` datetime default NULL,
  `yonghuType` int(11) default NULL,
  `yonghuType1` int(11) default NULL,
  `yonghuType2` int(11) default NULL,
  `yonghuDouble` double default NULL,
  `yonghuDouble1` double default NULL,
  `yonghuDouble2` double default NULL,
  `yonghuZong` int(11) default NULL,
  `yonghuZong1` int(11) default NULL,
  `yonghuZong2` int(11) default NULL,
  `yonghuImg` varchar(255) default NULL,
  `yonghuImgName` varchar(255) default NULL,
  `yhroleId` int(11) default NULL,
  `yhroleName` varchar(255) default NULL,
  `byuzhiId` int(11) default NULL,
  `byuzhiName` varchar(255) default NULL,
  `byumenId` int(11) default NULL,
  `byumenName` varchar(255) default NULL,
  `byuyuanId` int(11) default NULL,
  `byuyuanName` varchar(255) default NULL,
  `userId` int(11) default NULL,
  `userName` varchar(255) default NULL,
  `bumenId` int(11) default NULL,
  `bumenName` varchar(255) default NULL,
  `buyuanId` int(11) default NULL,
  `buyuanName` varchar(255) default NULL,
  `buzhiId` int(11) default NULL,
  `buzhiName` varchar(255) default NULL,
  PRIMARY KEY  (`yonghuId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_yonghu
-- ----------------------------
INSERT INTO `t_yonghu` VALUES ('1', 'yunwei', 'yunwei', 'yunwei', '0', '20', '13012345678', null, '爱的色放', '法大师傅答案打法撒士大夫发', null, null, null, '2025-04-07 14:21:37', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
