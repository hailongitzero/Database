/*
Navicat MySQL Data Transfer

Source Server         : LocalDB
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : vungchuatravel

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-08-26 16:55:27
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
INSERT INTO `tb_img_mgmt` VALUES ('IMG00001', 'R', 'Dong Phong Nha', 'http://vungchuatravel.com/resources/images/Tours/upload/tour_img/67.jpg', 'Dong Phong Nha');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00002', 'R', 'Dong Thien Son', 'http://vungchuatravel.com/resources/images/Tours/upload/tour_img/35.jpg', 'Dong Thien Son');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00003', 'R', 'Dong Phong Nha', 'http://vungchuatravel.com/resources/images/Tours/upload/tour_img/phongnha_kebang1.jpg', 'Dong Phong Nha');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00004', 'R', 'Tien Son Cave', 'http://vungchuatravel.com/resources/images/Tours/upload/tour_img/15.jpg', 'Tien Son Cave');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00005', 'R', 'Bat Trang', 'http://sinhplaza.vn/FileUpload/Images/30_30.jpg', 'Bat Trang');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00006', 'R', 'Chua Huong', 'http://static.plo.vn/w800/uploaded/thanhtung/2016_06_09/11-hinh3_nroc.jpg', 'Chua Huong');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00007', 'U', 'Cate tour', '/resources/assets/pic/tours/1.jpg', 'Cate tour');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00008', 'U', 'Cate tour 2', '/resources/assets/pic/tours/2.jpg', 'Cate tour 2');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00009', 'U', 'Cate tour 3', '/resources/assets/pic/tours/3.jpg', 'Cate tour 3');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00010', 'U', 'Cate tour 4', '/resources/assets/pic/tours/4.jpg', 'Cate tour 4');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00011', 'U', 'Cate tour 5', '/resources/assets/pic/tours/5.jpg', 'Cate tour 5');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00012', 'U', 'Cate tour 6', '/resources/assets/pic/tours/6.jpg', 'Cate tour 6');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00013', 'U', 'Cate tour 7', '/resources/assets/pic/tours/7.jpg', 'Cate tour 7');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00014', 'U', 'Cate tour 8', '/resources/assets/pic/tours/8.jpg', 'Cate tour 8');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00015', 'U', 'Tour 1', '/resources/assets/pic/recomended/1.jpg', 'Tour1');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00016', 'U', 'Tour 2', '/resources/assets/pic/recomended/2.jpg', 'Tour2');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00017', 'U', 'Tour 3', '/resources/assets/pic/recomended/3.jpg', 'Tour3');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00018', 'U', 'Tour 4', '/resources/assets/pic/recomended/4.jpg', 'Tour4');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00019', 'U', 'Tour 5', '/resources/assets/pic/recomended/5.jpg', 'Tour5');
INSERT INTO `tb_img_mgmt` VALUES ('IMG00020', 'U', 'Tour 6', '/resources/assets/pic/recomended/6.jpg', 'Tour6');

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
INSERT INTO `tb_img_ref` VALUES ('R00001', 'IMG00001');
INSERT INTO `tb_img_ref` VALUES ('R00002', 'IMG00004');
INSERT INTO `tb_img_ref` VALUES ('R00003', 'IMG00005');
INSERT INTO `tb_img_ref` VALUES ('R00004', 'IMG00006');
INSERT INTO `tb_img_ref` VALUES ('R00005', 'IMG00007');
INSERT INTO `tb_img_ref` VALUES ('R00006', 'IMG00008');
INSERT INTO `tb_img_ref` VALUES ('R00007', 'IMG00009');
INSERT INTO `tb_img_ref` VALUES ('R00008', 'IMG00010');
INSERT INTO `tb_img_ref` VALUES ('R00009', 'IMG00011');
INSERT INTO `tb_img_ref` VALUES ('R00010', 'IMG00012');
INSERT INTO `tb_img_ref` VALUES ('R00011', 'IMG00013');
INSERT INTO `tb_img_ref` VALUES ('R00012', 'IMG00014');
INSERT INTO `tb_img_ref` VALUES ('R00013', 'IMG00015');
INSERT INTO `tb_img_ref` VALUES ('R00014', 'IMG00016');
INSERT INTO `tb_img_ref` VALUES ('R00015', 'IMG00017');
INSERT INTO `tb_img_ref` VALUES ('R00016', 'IMG00018');
INSERT INTO `tb_img_ref` VALUES ('R00017', 'IMG00019');
INSERT INTO `tb_img_ref` VALUES ('R00018', 'IMG00020');

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
INSERT INTO `tb_location` VALUES ('L00005', 'VI', 'HNA', 'Việt Nam', 'VietNam', 'Hà Nội', 'Ha Noi');

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `MN_ID` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Menu code',
  `MN_SEQ` int(2) NOT NULL COMMENT 'Menu Sequence',
  `MN_GRP_ID` varchar(4) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Menu group code',
  `MN_LVL` int(1) NOT NULL DEFAULT '0' COMMENT 'Menu level',
  `MN_PRT_ID` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Menu parrent group',
  `MN_NM_VI` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Menu name in Vietnamese',
  `MN_NM_EN` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'menu name in english',
  `MN_NM_LINK` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name to linking',
  `MN_DSP_TP` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D' COMMENT 'Menu display type (D-Drop down list, G-Group, H-Header, C-Child)',
  PRIMARY KEY (`MN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='table menu content';

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('MN001', '1', 'MG01', '0', null, 'Trang Chủ', 'Home', 'home', 'G');
INSERT INTO `tb_menu` VALUES ('MN002', '2', 'MG01', '0', null, 'Tours', 'Tours', 'tour', 'G');
INSERT INTO `tb_menu` VALUES ('MN003', '5', 'MG01', '0', null, 'Tin Tức', 'News', 'news', 'D');
INSERT INTO `tb_menu` VALUES ('MN004', '4', 'MG01', '0', null, 'Dịch Vụ', 'Services', 'services', 'G');
INSERT INTO `tb_menu` VALUES ('MN005', '3', 'MG01', '0', null, 'Khách Sạn', 'Hotel', 'hotel', 'G');
INSERT INTO `tb_menu` VALUES ('MN006', '1', 'MG01', '1', 'MN004', 'Nhà Hàng', 'Restaurant', 'restaurant', 'D');
INSERT INTO `tb_menu` VALUES ('MN007', '4', 'MG01', '1', 'MN001', 'Liên Hệ', 'Contact', 'contact', 'D');
INSERT INTO `tb_menu` VALUES ('MN008', '5', 'MG01', '1', 'MN001', 'Thanh Toán', 'Payment', 'payment', 'D');
INSERT INTO `tb_menu` VALUES ('MN009', '1', 'MG01', '1', 'MN002', 'Tour Quảng Bình đi', 'Tour from Quang Binh', 'tour-from-quang-binh', 'H');
INSERT INTO `tb_menu` VALUES ('MN010', '2', 'MG01', '1', 'MN002', 'Tour đến Quảng Bình', 'Tour to Quang Binh', 'tour-to-quang-binh', 'H');
INSERT INTO `tb_menu` VALUES ('MN011', '3', 'MG01', '1', 'MN002', 'Tour ghép hằng ngày', 'Daily group tours', 'daily-group-tour', 'H');
INSERT INTO `tb_menu` VALUES ('MN012', '4', 'MG01', '1', 'MN002', 'Tour trọn gói', 'Package tours', 'package-tour', 'H');
INSERT INTO `tb_menu` VALUES ('MN013', '1', 'MG01', '2', 'MN020', 'Vũng Chùa Travel', 'Vung Chua Travel', 'vung-chua-travel', 'C');
INSERT INTO `tb_menu` VALUES ('MN014', '2', 'MG01', '2', 'MN020', 'Thư Ngõ', 'Open Letter', 'open-letter', 'C');
INSERT INTO `tb_menu` VALUES ('MN015', '3', 'MG01', '2', 'MN020', 'Tầm Nhìn Chiến Lược', 'Strategic Vision', 'strategic-vision', 'C');
INSERT INTO `tb_menu` VALUES ('MN016', '1', 'MG01', '2', 'MN009', 'Free & Easy Tour', 'Free & Easy Tour', 'free-easy-tour', 'C');
INSERT INTO `tb_menu` VALUES ('MN017', '2', 'MG01', '2', 'MN009', 'Du Lịch Tâm Linh', 'Spiritual Travel', 'spriritual-travel', 'C');
INSERT INTO `tb_menu` VALUES ('MN018', '3', 'MG01', '2', 'MN009', 'Du Lịch Miền Nam - Đảo Phú Quốc', 'Western, Phu Quoc Island Tour', 'phu-quoc-island-tour', 'C');
INSERT INTO `tb_menu` VALUES ('MN019', '4', 'MG01', '2', 'MN009', 'Tour Theo Yêu Cầu', 'Tour on Request', 'tour-on-request', 'C');
INSERT INTO `tb_menu` VALUES ('MN020', '1', 'MG01', '1', 'MN001', 'Giới Thiệu', 'About Us', 'about', 'H');
INSERT INTO `tb_menu` VALUES ('MN021', '1', 'MG01', '1', 'MN005', 'Khách Sạn Tại Quảng Bình', 'Hotels in Quang Binh', 'hotel-in-quang-binh', 'H');
INSERT INTO `tb_menu` VALUES ('MN022', '2', 'MG01', '1', 'MN005', 'Khách Sạn Ngoài Quảng Bình', 'Hotels Outside of Quang Binh', 'hotel-outside-quang-binh', 'H');
INSERT INTO `tb_menu` VALUES ('MN023', '1', 'MG01', '2', 'MN021', 'Lưu Trú', 'Homestay', 'homestay', 'C');
INSERT INTO `tb_menu` VALUES ('MN024', '2', 'MG01', '2', 'MN021', 'Khách Sạn 1 Sao', '1 Star Hotel', 'one-star-hotel', 'C');
INSERT INTO `tb_menu` VALUES ('MN025', '3', 'MG01', '2', 'MN021', 'Khách Sạn 2 Sao', '2 Star Hotel', 'two-star-hotel', 'C');
INSERT INTO `tb_menu` VALUES ('MN026', '4', 'MG01', '2', 'MN021', 'Khách Sạn 3 Sao', '3 Star Hotel', 'three-star-hotel', 'C');
INSERT INTO `tb_menu` VALUES ('MN027', '5', 'MG01', '2', 'MN021', 'Khách Sạn 4 Sao', '4 Star Hotel', 'four-star-hotel', 'C');
INSERT INTO `tb_menu` VALUES ('MN028', '6', 'MG01', '2', 'MN021', 'Khách Sạn 5 Sao', '5 Star Hotel', 'five-star-hotel', 'C');
INSERT INTO `tb_menu` VALUES ('MN029', '1', 'MG01', '1', 'MN003', 'Tin Tức', 'News', 'news', 'C');
INSERT INTO `tb_menu` VALUES ('MN030', '2', 'MG01', '1', 'MN003', 'Khuyến Mãi', 'Promotion', 'promotion', 'C');
INSERT INTO `tb_menu` VALUES ('MN031', '3', 'MG01', '1', 'MN003', 'Đại tướng Võ Nguyên Giap', 'Vo Nguyen Giap General', 'vo-nguyen-giap-general', 'C');
INSERT INTO `tb_menu` VALUES ('MN032', '1', 'MG01', '2', 'MN006', 'Nhà Hàng tại Quảng Bình', 'Restaurant in Quang Binh', 'restaurant-in-quang-binh', 'C');
INSERT INTO `tb_menu` VALUES ('MN033', '2', 'MG01', '2', 'MN006', 'Nhà Hàng ngoài Quảng Bình', 'Restaurant outside Quang Binh', 'restaurant-outside-quang-binh', 'C');
INSERT INTO `tb_menu` VALUES ('MN034', '2', 'MG01', '1', 'MN004', 'Dịch Vụ Khác', 'Other Service', 'other-service', 'H');

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
-- Table structure for tb_news
-- ----------------------------
DROP TABLE IF EXISTS `tb_news`;
CREATE TABLE `tb_news` (
  `NEWS_ID` varchar(6) NOT NULL,
  `NEWS_TITLE_VI` varchar(150) NOT NULL,
  `NEWS_TITLE_EN` varchar(150) NOT NULL,
  `NEWS_SHRT_CNT_VI` varchar(200) DEFAULT NULL,
  `NEWS_SHRT_CNT_EN` varchar(200) DEFAULT NULL,
  `NEWS_CNT_VI` text,
  `NEWS_CNT_EN` text,
  `NEWS_RPV_IMG_ID` varchar(6) DEFAULT NULL,
  `NEWS_ACT_YN` varchar(1) NOT NULL,
  `NEWS_KEYWORD_VI` varchar(200) DEFAULT NULL,
  `NEWS_KEYWORD_EN` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`NEWS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_news
-- ----------------------------

-- ----------------------------
-- Table structure for tb_post_grp
-- ----------------------------
DROP TABLE IF EXISTS `tb_post_grp`;
CREATE TABLE `tb_post_grp` (
  `POST_GRP_ID` varchar(5) NOT NULL COMMENT 'Post Group number (T-tour, G-Guide, M-menu, H-hotel, R-restaurant)',
  `POST_NM_VI` varchar(200) NOT NULL COMMENT 'Post Group name',
  `POST_NM_EN` varchar(200) NOT NULL COMMENT 'Post Group name',
  `POST_INTRO_VI` varchar(300) DEFAULT NULL COMMENT 'Post introduce content',
  `POST_INTRO_EN` varchar(300) DEFAULT NULL COMMENT 'Post introduce content',
  `POST_RPV_IMG_ID` varchar(6) DEFAULT NULL COMMENT 'Tour repreventative image id number',
  `POST_LINK` varchar(200) NOT NULL COMMENT 'Post Group link',
  `POST_RPV_YN` varchar(1) DEFAULT 'N' COMMENT 'Post repreventive Y-Yes N-No',
  PRIMARY KEY (`POST_GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_post_grp
-- ----------------------------
INSERT INTO `tb_post_grp` VALUES ('M0001', 'Vũng Chùa Travel', 'Vung Chua Travel', 'Vũng Chùa Travel', 'Vung Chua Travel', 'R00007', 'vung-chua-travel', 'N');
INSERT INTO `tb_post_grp` VALUES ('M0002', 'Thư Ngõ', 'Open Letter', 'Thư Ngõ', 'Open Letter', 'R00009', 'open-letter', 'N');
INSERT INTO `tb_post_grp` VALUES ('M0003', 'Tầm Nhìn Chiến Lược', 'Strategic Vision', 'Tầm Nhìn Chiến Lược', 'Strategic Vision', 'R00010', 'strategic-vision', 'N');
INSERT INTO `tb_post_grp` VALUES ('T0001', 'Tour Quảng Bình đi', 'Tour from Quang Binh', 'Tour Quảng Bình đi', 'Tour from Quang Binh', 'R00011', 'tour-from-quang-binh', 'N');
INSERT INTO `tb_post_grp` VALUES ('T0002', 'Tour đến Quảng Bình', 'Tour to Quang Binh', 'Tour đến Quảng Bình', 'Tour to Quang Binh', 'R00013', 'tour-to-quang-binh', 'N');
INSERT INTO `tb_post_grp` VALUES ('T0003', 'Tour ghép hằng ngày', 'Daily group tours', 'Tour ghép hằng ngày', 'Daily group tours', 'R00005', 'daily-group-tour', 'Y');
INSERT INTO `tb_post_grp` VALUES ('T0004', 'Tour trọn gói', 'Package tours', 'Tour trọn gói', 'Package tours', 'R00012', 'package-tour', 'Y');
INSERT INTO `tb_post_grp` VALUES ('T0005', 'Free & Easy Tour', 'Free & Easy Tour', 'Free & Easy Tour', 'Free & Easy Tour', 'R00006', 'free-easy-tour', 'Y');
INSERT INTO `tb_post_grp` VALUES ('T0006', 'Du Lịch Tâm Linh', 'Spiritual Tour', 'Du Lịch Tâm Linh', 'Spiritual Tour', 'R00005', 'spiritual-tour', 'N');
INSERT INTO `tb_post_grp` VALUES ('T0007', 'Tour Miền Tây, Phú Quốc', 'Western, Phu Quoc Island', 'Tour Miền Tây, Phú Quốc', 'Western, Phu Quoc Island', 'R00007', 'phu-quoc-tour', 'Y');
INSERT INTO `tb_post_grp` VALUES ('T0008', 'Tour Theo Yêu Cầu', 'Requested Tour', 'Tour Theo Yêu Cầu', 'Requested Tour', 'R00008', 'request-tour', 'Y');
INSERT INTO `tb_post_grp` VALUES ('T0009', 'Tour Miền Bắc', 'Northern Tour', 'Tour Miền Bắc', 'Northern Tour', 'R00009', 'northern-tour', 'Y');
INSERT INTO `tb_post_grp` VALUES ('T0010', 'Tour Miền Trung', 'Central Viet Nam Tour', 'Tour Miền Trung', 'Central Viet Nam Tour', 'R00010', 'central-vietnam-tour', 'Y');
INSERT INTO `tb_post_grp` VALUES ('T0011', 'Tour Miền Nam', 'Southern Viet Nam Tour', 'Tour Miền Nam', 'Southern Viet Nam Tour', 'R00011', 'southern-vietnam-tour', 'Y');
INSERT INTO `tb_post_grp` VALUES ('T0012', 'Tour Nước Ngoài', 'Outbound Tour', 'Tour Nước Ngoài', 'Outbound Tour', 'R00012', 'outbound-tour', 'N');
INSERT INTO `tb_post_grp` VALUES ('T0013', 'Tour Hằng Ngày', 'Daily Tour', 'Tour Hằng Ngày', 'Daily Tour', 'R00011', 'daily-tour', 'Y');

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
INSERT INTO `tb_post_grp_connect` VALUES ('T0003', 'T00002');
INSERT INTO `tb_post_grp_connect` VALUES ('T0009', 'T00003');
INSERT INTO `tb_post_grp_connect` VALUES ('T0009', 'T00004');
INSERT INTO `tb_post_grp_connect` VALUES ('T0010', 'T00001');

-- ----------------------------
-- Table structure for tb_slide
-- ----------------------------
DROP TABLE IF EXISTS `tb_slide`;
CREATE TABLE `tb_slide` (
  `SLD_ID` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLIDE ID',
  `SLD_SEQ` int(2) NOT NULL DEFAULT '0' COMMENT 'SLIDE DISPLAY SEQUENCE',
  `SLD_TITLE_VI` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'SLIDE TITLE',
  `SLD_TITLE_EN` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'SLIDE TITLE',
  `SLD_CONTENT_VI` text COLLATE utf8_unicode_ci COMMENT 'SLIDE CONTENT',
  `SLD_CONTENT_EN` text COLLATE utf8_unicode_ci COMMENT 'SLIDE CONTENT',
  `SLD_BG_EFF` text COLLATE utf8_unicode_ci COMMENT 'background slider effect',
  `SLD_CNT_EFF` text COLLATE utf8_unicode_ci COMMENT 'content slider effect',
  `SLD_IMG_URL` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'SLIDE IMAGE URL',
  `SLD_IMG_ALT` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'SLIDE IMAGE DESCRIPTION',
  `SLD_HTML_CODE` text COLLATE utf8_unicode_ci COMMENT 'Code design',
  `SLD_LINK` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SLIDE LINK',
  PRIMARY KEY (`SLD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='PAGE SLIDE';

-- ----------------------------
-- Records of tb_slide
-- ----------------------------
INSERT INTO `tb_slide` VALUES ('SL001', '1', 'Vung CHua Travel slide title Viet nam', 'Vung CHua Travel slide title english', '<div class=\"sl-title-top\">Welcome to</div><div class=\"sl-title\">Dubai</div><div class=\"sl-title-bot\">Starting <span>$280</span> mỗi đêm</div>', '<div class=\"sl-title-top\">Welcome to</div><div class=\"sl-title\">Dubai</div><div class=\"sl-title-bot\">Starting <span>$280</span> per night</div>', '', '', '/resources/assets/pic/slider/main/slide-1.jpg', 'Picture of a girl wearing custom printed yoga leggings', '<li data-masterspeed=\"700\" data-transition=\"fade\"><img src=\"/resources/assets/rs-plugin/assets/loader.gif\" data-lazyload=\"/resources/assets/pic/slider/main/slide-2.jpg\" data-bgposition=\"center\" alt=\"\" data-kenburns=\"on\" data-duration=\"30000\" data-ease=\"Linear.easeNone\" data-scalestart=\"100\" data-scaleend=\"120\" data-rotatestart=\"0\" data-rotateend=\"0\" data-offsetstart=\"0 0\" data-offsetend=\"0 0\" data-bgparallax=\"10\">\r\n  <div data-x=\"[\'center\',\'center\',\'center\',\'center\']\" data-y=\"center\" data-transform_in=\"y:-150px;opacity:0;s:1500;e:Power3.easeInOut;\" data-transform_out=\"y:150px;opacity:0;s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;\" data-start=\"400\" class=\"tp-caption sl-content\">\r\n	<div class=\"sl-title-top\">Welcome to</div>\r\n	<div class=\"sl-title\">Istanbul</div>\r\n	<div class=\"sl-title-bot\">Starting <span>$255</span> per night</div>\r\n  </div>\r\n</li>', '#');
INSERT INTO `tb_slide` VALUES ('SL002', '2', 'Vung CHua Travel slide title 2', 'Vung CHua Travel slide title 2', '<div class=\"sl-title-top\">Welcome to</div><div class=\"sl-title\">Istanbul</div><div class=\"sl-title-bot\">Starting <span>$255</span> mỗi đêm</div>', '<div class=\"sl-title-top\">Welcome to</div><div class=\"sl-title\">Istanbul</div><div class=\"sl-title-bot\">Starting <span>$255</span> per night</div>', '', '', '/resources/assets/pic/slider/main/slide-2.jpg', 'icture of a girl wearing a draped kimono', '<li data-masterspeed=\"700\" data-slotamount=\"7\" data-transition=\"fade\"><img src=\"/resources/assets/rs-plugin/assets/loader.gif\" data-lazyload=\"/resources/assets/pic/slider/main/slide-4.jpg\" data-bgposition=\"center\" alt=\"\" data-kenburns=\"on\" data-duration=\"30000\" data-ease=\"Linear.easeNone\" data-scalestart=\"100\" data-scaleend=\"120\" data-rotatestart=\"0\" data-rotateend=\"0\" data-offsetstart=\"0 0\" data-offsetend=\"0 0\" data-bgparallax=\"10\">\r\n  <div data-x=\"[\'center\',\'center\',\'center\',\'center\']\" data-y=\"center\" data-transform_in=\"x:-150px;opacity:0;s:1500;e:Power3.easeInOut;\" data-transform_out=\"x:150px;opacity:0;s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;\" data-start=\"400\" class=\"tp-caption sl-content\">\r\n	<div class=\"sl-title-top\">Welcome to</div>\r\n	<div class=\"sl-title\">Venice</div>\r\n	<div class=\"sl-title-bot\">Starting <span>$105</span> per night</div>\r\n  </div>\r\n</li>', '#');
INSERT INTO `tb_slide` VALUES ('SL003', '3', 'Vung chua travel tour title 3', 'Vung CHua Travel slide title 3', '<div class=\"sl-title-top\">Welcome to</div><div class=\"sl-title\">Honolulu</div><div class=\"sl-title-bot\">Starting <span>$105</span> mỗi đêm</div>', '<div class=\"sl-title-top\">Welcome to</div><div class=\"sl-title\">Honolulu</div><div class=\"sl-title-bot\">Starting <span>$105</span> per night</div>', '', '', '/resources/assets/pic/slider/main/slide-3.jpg', 'Picture of an artist workspac', '<li data-masterspeed=\"700\" data-transition=\"fade\"><img src=\"/resources/assets/rs-plugin/assets/loader.gif\" data-lazyload=\"/resources/assets/pic/slider/main/slide-3.jpg\" data-bgposition=\"center\" alt=\"\" data-kenburns=\"on\" data-duration=\"30000\" data-ease=\"Linear.easeNone\" data-scalestart=\"100\" data-scaleend=\"120\" data-rotatestart=\"0\" data-rotateend=\"0\" data-offsetstart=\"0 0\" data-offsetend=\"0 0\" data-bgparallax=\"10\">\r\n  <div data-x=\"[\'center\',\'center\',\'center\',\'center\']\" data-y=\"center\" data-transform_in=\"x:150px;opacity:0;s:1500;e:Power3.easeInOut;\" data-transform_out=\"x:-150px;opacity:0;s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;\" data-start=\"400\" class=\"tp-caption sl-content\">\r\n	<div class=\"sl-title-top\">Welcome to</div>\r\n	<div class=\"sl-title\">Dubai</div>\r\n	<div class=\"sl-title-bot\">Starting <span>$280</span> per night</div>\r\n  </div>\r\n</li>', '#');

-- ----------------------------
-- Table structure for tb_tours
-- ----------------------------
DROP TABLE IF EXISTS `tb_tours`;
CREATE TABLE `tb_tours` (
  `TOUR_ID` varchar(6) NOT NULL COMMENT 'Tour number code',
  `TOUR_FTR_YN` varchar(1) NOT NULL DEFAULT 'N' COMMENT 'Tour feature status (Y- Yes, N - No)',
  `TOUR_RCM_YN` varchar(1) NOT NULL DEFAULT 'N' COMMENT 'Tour recomend Yes No (Y-Yes, N-No)',
  `TOUR_TEXT_LINK` varchar(200) NOT NULL COMMENT 'Text link',
  `LOCATION_ID` varchar(6) NOT NULL COMMENT 'Location travel code',
  `TOUR_TIT_VI` varchar(100) NOT NULL COMMENT 'Tour title',
  `TOUR_TIT_EN` varchar(100) NOT NULL COMMENT 'Tour title',
  `TOUR_SHRT_CNT_VI` varchar(200) NOT NULL COMMENT 'Tour short content',
  `TOUR_SHRT_CNT_EN` varchar(200) NOT NULL COMMENT 'Tour short content',
  `TOUR_CNT_VI` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Tour content',
  `TOUR_CNT_EN` text NOT NULL COMMENT 'Tour content',
  `TOUR_LENGTH_VI` varchar(150) DEFAULT NULL,
  `TOUR_LENGTH_EN` varchar(150) DEFAULT NULL,
  `TOUR_PRICE_VI` decimal(10,0) DEFAULT NULL COMMENT 'Tour price',
  `TOUR_PRICE_EN` decimal(10,0) DEFAULT NULL,
  `TOUR_PRM_PRICE` decimal(10,0) DEFAULT '0' COMMENT 'Tour promotion price percent',
  `TOUR_RPV_IMG_ID` varchar(6) DEFAULT NULL COMMENT 'Tour represent image id',
  `TOUR_ACT_YN` varchar(1) DEFAULT 'Y' COMMENT 'Tour active yes no',
  `TOUR_RATE_TOT_STAR` int(15) DEFAULT '0' COMMENT 'Toltal star rate for this tour',
  `TOUR_RATE_TOT_SEQ` int(15) DEFAULT '0' COMMENT 'Total rate time for this tour',
  `TOUR_DESCRIPTION_VI` varchar(255) DEFAULT NULL COMMENT 'Tour Description',
  `TOUR_DESCRIPTION_EN` varchar(255) DEFAULT NULL COMMENT 'Tour Description',
  `TOUR_KEYWORDS_VI` varchar(255) DEFAULT NULL COMMENT 'Tour keywords',
  `TOUR_KEYWORDS_EN` varchar(255) DEFAULT NULL COMMENT 'Tour keywords',
  `TOUR_CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Tour create timestamp',
  PRIMARY KEY (`TOUR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tours
-- ----------------------------
INSERT INTO `tb_tours` VALUES ('T00001', 'Y', 'Y', 'tour-dong-phong-nha-dong-tien-son', 'L00001', 'Động Phong Nha - Động Tiên Sơn', 'Phong Nha - Tien Son Cave', 'Động Phong Nha hay còn gọi là “ Động Nước”, động Tiên Sơn thì ngược lại, bạn phải leo qua những bậc đá để lên động, sau khi chinh phục được những bậc ', 'Phong Nha cave is called “water cave” which is famous for its rock formation has been given names such as the \"Lion\", the \"Fairy Caves\", the \"Royal Co', 0xC490E1BB996E672050686F6E67204E6861206861792063C3B26E2067E1BB8D69206CC3A020E2809C20C490E1BB996E67204EC6B0E1BB9B63E2809D2C20C491E1BB996E67205469C3AA6E2053C6A16E207468C3AC206E67C6B0E1BBA363206CE1BAA1692C2062E1BAA16E207068E1BAA369206C656F20717561206E68E1BBAF6E672062E1BAAD6320C491C3A120C491E1BB83206CC3AA6E20C491E1BB996E672C20736175206B6869206368696E68207068E1BBA56320C491C6B0E1BBA363206E68E1BBAF6E672062E1BAAD63207468616E6720C491C3A1206CC3A0206CC3BA6320C491E1BB832062E1BAA16E2074E1BAAD6E2068C6B0E1BB9F6E67207468C3A06E68207175E1BAA32063E1BBA761206DC3AC6E682E2056C3A02062E1BAA16E206B68C3B46E67207468E1BB83206B68C3B46E672068C3A069206CC3B26E672076E1BB9B692068E1BB87207468E1BB916E67206DC4836E6720C491C3A12C206E68C5A920C491C3A1206CE1BB996E67206CE1BAAB792062C3AA6E2074726F6E67206DE1BB97692068616E6720C491E1BB996E6720C491E1BB83207175C3BD206B68C3A16368207468E1BB8F612073E1BBA9632074C6B0E1BB9F6E672074C6B0E1BBA36E672074E1BBAB206E68E1BBAF6E672068C3AC6E68207468C3B9206CC3BD207468C3BA206DC3A0206E68E1BBAF6E67206B68E1BB916920C491C3A120C491C6B0E1BBA3632068C3AC6E68207468C3A06E68207175612068C3A06E6720747269E1BB8775206EC4836D206D616E67206CE1BAA1692E, 'Phong Nha cave is called “water cave” which is famous for its rock formation has been given names such as the \"Lion\", the \"Fairy Caves\", the \"Royal Court\", and the \"Buddha\". To conquer Tien Son cave you have to take a step set of stairs to the entrance of the cave about 100 meters above Phong Nha cave Gate.  ', '1 Ngày', '1 Day', '1000000', '50', '0', 'R00014', 'Y', null, null, 'Động Phong Nha - Động Tiên Sơn', 'Phong Nha - Tien Son Cave', 'Động Phong Nha - Động Tiên Sơn', 'Phong Nha - Tien Son Cave', '2016-08-20 11:16:15');
INSERT INTO `tb_tours` VALUES ('T00002', 'Y', 'Y', 'tour-kham-pha-dong-phong-nha', 'L00001', 'Xuyên Sơn Hồ', 'Explore 4,5 km Phong Nha Cave', 'Xuyên Sơn Hồ', 'Xuyen Son Ho – those are the small miraculous mystic lakes with the hundreds quarter width inside the stone mountain that it’s hard to see anywhere. T', 0x587579C3AA6E2053C6A16E2048E1BB93, 'Xuyen Son Ho – those are the small miraculous mystic lakes with the hundreds quarter width inside the stone mountain that it’s hard to see anywhere. To reach to Xuyen Son Ho, you have to pass a long way with 4,500 meters length. On this departure, you will be taken by boat or kayak through Tien Son cave and Cung Dinh cave of Phong Nha cave system', '1 Ngày', '1 Day', '1600000', '70', '0', 'R00015', 'Y', null, null, 'Xuyên Sơn Hồ', 'Explore 4,5 km Phong Nha Cave', 'Xuyên Sơn Hồ', 'Explore 4,5 km Phong Nha Cave', '2016-08-20 11:31:51');
INSERT INTO `tb_tours` VALUES ('T00003', 'Y', 'Y', 'ha-noi-bat-trang-1-ngay', 'L00005', 'Hà Nội - Bát Tràng 1 ngày', 'Ha Noi city tour 1 day', 'Hà Nội là nơi du khách dừng chân sau những chuyến đi dài và những chuyến bay hàng giờ đồng hồ để đến với Việt Nam. Hà Nội với những địa điểm du lịch m', 'Ha Noi is the place where the tourists come to Viet Nam will stop for relax after long day trips and hours- flight. In Ha Noi, the tourists will see s', 0x48C3A0204EE1BB9969206CC3A0206EC6A169206475206B68C3A163682064E1BBAB6E67206368C3A26E20736175206E68E1BBAF6E672063687579E1BABF6E20C491692064C3A0692076C3A0206E68E1BBAF6E672063687579E1BABF6E206261792068C3A06E67206769E1BB9D20C491E1BB936E672068E1BB9320C491E1BB8320C491E1BABF6E2076E1BB9B69205669E1BB8774204E616D2E2048C3A0204EE1BB99692076E1BB9B69206E68E1BBAF6E6720C491E1BB8B6120C49169E1BB836D206475206CE1BB8B6368206D616E672074C3AD6E68206CE1BB8B63682073E1BBAD2076C3A0206E68E1BBAF6E67206B69E1BABF6E207472C3BA6320C491E1BB996320C491C3A16F2063C3B32074E1BBAB206CC3A27520C491E1BB9D692E2048C3A0204EE1BB99692076E1BB9B69206B6875207175E1BAA76E207468E1BB832048E1BB93204368C3AD204D696E682063C3B3206CC4836E672042C3A1632C2063C3B3206E68C3A02073C3A06E206EC6A1692042C3A1632074E1BBAB6E672073E1BB916E672076C3A0206CC3A06D207669E1BB87632C2063C3B32062E1BAA36F2074C3A06E672048E1BB93204368C3AD204D696E682E2048C3A0204EE1BB99692076E1BB9B69203336207068E1BB91207068C6B0E1BB9D6E672C2063C3B3206368E1BBA320C491C3AA6D206EC3A16F206E6869E1BB87742064C3A06E682063686F206475206B68C3A16368207468E1BAAD70207068C6B0C6A16E67206D75612073E1BAAF6D2076C3A020767569206368C6A1692E2048C3A0204EE1BB9969206CC3A020C491E1BB8B6120C49169E1BB836D206B68C3B46E67207468E1BB832062E1BB8F207175612063E1BBA761206475206B68C3A16368206B686920C491E1BABF6E2076E1BB9B69205669E1BB8774204E616D2E, 'Ha Noi is the place where the tourists come to Viet Nam will stop for relax after long day trips and hours- flight. In Ha Noi, the tourists will see some special place and unique architectures of Viet Nam. Ha Noi has Old Quarter, Ho Chi Minh complex, 36 streets and the Night Market which can’t be pretermitted when the tourist come to Viet Nam.', '1 Ngày', '1 Day', '700000', '30', '0', 'R00016', 'Y', null, null, 'Tour Hà Nội - Bát Tràng', 'Ha Noi - Bat Trang village Tour', 'Tour Hà Nội - Bát Tràng', 'Ha Noi - Bat Trang village Tour', '2016-08-20 11:37:16');
INSERT INTO `tb_tours` VALUES ('T00004', 'Y', 'Y', 'du-lich-chua-huong-1-ngay', 'L00005', 'Du lịch Chùa Hương 1 ngày', 'Perfum Pagoda 1 Day', 'Chùa Hương là quần thể gồm có hang động và đình chùa nằm trên núi : chùa Thiên Trù, động Hương Tích,…. Đến với chùa Hương quí khách có cơ hội thăm qua', 'Perfum Pagoda is located on the top of the mountain with Thien Tru Pagoda and Huong Tich cave which is the biggest cave in the North of Viet Nam. Come', 0x4368C3B9612048C6B0C6A16E67206CC3A0207175E1BAA76E207468E1BB832067E1BB936D2063C3B32068616E6720C491E1BB996E672076C3A020C491C3AC6E68206368C3B961206EE1BAB16D207472C3AA6E206EC3BA69203A206368C3B96120546869C3AA6E205472C3B92C20C491E1BB996E672048C6B0C6A16E672054C3AD63682CE280A62E20C490E1BABF6E2076E1BB9B69206368C3B9612048C6B0C6A16E67207175C3AD206B68C3A163682063C3B32063C6A12068E1BB9969207468C4836D207175616E206DE1BB99742074726F6E67206E68E1BBAF6E672068616E6720C491E1BB996E67206BC3AC2076C4A92063E1BBA761205669E1BB8774204E616D2C206E67E1BAAF6D2063E1BAA36E68207468C3B46E207175C3AA2C207468C6B0E1BB9F6E67207468E1BBA963206B68C3B46E67206B68C3AD2074726F6E67206CC3A06E682C206EC3BA692073C3B46E672076C3A02063C3A163206DC3B36E20C491E1BAB7632073E1BAA36E20C491E1BB8B61207068C6B0C6A16E672E, 'Perfum Pagoda is located on the top of the mountain with Thien Tru Pagoda and Huong Tich cave which is the biggest cave in the North of Viet Nam. Come here you will have chance to see one of the captivated caves of Viet Nam and enjoy the landscape of the country side, the fresh air, the mountains and enjoy some local cuisines.', '1 Ngày', '1 Day', '600000', '25', '0', 'R00017', 'Y', null, null, 'Du lịch Chùa Hương 1 ngày', 'Perfum Pagoda 1 Day', 'Du lịch Chùa Hương 1 ngày', 'Perfum Pagoda 1 Day', '2016-08-20 11:45:40');

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

-- ----------------------------
-- Table structure for tb_travel_guide
-- ----------------------------
DROP TABLE IF EXISTS `tb_travel_guide`;
CREATE TABLE `tb_travel_guide` (
  `GUIDE_ID` varchar(6) NOT NULL COMMENT 'Travel guide in number',
  `GUIDE_TITLE_VI` varchar(150) NOT NULL COMMENT 'travel guide title',
  `GUIDE_TITLE_EN` varchar(150) NOT NULL,
  `GUIDE_SHR_CNT_VI` varchar(200) DEFAULT NULL,
  `GUIDE_SHR_CNT_EN` varchar(200) DEFAULT NULL,
  `GUIDE_CNT_VI` text,
  `GUIDE_CNT_EN` text,
  `GUIDE_RPV_IMG_ID` varchar(6) DEFAULT NULL,
  `GUIDE_TOT_STAR_RATE` int(15) DEFAULT NULL,
  `GUIDE_TOT_STAR_SEQ` int(15) DEFAULT NULL,
  `GUIDE_ACT_YN` varchar(1) DEFAULT 'Y',
  `GUIDE_KEYWORD_VI` varchar(200) DEFAULT NULL,
  `GUIDE_KEYWORD_EN` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`GUIDE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_travel_guide
-- ----------------------------
INSERT INTO `tb_travel_guide` VALUES ('G00001', 'Du Lịch Hang động Quảng Bình', 'Travel Quang Binh Caves', 'Du Lịch Hang động Quảng Bình', 'Travel Quang Binh Caves', 'Du Lịch Hang động Quảng Bình', 'Travel Quang Binh Caves', 'R00009', '9', '2', 'Y', 'Du Lịch Hang động Quảng Bình', 'Travel Quang Binh Caves');
INSERT INTO `tb_travel_guide` VALUES ('G00002', 'Du Lịch Hang động Quảng Bình - Sơn Đoong', 'Travel Quang Binh - Son Doong Caves', 'Du Lịch Hang động Quảng Bình - Sơn Đoong', 'Travel Quang Binh - Son Doong Caves', 'Du Lịch Hang động Quảng Bình - Sơn Đoong', 'Travel Quang Binh - Son Doong Caves', 'R00011', '9', '2', 'Y', 'Du Lịch Hang động Quảng Bình - Sơn Đoong', 'Travel Quang Binh - Son Doong Caves');
INSERT INTO `tb_travel_guide` VALUES ('G00003', 'Du Lịch Hang động Quảng Bình - Sơn Đoong', 'Travel Quang Binh - Son Doong Caves', 'Du Lịch Hang động Quảng Bình - Sơn Đoong', 'Travel Quang Binh - Son Doong Caves', 'Du Lịch Hang động Quảng Bình - Sơn Đoong', 'Travel Quang Binh - Son Doong Caves', 'R00004', '9', '2', 'Y', 'Du Lịch Hang động Quảng Bình - Sơn Đoong', 'Travel Quang Binh - Son Doong Caves');
