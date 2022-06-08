/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : 2022_remont_bosch2

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2022-06-08 09:41:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`brand_id`),
  KEY `brand_fk0` (`type_id`) USING BTREE,
  CONSTRAINT `brand_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', '1', 'Bosch');

-- ----------------------------
-- Table structure for model
-- ----------------------------
DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`model_id`),
  KEY `model_fk0` (`brand_id`) USING BTREE,
  KEY `model_fk1` (`type_id`) USING BTREE,
  CONSTRAINT `model_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  CONSTRAINT `model_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1943 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of model
-- ----------------------------
INSERT INTO `model` VALUES ('1', '1', '1', 'Bosch Serie 4 WOT24227');
INSERT INTO `model` VALUES ('2', '1', '1', 'Bosch Serie 6 WAG32490');
INSERT INTO `model` VALUES ('3', '1', '1', 'Bosch Serie 6 WAQ2445XME');
INSERT INTO `model` VALUES ('4', '1', '1', 'Bosch Serie 6 WAT2446S');
INSERT INTO `model` VALUES ('5', '1', '1', 'Bosch Serie 6 WAT28321');
INSERT INTO `model` VALUES ('6', '1', '1', 'Bosch Serie 6 WAT28391');
INSERT INTO `model` VALUES ('7', '1', '1', 'Bosch Serie 6 WAT28411');
INSERT INTO `model` VALUES ('8', '1', '1', 'Bosch Serie 6 WAT28421');
INSERT INTO `model` VALUES ('9', '1', '1', 'Bosch Serie 6 WAT28461ME');
INSERT INTO `model` VALUES ('10', '1', '1', 'Bosch Serie 6 WAT28590');
INSERT INTO `model` VALUES ('11', '1', '1', 'Bosch Serie 6 WAT28641');
INSERT INTO `model` VALUES ('12', '1', '1', 'Bosch Serie 6 WAT28681ME');
INSERT INTO `model` VALUES ('13', '1', '1', 'Bosch WAA 24160');
INSERT INTO `model` VALUES ('14', '1', '1', 'Bosch WOR 16150');
INSERT INTO `model` VALUES ('15', '1', '1', 'Bosch WAE 20460');
INSERT INTO `model` VALUES ('16', '1', '1', 'Bosch WAN 28080');
INSERT INTO `model` VALUES ('17', '1', '1', 'Bosch WLN 24260');
INSERT INTO `model` VALUES ('18', '1', '1', 'Bosch WLN 24261');
INSERT INTO `model` VALUES ('19', '1', '1', 'Bosch WLX 36324');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `photos_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `model_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  PRIMARY KEY (`photos_id`),
  KEY `photos_fk0` (`model_id`) USING BTREE,
  KEY `photos_fk1` (`brand_id`) USING BTREE,
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`),
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1943 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of photos
-- ----------------------------
INSERT INTO `photos` VALUES ('1', '1-bosch-serie-4-wot24227.jpg', '1', '1');
INSERT INTO `photos` VALUES ('2', '2-bosch-serie-6-wag32490.jpg', '2', '1');
INSERT INTO `photos` VALUES ('3', '3-bosch-serie-6-waq2445xme.jpg', '3', '1');
INSERT INTO `photos` VALUES ('4', '4-bosch-serie-6-wat2446s.jpg', '4', '1');
INSERT INTO `photos` VALUES ('5', '5-bosch-serie-6-wat28321.jpg', '5', '1');
INSERT INTO `photos` VALUES ('6', '6-bosch-serie-6-wat28391.jpg', '6', '1');
INSERT INTO `photos` VALUES ('7', '7-bosch-serie-6-wat28411.jpg', '7', '1');
INSERT INTO `photos` VALUES ('8', '8-bosch-serie-6-wat28421.jpg', '8', '1');
INSERT INTO `photos` VALUES ('9', '9-bosch-serie-6-wat28461me.jpg', '9', '1');
INSERT INTO `photos` VALUES ('10', '10-bosch-serie-6-wat28590.jpg', '10', '1');
INSERT INTO `photos` VALUES ('11', '11-bosch-serie-6-wat28641.jpg', '11', '1');
INSERT INTO `photos` VALUES ('12', '12-bosch-serie-6-wat28681me.jpg', '12', '1');
INSERT INTO `photos` VALUES ('13', '13-bosch-waa-24160.jpg', '13', '1');
INSERT INTO `photos` VALUES ('14', '14-bosch-wor-16150.jpg', '14', '1');
INSERT INTO `photos` VALUES ('15', '15-bosch-wae-20460.jpg', '15', '1');
INSERT INTO `photos` VALUES ('16', '16-bosch-wan-28080.jpg', '16', '1');
INSERT INTO `photos` VALUES ('17', '17-bosch-wln-24260.jpg', '17', '1');
INSERT INTO `photos` VALUES ('18', '18-bosch-wln-24261.jpg', '18', '1');
INSERT INTO `photos` VALUES ('19', '19-bosch-wlx-36324.jpg', '19', '1');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', 'Стиральная машина');
INSERT INTO `type` VALUES ('2', 'Сушильная машина');
INSERT INTO `type` VALUES ('3', 'Посудомоечная машина');
