/*
Navicat MySQL Data Transfer

Source Server         : asd
Source Server Version : 50558
Source Host           : localhost:3306
Source Database       : product

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2020-12-18 18:19:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` varchar(30) NOT NULL,
  `barcode` varchar(30) NOT NULL DEFAULT '5000000',
  `name` varchar(50) NOT NULL,
  `category` varchar(20) DEFAULT '母婴',
  `reclassify` varchar(20) DEFAULT '婴儿奶粉',
  `price` int(3) DEFAULT '80',
  `minsaleprice` int(3) DEFAULT '70',
  `maxsaleprice` int(3) DEFAULT '100',
  `specifications` varchar(10) DEFAULT '900g',
  `origin` varchar(10) DEFAULT '英国',
  `company` varchar(20) DEFAULT '北京市海欢商贸有限公司',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('UKAMRSP1000000', '500000000', '牛栏 Cow Gate婴儿奶粉白金版五段（2-3岁）900g', '母婴', '婴儿奶粉', '79', '60', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000001', '500000001', '爱他美Aptamil婴儿奶粉一段（1-2岁）900g', '母婴', '婴儿奶粉', '80', '70', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000002', '500000002', '爱他美Aptamil婴儿奶粉一段（0-6个月）900g', '母婴', '婴儿奶粉', '90', '70', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000003', '500000003', '爱他美Aptamil婴儿奶粉二段（6-12个月）900g', '母婴', '婴儿奶粉', '80', '70', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000004', '500000004', '爱他美Aptamil婴儿奶粉三段（1-2岁）900g', '母婴', '婴儿奶粉', '80', '70', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000005', '500000005', '牛栏 Cow Gate婴儿奶粉一段（0-6个月）900g', '母婴', '婴儿奶粉', '80', '70', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000006', '500000006', '牛栏 Cow Gate婴儿奶粉二段（6-12个月）900g', '母婴', '婴儿奶粉', '80', '70', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000007', '500000007', '牛栏 Cow Gate婴儿奶粉二段（1-2岁）900g', '母婴', '婴儿奶粉', '80', '70', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000008', '500000008', '牛栏 Cow Gate婴儿奶粉二段（2-3岁）900g', '母婴', '婴儿奶粉', '80', '70', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000009', '500000009', '爱他美Aptamil婴儿奶粉白金版一段（0-6个月）900g', '母婴', '婴儿奶粉', '80', '70', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000010', '500000010', '爱他美Aptamil婴儿奶粉白金版二段（6-12个月）900g', '母婴', '婴儿奶粉', '87', '70', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000011', '500000011', '爱他美Aptamil婴儿奶粉白金版三段（0-2岁）900g', '母婴', '婴儿奶粉', '76', '70', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000012', '500000012', '爱他美Aptamil婴儿奶粉白金版四段（2-3岁）900g', '母婴', '婴儿奶粉', '70', '60', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000013', '500000013', '牛栏 Cow Gate婴儿奶粉白金版一段（0-6个月）900g', '母婴', '婴儿奶粉', '70', '60', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000014', '500000014', '牛栏 Cow Gate婴儿奶粉白金版二段（6-12个月）900g', '母婴', '婴儿奶粉', '70', '60', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000015', '500000015', '牛栏 Cow Gate婴儿奶粉白金版三段（0-2岁）900g', '母婴', '婴儿奶粉', '78', '60', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000016', '500000016', '牛栏 Cow Gate婴儿奶粉白金版四段（2-3岁）900g', '母婴', '婴儿奶粉', '79', '60', '90', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000017', '500000017', '牛栏 Cow Gate婴儿奶粉白金版五段（2-3岁）900g', '母婴', '婴儿奶粉', '80', '70', '100', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000018', '500000018', '牛栏 Cow Gate婴儿奶粉白金版六段（2-3岁）900g', '母婴', '婴儿奶粉', '80', '70', '100', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000019', '500000019', '牛栏 Cow Gate婴儿奶粉白金版七段（2-3岁）900g', '母婴', '婴儿奶粉', '80', '70', '100', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000020', '500000020', '康多蜜儿（Kendamil) 婴儿奶粉白金版一段（0-6个月）900g', '母婴', '婴儿奶粉', '80', '70', '100', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000021', '500000021', '康多蜜儿（Kendamil) 婴儿奶粉白金版二段（6-12个月）900g', '母婴', '婴儿奶粉', '80', '70', '100', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000022', '500000022', '康多蜜儿（Kendamil) 婴儿奶粉白金版三段（0-2岁）900g', '母婴', '婴儿奶粉', '80', '70', '100', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000023', '500000023', '康多蜜儿（Kendamil) 婴儿奶粉白金版四段（2-3岁）900g', '母婴', '婴儿奶粉', '80', '70', '100', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000024', '500000024', '康多蜜儿（Kendamil) 婴儿奶粉白金版五段（2-3岁）900g', '母婴', '婴儿奶粉', '80', '70', '99', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000025', '500000025', '康多蜜儿（Kendamil) 婴儿奶粉白金版六段（2-3岁）900g', '母婴', '婴儿奶粉', '80', '70', '88', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000026', '500000026', '康多蜜儿（Kendamil) 婴儿奶粉白金版七段（2-3岁）900g', '母婴', '婴儿奶粉', '80', '70', '99', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000027', '500000027', '康多蜜儿（Kendamil) 婴儿奶粉一段（1-2岁）900g', '母婴', '婴儿奶粉', '80', '70', '96', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000028', '500000028', '康多蜜儿（Kendamil) 婴儿奶粉一段（0-6个月）900g', '母婴', '婴儿奶粉', '80', '70', '98', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000029', '500000029', '康多蜜儿（Kendamil) 婴儿奶粉二段（6-12个月）900g', '母婴', '婴儿奶粉', '80', '70', '97', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000030', '500000030', '康多蜜儿（Kendamil) 婴儿奶粉三段（1-2岁）900g', '母婴', '婴儿奶粉', '80', '70', '97', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000031', '500000031', '康多蜜儿（Kendamil) 婴儿奶粉四段（2-3岁）900g', '母婴', '婴儿奶粉', '80', '70', '99', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000032', '500000032', '康多蜜儿（Kendamil) 婴儿奶粉五段（3-4岁）900g', '母婴', '婴儿奶粉', '80', '70', '99', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000033', '500000033', '康多蜜儿（Kendamil) 婴儿奶粉六段（4-5岁）900g', '母婴', '婴儿奶粉', '80', '70', '99', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000034', '500000034', '康多蜜儿（Kendamil) 婴儿奶粉七段（1-2岁）900g', '母婴', '婴儿奶粉', '80', '70', '99', '900g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000035', '500000035', '爱他美（Aptamil儿童配方奶粉1段（0-6个月）800g', '母婴', '婴儿奶粉', '80', '70', '99', '800g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000036', '500000036', '爱他美（Aptamil儿童配方奶粉2段（6-12个月）800g', '母婴', '婴儿奶粉', '80', '70', '99', '800g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000037', '500000037', '爱他美（Aptamil儿童配方奶粉3段（1-2岁）800g', '母婴', '婴儿奶粉', '80', '70', '98', '800g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000038', '500000038', '爱他美（Aptamil儿童配方奶粉4段（24-36个月）800g', '母婴', '婴儿奶粉', '80', '70', '98', '800g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000039', '500000039', '爱他美（Aptamil儿童配方奶粉5段（24-36个月）800g', '母婴', '婴儿奶粉', '80', '70', '98', '800g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000040', '500000040', '爱他美（Aptamil儿童配方奶粉6段（24-36个月）800g', '母婴', '婴儿奶粉', '80', '70', '98', '800g', '英国', '长沙市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000041', '500000041', '纽康特（Neocate）儿童配方奶粉1段（0-6个月）800g', '母婴', '婴儿奶粉', '80', '70', '98', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000042', '500000042', '纽康特（Neocate）儿童配方奶粉2段（6-12个月）800g', '母婴', '婴儿奶粉', '80', '70', '98', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000043', '500000043', '纽康特（Neocate儿童配方奶粉3段（1-2岁）800g', '母婴', '婴儿奶粉', '80', '70', '98', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000044', '500000044', '纽康特（Neocate）儿童配方奶粉4段（1-2岁）800g', '母婴', '婴儿奶粉', '80', '70', '89', '900g', '英国', '武汉市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000045', '500000045', '纽康特（Neocate）儿童配方奶粉5段（1-2岁）800g', '母婴', '婴儿奶粉', '80', '70', '98', '900g', '英国', '北京市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000046', '500000046', '纽康特（Neocate）儿童配方奶粉6段（1-2岁）800g', '母婴', '婴儿奶粉', '80', '70', '99', '900g', '英国', '北京市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000047', '500000047', '纽康特（Neocate）儿童配方奶粉7段（1-2岁）800g', '母婴', '婴儿奶粉', '80', '70', '100', '900g', '英国', '北京市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000048', '500000048', '纽康特（Neocate） 婴儿奶粉一段（1-2岁）900g', '母婴', '婴儿奶粉', '80', '70', '100', '900g', '英国', '北京市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000049', '500000049', '纽康特（Neocate）婴儿奶粉一段（0-6个月）900g', '母婴', '婴儿奶粉', '80', '70', '100', '900g', '英国', '北京市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000050', '500000050', '纽康特（Neocate）婴儿奶粉二段（6-12个月）900g', '母婴', '婴儿奶粉', '80', '70', '100', '900g', '英国', '北京市海欢商贸有限公司');
INSERT INTO `product` VALUES ('UKAMRSP1000051', '500000051', '纽康特（Neocate）婴儿奶粉四段（2-3岁）900g', '母婴', '婴儿奶粉', '80', '70', '100', '900g', '英国', '北京市海欢商贸有限公司');
