/*
Navicat MySQL Data Transfer

Source Server         : MySql Server
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : vungchuatravel

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-07-16 11:25:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for master_code
-- ----------------------------
DROP TABLE IF EXISTS `master_code`;
CREATE TABLE `master_code` (
  `CD_TP` varchar(20) NOT NULL COMMENT 'master code type',
  `LANG_CD` varchar(2) NOT NULL COMMENT 'language code',
  `MEANING` varchar(100) NOT NULL COMMENT 'code meanning',
  `SEQ` int(1) NOT NULL COMMENT 'code sequence',
  `CODE` varchar(1) NOT NULL COMMENT 'code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_code
-- ----------------------------

-- ----------------------------
-- Table structure for menu_category
-- ----------------------------
DROP TABLE IF EXISTS `menu_category`;
CREATE TABLE `menu_category` (
  `MN_ID` int(11) NOT NULL COMMENT 'menu code',
  `CATE_ID` int(11) NOT NULL COMMENT 'category code',
  `STATUS` int(11) NOT NULL DEFAULT '1' COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='menu and category foreign constraint';

-- ----------------------------
-- Records of menu_category
-- ----------------------------

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `MN_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Menu code',
  `MN_SEQ` int(2) NOT NULL COMMENT 'Menu Sequence',
  `MN_GRP_ID` int(11) NOT NULL COMMENT 'Menu group code',
  `MN_NM_EN` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'menu name in english',
  `MN_NM_VI` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Menu name in Vietnamese',
  PRIMARY KEY (`MN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='table menu content';

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('1', '1', '1', 'About Us', 'Giới Thiệu');
INSERT INTO `tb_menu` VALUES ('2', '2', '1', 'Tours', 'Tours');
INSERT INTO `tb_menu` VALUES ('3', '3', '1', 'News', 'Tin Tức');
INSERT INTO `tb_menu` VALUES ('4', '4', '1', 'Services', 'Dịch Vụ');
INSERT INTO `tb_menu` VALUES ('5', '5', '1', 'Hotel', 'Khách Sạn');
INSERT INTO `tb_menu` VALUES ('6', '6', '1', 'Restaurant', 'Nhà Hàng');
INSERT INTO `tb_menu` VALUES ('7', '7', '1', 'Contact', 'Liên Hệ');
INSERT INTO `tb_menu` VALUES ('8', '8', '1', 'Payment', 'Thanh Toán');

-- ----------------------------
-- Table structure for tb_menu_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu_group`;
CREATE TABLE `tb_menu_group` (
  `MN_GRP_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Menu group code',
  `MN_GRP_NM` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Menu group name',
  `MN_GRP_DESC` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Menu group description',
  PRIMARY KEY (`MN_GRP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_menu_group
-- ----------------------------
INSERT INTO `tb_menu_group` VALUES ('1', 'Main menu', 'Main menu list of website');

-- ----------------------------
-- Table structure for tb_slide
-- ----------------------------
DROP TABLE IF EXISTS `tb_slide`;
CREATE TABLE `tb_slide` (
  `SLD_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'SLIDE ID',
  `SLD_SEQ` int(2) NOT NULL DEFAULT '0' COMMENT 'SLIDE DISPLAY SEQUENCE',
  `SLD_TITLE` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLIDE TITLE',
  `SLD_CONTENT` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLIDE CONTENT',
  `SLD_IMG_URL` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLIDE IMAGE URL',
  `SLD_IMG_ALT` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLIDE IMAGE DESCRIPTION',
  `SLD_LINK` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLIDE LINK',
  PRIMARY KEY (`SLD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='PAGE SLIDE';

-- ----------------------------
-- Records of tb_slide
-- ----------------------------
INSERT INTO `tb_slide` VALUES ('1', '1', 'Vung CHua Travel slide title', 'Vung CHua Travel slide content', 'https://static.artofwhere.net/img/home-slider/girl-wearing-yoga-leggings.jpg', 'Picture of a girl wearing custom printed yoga leggings', '#');
INSERT INTO `tb_slide` VALUES ('2', '2', 'Vung CHua Travel slide title 2', 'Vung CHua Travel slide content2', 'https://static.artofwhere.net/img/pages/kimonos/new-kimono-style-bg.jpg', 'icture of a girl wearing a draped kimono', '#');
INSERT INTO `tb_slide` VALUES ('3', '3', 'Vung chua travel tour title 3', 'Vung chua travel tour content 3', 'https://static.artofwhere.net/img/pages/drop-ship/bigcartel/artist-workplace.jpg', 'Picture of an artist workspac', '#');
INSERT INTO `tb_slide` VALUES ('4', '4', 'Vung chua Travel guides title 4', 'Vung chua Travel guides content 4', 'https://static.artofwhere.net/img/home-slider/art-prints.jpg', 'Picture of framed fine art prints', '#');
INSERT INTO `tb_slide` VALUES ('5', '5', 'Vung chua Travel guides title 5', 'Vung chua Travel guides title 5', 'https://static.artofwhere.net/img/home-slider/girl-sewing.jpg', 'Picture of a girl sewing products', '#');
