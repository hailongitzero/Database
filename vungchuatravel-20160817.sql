/*
Navicat MySQL Data Transfer

Source Server         : LocalDB
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : vungchuatravel

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-08-17 17:03:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for master_code
-- ----------------------------
DROP TABLE IF EXISTS `master_code`;
CREATE TABLE `master_code` (
  `CID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Master code ID',
  `CD_TP` varchar(20) NOT NULL COMMENT 'master code type',
  `LANG_CD` varchar(2) NOT NULL COMMENT 'language code',
  `MEANING` varchar(100) NOT NULL COMMENT 'code meanning',
  `SEQ` int(1) NOT NULL COMMENT 'code sequence',
  `CODE` varchar(1) NOT NULL COMMENT 'code',
  `CD_MEANING` varchar(300) DEFAULT NULL COMMENT 'Code meaning',
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_code
-- ----------------------------
INSERT INTO `master_code` VALUES ('1', 'IMG_TP', 'US', 'Image upload type', '1', 'R', 'Image url directly reference');
INSERT INTO `master_code` VALUES ('2', 'IMG_TP', 'US', 'Image upload type', '2', 'U', 'Image upload url reference');
INSERT INTO `master_code` VALUES ('3', 'IMG_TP', 'VI', 'Loại hình(ảnh)', '1', 'R', 'Tham chiếu trực tiếp đến trang lưu trữ');
INSERT INTO `master_code` VALUES ('4', 'IMG_TP', 'VI', 'Loại hình(ảnh)', '2', 'U', 'Hình upload luu trữ trên server');
INSERT INTO `master_code` VALUES ('5', '', '', '', '0', '', null);

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
-- Table structure for tb_grp_connector
-- ----------------------------
DROP TABLE IF EXISTS `tb_grp_connector`;
CREATE TABLE `tb_grp_connector` (
  `CNT_TB_GRP_ID_A` varchar(5) NOT NULL COMMENT 'Connect table group number A',
  `CNT_TB_GRP_ID_B` varchar(5) NOT NULL COMMENT 'Connect table group number B',
  UNIQUE KEY `TB_GRP_CNT_IDX` (`CNT_TB_GRP_ID_A`,`CNT_TB_GRP_ID_B`) COMMENT 'Table group connector unique index'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_grp_connector
-- ----------------------------
INSERT INTO `tb_grp_connector` VALUES ('MN002', 'T0001');
INSERT INTO `tb_grp_connector` VALUES ('MN002', 'T0002');
INSERT INTO `tb_grp_connector` VALUES ('MN002', 'T0003');
INSERT INTO `tb_grp_connector` VALUES ('MN002', 'T0004');

-- ----------------------------
-- Table structure for tb_img_mgmt
-- ----------------------------
DROP TABLE IF EXISTS `tb_img_mgmt`;
CREATE TABLE `tb_img_mgmt` (
  `IMG_ID` varchar(8) NOT NULL COMMENT 'Image number',
  `IMG_TP` varchar(1) DEFAULT NULL COMMENT 'Image type - Reference or Upload (R-U)',
  `IMT_TITLE` varchar(200) DEFAULT NULL COMMENT 'Image title',
  `IMG_URL` varchar(200) DEFAULT NULL COMMENT 'Image link url',
  `IMG_ALT` varchar(200) DEFAULT NULL COMMENT 'image description',
  PRIMARY KEY (`IMG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_img_mgmt
-- ----------------------------

-- ----------------------------
-- Table structure for tb_img_ref
-- ----------------------------
DROP TABLE IF EXISTS `tb_img_ref`;
CREATE TABLE `tb_img_ref` (
  `REF_ID` varchar(6) NOT NULL COMMENT 'Reference number',
  `IMG_ID` varchar(8) NOT NULL COMMENT 'Image reference number',
  UNIQUE KEY `TB_IMG_REF_INDX` (`REF_ID`,`IMG_ID`) COMMENT 'Image reference inuque index'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_img_ref
-- ----------------------------

-- ----------------------------
-- Table structure for tb_location
-- ----------------------------
DROP TABLE IF EXISTS `tb_location`;
CREATE TABLE `tb_location` (
  `LOCATION_ID` varchar(6) NOT NULL COMMENT 'Location number code',
  `NATIONAL_CD` varchar(2) NOT NULL COMMENT 'National code',
  `PROVINCE_CD` varchar(3) NOT NULL COMMENT 'Province code',
  `NATIONAL_NM_VI` varchar(100) DEFAULT NULL COMMENT 'National name',
  `NATIONAL_NM_EN` varchar(100) DEFAULT NULL COMMENT 'National name',
  `PROVINCE_NM_VI` varchar(100) DEFAULT NULL COMMENT 'province name',
  `PROVINCE_NM_EN` varchar(100) DEFAULT NULL COMMENT 'province name',
  PRIMARY KEY (`LOCATION_ID`),
  UNIQUE KEY `TB_LOCATION_INDEX` (`NATIONAL_CD`,`PROVINCE_CD`) COMMENT 'Location index'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_location
-- ----------------------------
INSERT INTO `tb_location` VALUES ('L00001', 'VI', 'QBA', 'Việt Nam', 'VietNam', 'Quảng Bình', 'Quang Binh');
INSERT INTO `tb_location` VALUES ('L00002', 'VI', 'HUE', 'Việt Nam', 'VietNam', 'Huế', 'Hue');
INSERT INTO `tb_location` VALUES ('L00003', 'VI', 'DNA', 'Việt Nam', 'VietNam', 'Đà Nẵng', 'Da Nang');
INSERT INTO `tb_location` VALUES ('L00004', 'TH', 'BKA', 'Thái Lan', 'Thailand', 'Băng Cốc', 'Bangkok');

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `MN_ID` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Menu code',
  `MN_SEQ` int(2) NOT NULL COMMENT 'Menu Sequence',
  `MN_GRP_ID` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Menu group code',
  `MN_PRT_ID` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Menu parrent group',
  `MN_NM_EN` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'menu name in english',
  `MN_NM_VI` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Menu name in Vietnamese',
  `NM_NM_LINK` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name to linking',
  PRIMARY KEY (`MN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='table menu content';

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('', '0', '', null, '', '', '');
INSERT INTO `tb_menu` VALUES ('MN001', '1', 'MG01', null, 'About Us', 'Giới Thiệu', 'about');
INSERT INTO `tb_menu` VALUES ('MN002', '2', 'MG01', null, 'Tours', 'Tours', 'tour');
INSERT INTO `tb_menu` VALUES ('MN003', '3', 'MG01', null, 'News', 'Tin Tức', 'news');
INSERT INTO `tb_menu` VALUES ('MN004', '4', 'MG01', null, 'Services', 'Dịch Vụ', 'services');
INSERT INTO `tb_menu` VALUES ('MN005', '5', 'MG01', null, 'Hotel', 'Khách Sạn', 'hotel');
INSERT INTO `tb_menu` VALUES ('MN006', '6', 'MG01', null, 'Restaurant', 'Nhà Hàng', 'restaurant');
INSERT INTO `tb_menu` VALUES ('MN007', '7', 'MG01', null, 'Contact', 'Liên Hệ', 'contact');
INSERT INTO `tb_menu` VALUES ('MN008', '8', 'MG01', null, 'Payment', 'Thanh Toán', 'payment');

-- ----------------------------
-- Table structure for tb_menu_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu_group`;
CREATE TABLE `tb_menu_group` (
  `MN_GRP_ID` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Menu group code',
  `MN_GRP_NM` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Menu group name',
  `MN_GRP_DESC` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Menu group description',
  PRIMARY KEY (`MN_GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_menu_group
-- ----------------------------
INSERT INTO `tb_menu_group` VALUES ('MG01', 'Main menu', 'Main menu list of website');

-- ----------------------------
-- Table structure for tb_post_grp
-- ----------------------------
DROP TABLE IF EXISTS `tb_post_grp`;
CREATE TABLE `tb_post_grp` (
  `POST_GRP_ID` varchar(5) NOT NULL COMMENT 'Post Group number (T-tour, G-Guide, M-menu, H-hotel, R-restaurant)',
  `POST_NM_VI` varchar(200) NOT NULL COMMENT 'Post Group name',
  `POST_NM_EN` varchar(200) NOT NULL COMMENT 'Post Group name',
  `POST_LINK` varchar(200) NOT NULL COMMENT 'Post Group link',
  PRIMARY KEY (`POST_GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_post_grp
-- ----------------------------
INSERT INTO `tb_post_grp` VALUES ('', '', '', '');
INSERT INTO `tb_post_grp` VALUES ('M0001', 'Vũng Chùa Travel', 'Vung Chua Travel', 'vung-chua-travel');
INSERT INTO `tb_post_grp` VALUES ('M0002', 'Thư Ngõ', 'Open Letter', 'open-letter');
INSERT INTO `tb_post_grp` VALUES ('M0003', 'Tầm Nhìn Chiến Lược', 'Strategic Vision', 'strategic-vision');
INSERT INTO `tb_post_grp` VALUES ('T0001', 'Tour Quảng Bình đi', 'Tour from Quang Binh', 'tour-from-quang-binh');
INSERT INTO `tb_post_grp` VALUES ('T0002', 'Tour đến Quảng Bình', 'Tour to Quang Binh', 'tour-to-quang-binh');
INSERT INTO `tb_post_grp` VALUES ('T0003', 'Tour ghép hằng ngày', 'Daily group tours', 'daily-group-tour');
INSERT INTO `tb_post_grp` VALUES ('T0004', 'Tour trọn gói', 'Package tours', 'package-tour');

-- ----------------------------
-- Table structure for tb_post_grp_connect
-- ----------------------------
DROP TABLE IF EXISTS `tb_post_grp_connect`;
CREATE TABLE `tb_post_grp_connect` (
  `POST_GRP_ID` varchar(6) NOT NULL COMMENT 'Post group number',
  `POST_ID` varchar(6) NOT NULL COMMENT 'post number',
  UNIQUE KEY `POST_GRP_CNT_IDX` (`POST_GRP_ID`,`POST_ID`) COMMENT 'Post group connect index'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_post_grp_connect
-- ----------------------------

-- ----------------------------
-- Table structure for tb_slide
-- ----------------------------
DROP TABLE IF EXISTS `tb_slide`;
CREATE TABLE `tb_slide` (
  `SLD_ID` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLIDE ID',
  `SLD_SEQ` int(2) NOT NULL DEFAULT '0' COMMENT 'SLIDE DISPLAY SEQUENCE',
  `SLD_TITLE` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLIDE TITLE',
  `SLD_CONTENT` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLIDE CONTENT',
  `SLD_IMG_URL` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLIDE IMAGE URL',
  `SLD_IMG_ALT` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLIDE IMAGE DESCRIPTION',
  `SLD_LINK` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLIDE LINK',
  PRIMARY KEY (`SLD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='PAGE SLIDE';

-- ----------------------------
-- Records of tb_slide
-- ----------------------------
INSERT INTO `tb_slide` VALUES ('SL001', '1', 'Vung CHua Travel slide title', 'Vung CHua Travel slide content', 'https://static.artofwhere.net/img/home-slider/girl-wearing-yoga-leggings.jpg', 'Picture of a girl wearing custom printed yoga leggings', '#');
INSERT INTO `tb_slide` VALUES ('SL002', '2', 'Vung CHua Travel slide title 2', 'Vung CHua Travel slide content2', 'https://static.artofwhere.net/img/pages/kimonos/new-kimono-style-bg.jpg', 'icture of a girl wearing a draped kimono', '#');
INSERT INTO `tb_slide` VALUES ('SL003', '3', 'Vung chua travel tour title 3', 'Vung chua travel tour content 3', 'https://static.artofwhere.net/img/pages/drop-ship/bigcartel/artist-workplace.jpg', 'Picture of an artist workspac', '#');
INSERT INTO `tb_slide` VALUES ('SL004', '4', 'Vung chua Travel guides title 4', 'Vung chua Travel guides content 4', 'https://static.artofwhere.net/img/home-slider/art-prints.jpg', 'Picture of framed fine art prints', '#');
INSERT INTO `tb_slide` VALUES ('SL005', '5', 'Vung chua Travel guides title 5', 'Vung chua Travel guides title 5', 'https://static.artofwhere.net/img/home-slider/girl-sewing.jpg', 'Picture of a girl sewing products', '#');

-- ----------------------------
-- Table structure for tb_tours
-- ----------------------------
DROP TABLE IF EXISTS `tb_tours`;
CREATE TABLE `tb_tours` (
  `TOUR_ID` varchar(6) NOT NULL COMMENT 'Tour number code',
  `MN_ID` varchar(5) NOT NULL COMMENT 'Menu Number group',
  `TOUR_TEXT_LINK` varchar(200) NOT NULL COMMENT 'Text link',
  `LOCATION_ID` varchar(3) NOT NULL COMMENT 'Location travel code',
  `TOUR_TIT_VI` varchar(200) NOT NULL COMMENT 'Tour title',
  `TOUR_TIT_EN` varchar(200) NOT NULL COMMENT 'Tour title',
  `TOUR_SHRT_CNT_VI` varchar(500) NOT NULL COMMENT 'Tour short content',
  `TOUR_SHRT_CNT_EN` varchar(500) NOT NULL COMMENT 'Tour short content',
  `TOUR_CNT_VI` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Tour content',
  `TOUR_CNT_EN` text NOT NULL COMMENT 'Tour content',
  `TOUR_PRICE` decimal(10,0) DEFAULT NULL COMMENT 'Tour price',
  `TOUR_PRM_PRICE` decimal(10,0) DEFAULT NULL COMMENT 'Tour promotion price percent',
  `TOUR_RPV_IMG_ID` varchar(8) DEFAULT NULL COMMENT 'Tour represent image id',
  `TOUR_ACT_YN` varchar(1) DEFAULT NULL COMMENT 'Tour active yes no',
  `TOUR_DESCRIPTION_VI` varchar(255) DEFAULT NULL COMMENT 'Tour Description',
  `TOUR_DESCRIPTION_EN` varchar(255) DEFAULT NULL COMMENT 'Tour Description',
  `TOUR_KEYWORDS_VI` varchar(255) DEFAULT NULL COMMENT 'Tour keywords',
  `TOUR_KEYWORDS_EN` varchar(255) DEFAULT NULL COMMENT 'Tour keywords',
  PRIMARY KEY (`TOUR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tours
-- ----------------------------

-- ----------------------------
-- Table structure for tb_tour_dtl
-- ----------------------------
DROP TABLE IF EXISTS `tb_tour_dtl`;
CREATE TABLE `tb_tour_dtl` (
  `SHD_TOUR_ID` varchar(8) NOT NULL COMMENT 'Tour schedule number',
  `SHD_DAY` int(2) DEFAULT NULL COMMENT 'Tour schedule day',
  `SHD_STR_TM` datetime DEFAULT NULL COMMENT 'Tour schedule start time',
  `SHD_END_TM` datetime DEFAULT NULL COMMENT 'Tour schedule end time',
  `SHD_CNT_VI` text COMMENT 'Tour schedule content',
  `SHD_CNT_EN` text COMMENT 'Tour schedule content',
  PRIMARY KEY (`SHD_TOUR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tour_dtl
-- ----------------------------
