/*
Navicat MySQL Data Transfer

Source Server         : sanshui
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : tpshop

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-07-19 20:27:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tpshop_address`
-- ----------------------------
DROP TABLE IF EXISTS `tpshop_address`;
CREATE TABLE `tpshop_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `consignee` varchar(64) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '收货地址',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人手机号',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL COMMENT '软删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_address
-- ----------------------------
INSERT INTO `tpshop_address` VALUES ('1', '1', '曹操', '北京市顺义区黑马程序员', '13102460166', '1523501542', '1523501542', null);
INSERT INTO `tpshop_address` VALUES ('2', '2', '孙权', '北京市昌平区修正大厦', '13102460166', '1523502219', '1523502219', null);

-- ----------------------------
-- Table structure for `tpshop_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `tpshop_attribute`;
CREATE TABLE `tpshop_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '属性id',
  `attr_name` varchar(255) NOT NULL DEFAULT '' COMMENT '属性名称',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '类型id',
  `attr_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '属性类型 0唯一属性 1单选属性',
  `attr_input_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '录入方式: 0输入框 1下拉列表 2多选框',
  `attr_values` varchar(255) NOT NULL DEFAULT '' COMMENT '供选择的属性值',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_attribute
-- ----------------------------
INSERT INTO `tpshop_attribute` VALUES ('1', '0001', '1', '0', '0', '李银河,王小波', '1528982820', '1528982820', null);
INSERT INTO `tpshop_attribute` VALUES ('2', '0002', '2', '0', '1', '陈佩斯,朱时茂,赵本山,赵丽蓉,冯巩,蔡明,潘长江', '1528982876', '1528982876', null);
INSERT INTO `tpshop_attribute` VALUES ('3', '0003', '3', '1', '0', '春晚', '1528982919', '1528982919', null);
INSERT INTO `tpshop_attribute` VALUES ('4', '颜色', '4', '1', '2', '红,黄,蓝,黑,白', '1528983076', '1528983076', null);
INSERT INTO `tpshop_attribute` VALUES ('6', '', '0', '1', '2', '', '1529491002', '1529491002', null);
INSERT INTO `tpshop_attribute` VALUES ('7', '重量', '1', '1', '2', '1g,2g,3g,4g,5g', '1529491253', '1529491253', null);
INSERT INTO `tpshop_attribute` VALUES ('8', '二二三四', '9', '1', '2', '23,44,56,78,90', '1529492090', '1529492090', null);

-- ----------------------------
-- Table structure for `tpshop_auth`
-- ----------------------------
DROP TABLE IF EXISTS `dj_auth`;
CREATE TABLE `dj_auth` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(20) NOT NULL COMMENT '权限名称',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父id',
  `auth_c` varchar(32) NOT NULL DEFAULT '' COMMENT '控制器',
  `auth_a` varchar(32) NOT NULL DEFAULT '' COMMENT '操作方法',
  `is_nav` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否作为菜单显示 1是 0否',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_auth
-- ----------------------------
INSERT INTO `dj_auth` VALUES ('1', '权限管理', '0', '', '', '1', '1520408547', null, null);
INSERT INTO `dj_auth` VALUES ('2', '商品管理', '0', '', '', '1', '1520408547', null, null);
INSERT INTO `dj_auth` VALUES ('3', '角色管理', '0', '', '', '1', '1520408547', null, null);
INSERT INTO `dj_auth` VALUES ('4', '广告管理', '0', '', '', '1', '1520408547', null, null);
INSERT INTO `dj_auth` VALUES ('5', '管理员列表', '1', 'Manager', 'index', '1', '1520408547', null, null);
INSERT INTO `dj_auth` VALUES ('6', '管理员新增', '1', 'Manager', 'create', '1', '1520408547', null, null);
INSERT INTO `dj_auth` VALUES ('7', '角色管理', '1', 'Role', 'index', '1', '1520408547', null, null);
INSERT INTO `dj_auth` VALUES ('8', '权限管理', '1', 'Auth', 'index', '1', '1520408547', null, null);
INSERT INTO `dj_auth` VALUES ('9', '商品列表', '2', 'Goods', 'index', '1', '1520408547', null, null);
INSERT INTO `dj_auth` VALUES ('10', '商品新增', '2', 'Goods', 'create', '1', '1520408547', null, null);
INSERT INTO `dj_auth` VALUES ('11', '商品类型', '2', 'Type', 'index', '1', '1520408547', null, null);
INSERT INTO `dj_auth` VALUES ('12', '订单列表', '3', 'Order', 'index', '1', '1520408547', null, null);
INSERT INTO `dj_auth` VALUES ('13', '添加订单', '3', 'Order', 'create', '1', '1520408547', null, null);
INSERT INTO `dj_auth` VALUES ('14', '商品删除', '2', 'Goods', 'delete', '0', '1521272189', '1521272189', null);
INSERT INTO `dj_auth` VALUES ('15', '商品属性', '2', 'Attribute', 'index', '1', '1521507069', '1521507069', null);
INSERT INTO `dj_auth` VALUES ('16', '广告列表', '4', 'Poster', 'index', '1', '1521507069', '1521507069', null);
INSERT INTO `dj_auth` VALUES ('17', '广告添加', '4', 'Poster', 'create', '1', '1521507069', '1521507069', null);
INSERT INTO `dj_auth` VALUES ('18', '广告类型', '4', 'Poster', 'index', '1', '1521507069', '1521507069', null);
INSERT INTO `dj_auth` VALUES ('19', '广告删除', '4', 'Poster', 'delete', '1', '1521507069', '1521507069', null);
INSERT INTO `dj_auth` VALUES ('20', '广告信息', '4', 'Poster', 'index', '1', '1521507069', '1521507069', null);

-- ----------------------------
-- Table structure for `tpshop_cart`
-- ----------------------------
DROP TABLE IF EXISTS `tpshop_cart`;
CREATE TABLE `tpshop_cart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `goods_attr_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '商品属性ids（多个id用,分隔）',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '购买数量',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `tpshop_category`
-- ----------------------------
DROP TABLE IF EXISTS `tpshop_category`;
CREATE TABLE `tpshop_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级分类',
  `is_show` tinyint(3) NOT NULL DEFAULT '1' COMMENT '是否显示 0不显示 1显示',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1038 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_category
-- ----------------------------
INSERT INTO `tpshop_category` VALUES ('1', '家用电器', '0', '1', '1522819513', '1522819513', null);
INSERT INTO `tpshop_category` VALUES ('1034', '实时资讯', '127', '1', '1522819518', '1522819518', null);
INSERT INTO `tpshop_category` VALUES ('1035', '市场行情', '127', '1', '1522819518', '1522819518', null);
INSERT INTO `tpshop_category` VALUES ('1036', '投资达人', '127', '1', '1522819518', '1522819518', null);
INSERT INTO `tpshop_category` VALUES ('1037', '量化平台', '127', '1', '1522819518', '1522819518', null);

-- ----------------------------
-- Table structure for `tpshop_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tpshop_goods`;
CREATE TABLE `tpshop_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `goods_number` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '商品数量',
  `goods_introduce` text COMMENT '详细介绍',
  `goods_logo` varchar(255) NOT NULL DEFAULT '' COMMENT '商品logo图',
  `create_time` int(11) unsigned DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) unsigned DEFAULT NULL COMMENT '修改时间',
  `delete_time` int(11) unsigned DEFAULT NULL COMMENT '软删除时间',
  `type_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品类型id',
  `cate_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品分类id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_goods
-- ----------------------------
INSERT INTO `tpshop_goods` VALUES ('32', 'Apple iPhone 7 Plus', '5799.00', '10000', '<p><img src=\"/ueditor/php/upload/image/20180404/1522821194971442.png\" alt=\"b1.png\" /><img src=\"/ueditor/php/upload/image/20180404/1522821200955649.png\" alt=\"b2.png\" /><img src=\"/ueditor/php/upload/image/20180404/1522821203285257.png\" alt=\"b3.png\" /></p>', '\\uploads\\20180404\\52439c7352d25903bb58af73738529f0.png', '1522821538', '1522823812', null, '2', '187');
INSERT INTO `tpshop_goods` VALUES ('33', 'Apple iPhone X', '10000.00', '10000', '<p><img src=\"/ueditor/php/upload/image/20180404/1522823892749269.png\" alt=\"1522823892749269.png\" /></p><p><img src=\"/ueditor/php/upload/image/20180404/1522823892946053.png\" alt=\"1522823892946053.png\" /></p><p><img src=\"/ueditor/php/upload/image/20180404/1522823892372354.png\" alt=\"1522823892372354.png\" /></p><p><img src=\"/ueditor/php/upload/image/20180404/1522823893109601.png\" alt=\"1522823893109601.png\" /></p><p><img src=\"/ueditor/php/upload/image/20180404/1522823893349848.png\" alt=\"1522823893349848.png\" /></p><p><br /></p>', '\\uploads\\20180404\\8649191819f7b4bed7fc8f17ed712a66.png', '1522823921', '1522823921', null, '2', '187');
INSERT INTO `tpshop_goods` VALUES ('34', 'Apple iphone 2', '0.01', '1000', 'test', '\\uploads\\20180404\\8649191819f7b4bed7fc8f17ed712a66.png', '1522824822', '1522824822', null, '2', '187');
INSERT INTO `tpshop_goods` VALUES ('35', 'Apple iphone 4', '0.01', '1000', 'test', '\\uploads\\20180404\\8649191819f7b4bed7fc8f17ed712a66.png', '1522824822', '1522824822', null, '2', '187');
INSERT INTO `tpshop_goods` VALUES ('36', 'Apple iphone 5', '0.01', '1000', 'test', '\\uploads\\20180404\\8649191819f7b4bed7fc8f17ed712a66.png', '1522824822', '1522824822', null, '2', '187');
INSERT INTO `tpshop_goods` VALUES ('37', 'Apple iphone 6', '0.01', '1000', 'test', '\\uploads\\20180404\\8649191819f7b4bed7fc8f17ed712a66.png', '1522824822', '1527489282', '1527489282', '2', '187');
INSERT INTO `tpshop_goods` VALUES ('38', 'Apple iphone 8', '0.01', '1000', 'test', '\\uploads\\20180404\\8649191819f7b4bed7fc8f17ed712a66.png', '1522824822', '1527489256', '1527489256', '2', '187');
INSERT INTO `tpshop_goods` VALUES ('39', 'Apple iphone 6 Plus', '0.01', '1000', 'test', '\\uploads\\20180404\\8649191819f7b4bed7fc8f17ed712a66.png', '1522824822', '1527489214', '1527489214', '2', '187');
INSERT INTO `tpshop_goods` VALUES ('40', 'Apple iphone 3', '0.01', '1000', 'test', '\\uploads\\20180404\\8649191819f7b4bed7fc8f17ed712a66.png', '1522824823', '1527489203', '1527489203', '2', '0');
INSERT INTO `tpshop_goods` VALUES ('41', '《强迫自己》', '5.20', '1', '', '', '1527475656', '1527475656', null, '0', '0');
INSERT INTO `tpshop_goods` VALUES ('42', '红楼梦', '39.99', '2', '', '', '1527485647', '1527485647', null, '0', '0');
INSERT INTO `tpshop_goods` VALUES ('43', '圣斗士', '888.99', '50', '', '', '1527494929', '1527494929', null, '0', '0');
INSERT INTO `tpshop_goods` VALUES ('44', '火箭', '1888888.88', '12', '', '\\uploads\\20180529\\b7db23bcf4af18067b452bce1864c8a6.jpg', '1527565432', '1527565744', null, '0', '0');
INSERT INTO `tpshop_goods` VALUES ('45', '黑狗', '555.50', '5', '', '\\uploads\\20180529\\5e5971082feae1456babab55cefbf48f.jpg', '1527565488', '1527565488', null, '0', '0');
INSERT INTO `tpshop_goods` VALUES ('46', '红楼梦', '55.40', '2', '', '\\uploads\\20180529\\5f8d59d3e546537288fb0161a83dcc0e.jpg', '1527591972', '1527591972', null, '0', '0');
INSERT INTO `tpshop_goods` VALUES ('47', '12312', '55.44', '555', '', '\\uploads\\20180605\\ab088c7982f98ed90556bea65d8909b9.jpg', '1528159928', '1528159928', null, '0', '0');
INSERT INTO `tpshop_goods` VALUES ('48', '蒙娜丽莎', '1.10', '11', '<p>阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬阿斯蒂芬尴尬</p>', '\\uploads\\20180614\\0585b5a2741cc4134e172b96931d2e2b.jpg', '1528983273', '1528983273', null, '4', '975');
INSERT INTO `tpshop_goods` VALUES ('49', '黄金时代', '55.50', '666', '<p>萨达所大所萨达所大所萨达所大所萨达所大所萨达所大所萨达所大所萨达所大所</p>', '\\uploads\\20180614\\4b4ab57fb258c7a1d546bb332eda0921.jpg', '1528983862', '1528983862', null, '2', '939');
INSERT INTO `tpshop_goods` VALUES ('50', '二二三四', '22.34', '3', '<p>检测</p>', '\\uploads\\20180620\\44c1dc16254532270ec1a8bd06e0f086.jpg', '1529492174', '1529759747', null, '9', '128');
INSERT INTO `tpshop_goods` VALUES ('51', '二二三四2', '22.34', '19', '<p>1212123</p><p>12312312</p>', '\\uploads\\20180620\\302e7c63b23b08f20b34db7a68739766.jpg', '1529492244', '1529759747', null, '9', '128');

-- ----------------------------
-- Table structure for `tpshop_goodspics`
-- ----------------------------

DROP TABLE IF EXISTS `tpshop_goodspics-`;
CREATE TABLE `tpshop_goodspics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `pics_big` varchar(255) NOT NULL DEFAULT '' COMMENT '相册大图地址 800*800',
  `pics_sma` varchar(255) NOT NULL DEFAULT '' COMMENT '相册小图地址 400*400',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_goodspics
-- ----------------------------
INSERT INTO `tpshop_goodspics` VALUES ('1', '48', '\\uploads\\20180614\\thumb_800_e48f5cd7d8a2e039bfc33dfd493637d2.jpg', '\\uploads\\20180614\\thumb_400_e48f5cd7d8a2e039bfc33dfd493637d2.jpg', '1528983274', '1528983274', null);
INSERT INTO `tpshop_goodspics` VALUES ('2', '48', '\\uploads\\20180614\\thumb_800_5cb5748e06855323a85b87037e8b2a83.jpg', '\\uploads\\20180614\\thumb_400_5cb5748e06855323a85b87037e8b2a83.jpg', '1528983274', '1528983274', null);
INSERT INTO `tpshop_goodspics` VALUES ('3', '48', '\\uploads\\20180614\\thumb_800_a4d16930b1eba1104d3352187c90d3f7.jpg', '\\uploads\\20180614\\thumb_400_a4d16930b1eba1104d3352187c90d3f7.jpg', '1528983274', '1528983274', null);
INSERT INTO `tpshop_goodspics` VALUES ('4', '49', '\\uploads\\20180614\\thumb_800_385ae34df0cce15b2e0f8577fa43de12.jpg', '\\uploads\\20180614\\thumb_400_385ae34df0cce15b2e0f8577fa43de12.jpg', '1528983862', '1528983862', null);
INSERT INTO `tpshop_goodspics` VALUES ('5', '49', '\\uploads\\20180614\\thumb_800_deeffea9adaa0168c7e65b91bf381299.jpg', '\\uploads\\20180614\\thumb_400_deeffea9adaa0168c7e65b91bf381299.jpg', '1528983862', '1528983862', null);
INSERT INTO `tpshop_goodspics` VALUES ('6', '49', '\\uploads\\20180614\\thumb_800_1006f79b1b4645f0d0a3bb8d4a12a732.jpg', '\\uploads\\20180614\\thumb_400_1006f79b1b4645f0d0a3bb8d4a12a732.jpg', '1528983862', '1528983862', null);
INSERT INTO `tpshop_goodspics` VALUES ('7', '50', '\\uploads\\20180620\\thumb_800_b8108d145f59c09d73f2e3386c459f3e.jpg', '\\uploads\\20180620\\thumb_400_b8108d145f59c09d73f2e3386c459f3e.jpg', '1529492174', '1529492174', null);
INSERT INTO `tpshop_goodspics` VALUES ('8', '50', '\\uploads\\20180620\\thumb_800_db34093f26983634877c757bb7e30ce1.jpg', '\\uploads\\20180620\\thumb_400_db34093f26983634877c757bb7e30ce1.jpg', '1529492174', '1529492174', null);
INSERT INTO `tpshop_goodspics` VALUES ('9', '50', '\\uploads\\20180620\\thumb_800_d09b561a0cbce8278c4fefe9b0216f52.jpg', '\\uploads\\20180620\\thumb_400_d09b561a0cbce8278c4fefe9b0216f52.jpg', '1529492174', '1529492174', null);
INSERT INTO `tpshop_goodspics` VALUES ('10', '51', '\\uploads\\20180620\\thumb_800_78e0640aa66fbbeb94e6eed8df028b99.jpg', '\\uploads\\20180620\\thumb_400_78e0640aa66fbbeb94e6eed8df028b99.jpg', '1529492245', '1529492245', null);
INSERT INTO `tpshop_goodspics` VALUES ('11', '51', '\\uploads\\20180620\\thumb_800_f19d6d00f9894d2266551e4155b6f41d.jpg', '\\uploads\\20180620\\thumb_400_f19d6d00f9894d2266551e4155b6f41d.jpg', '1529492245', '1529492245', null);
INSERT INTO `tpshop_goodspics` VALUES ('12', '51', '\\uploads\\20180620\\thumb_800_f432f226d26efb07ed0a77a7762419b1.jpg', '\\uploads\\20180620\\thumb_400_f432f226d26efb07ed0a77a7762419b1.jpg', '1529492245', '1529492245', null);

-- ----------------------------
-- Table structure for `tpshop_goods_attr`
-- ----------------------------
DROP TABLE IF EXISTS `tpshop_goods_attr`;
CREATE TABLE `tpshop_goods_attr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `attr_id` int(11) NOT NULL COMMENT '属性id',
  `attr_value` varchar(255) NOT NULL DEFAULT '' COMMENT '属性值',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_goods_attr
-- ----------------------------
INSERT INTO `tpshop_goods_attr` VALUES ('1', '49', '2', '赵丽蓉', '1528983863', '1528983863', null);
INSERT INTO `tpshop_goods_attr` VALUES ('2', '50', '8', '23', '1529492175', '1529492175', null);
INSERT INTO `tpshop_goods_attr` VALUES ('3', '50', '8', '44', '1529492175', '1529492175', null);
INSERT INTO `tpshop_goods_attr` VALUES ('4', '50', '8', '56', '1529492175', '1529492175', null);
INSERT INTO `tpshop_goods_attr` VALUES ('5', '50', '8', '78', '1529492175', '1529492175', null);
INSERT INTO `tpshop_goods_attr` VALUES ('6', '50', '8', '90', '1529492175', '1529492175', null);
INSERT INTO `tpshop_goods_attr` VALUES ('7', '51', '8', '44', '1529492245', '1529492245', null);
INSERT INTO `tpshop_goods_attr` VALUES ('8', '51', '8', '56', '1529492245', '1529492245', null);
INSERT INTO `tpshop_goods_attr` VALUES ('9', '51', '8', '78', '1529492245', '1529492245', null);

-- ----------------------------
-- Table structure for `dj_manager`
-- ----------------------------
DROP TABLE IF EXISTS `dj_manager`;
CREATE TABLE `dj_manager` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `last_login_time` int(11) unsigned DEFAULT NULL COMMENT '上次登录时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态：1可用 2禁用',
  `role_id` tinyint(3) NOT NULL DEFAULT '0' COMMENT '角色id',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_manager
-- ----------------------------
INSERT INTO `tpshop_manager` VALUES ('1', 'admin', '5ac39ac2e0fec4c3990fe61e95867e38', 'admin@itcast.cn', 'admin', '1520408547', '1', '1', '1520408547', '1522654098', null);
INSERT INTO `tpshop_manager` VALUES ('2', 'sunquan', '8ea6eaee0c5819e756b604c998639b13', 'sunquan@itcast.cn', '骑鱼的猫', '0', '1', '2', '1520408547', null, null);
INSERT INTO `tpshop_manager` VALUES ('3', 'liubei', '8ea6eaee0c5819e756b604c998639b13', 'liubei@itcast.cn', '地球是我搓圆的', '0', '1', '2', '1520408547', null, null);
INSERT INTO `tpshop_manager` VALUES ('4', 'caocao', '8ea6eaee0c5819e756b604c998639b13', 'caocao@itcast.cn', '除了帅我一无所有', '0', '1', '2', '1520408547', null, null);
INSERT INTO `tpshop_manager` VALUES ('5', 'dongzhuo', '8ea6eaee0c5819e756b604c998639b13', 'dongzhuo@itcast.cn', '朕好萌', '0', '2', '3', '1520408547', null, null);
INSERT INTO `tpshop_manager` VALUES ('6', 'yuanshao', '8ea6eaee0c5819e756b604c998639b13', 'yuanshao@itcast.cn', '骑着蜗牛周游世界', '0', '2', '3', '1520408547', null, null);
INSERT INTO `tpshop_manager` VALUES ('7', 'diaochan', '8ea6eaee0c5819e756b604c998639b13', 'diaochan@itcast.cn', '住我心，免房租', '0', '1', '3', '1520408547', null, null);

-- ----------------------------
-- Table structure for `tpshop_order`
-- ----------------------------
DROP TABLE IF EXISTS `tpshop_order`;
CREATE TABLE `tpshop_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '下单用户id',
  `consignee_name` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `consignee_phone` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人手机号',
  `consignee_address` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人地址',
  `shipping_type` varchar(64) NOT NULL DEFAULT '' COMMENT '配送方式 yuantong圆通 shentong申通 yunda韵达 zhongtong中通 shunfeng顺丰',
  `pay_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付状态 0未付款 1已付款',
  `pay_type` varchar(64) NOT NULL DEFAULT '' COMMENT '支付方式 card银联 wechat微信 alipay支付宝',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_order
-- ----------------------------
INSERT INTO `tpshop_order` VALUES ('5', '3513941529759747', '223.40', '1', '曹操', '13102460166', '北京市顺义区黑马程序员', 'yuantong', '0', 'alipay', '1529759747', '1529759747', null);
INSERT INTO `tpshop_order` VALUES ('6', '5769601529759762', '0.00', '1', '曹操', '13102460166', '北京市顺义区黑马程序员', 'yuantong', '0', 'alipay', '1529759762', '1529759762', null);

-- ----------------------------
-- Table structure for `tpshop_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tpshop_order_goods`;
CREATE TABLE `tpshop_order_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品单价',
  `goods_logo` varchar(255) NOT NULL DEFAULT '' COMMENT '商品logo图',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '购买数量',
  `goods_attr_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '商品属性ids',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_order_goods
-- ----------------------------
INSERT INTO `tpshop_order_goods` VALUES ('17', '5', '51', '二二三四2', '22.34', '\\uploads\\20180620\\302e7c63b23b08f20b34db7a68739766.jpg', '3', '8', '1529759747', '1529759747', null);
INSERT INTO `tpshop_order_goods` VALUES ('18', '5', '50', '二二三四', '22.34', '\\uploads\\20180620\\44c1dc16254532270ec1a8bd06e0f086.jpg', '2', '2', '1529759747', '1529759747', null);
INSERT INTO `tpshop_order_goods` VALUES ('19', '5', '50', '二二三四', '22.34', '\\uploads\\20180620\\44c1dc16254532270ec1a8bd06e0f086.jpg', '4', '3', '1529759747', '1529759747', null);
INSERT INTO `tpshop_order_goods` VALUES ('20', '5', '50', '二二三四', '22.34', '\\uploads\\20180620\\44c1dc16254532270ec1a8bd06e0f086.jpg', '1', '4', '1529759747', '1529759747', null);

-- ----------------------------
-- Table structure for `tpshop_role`
-- ----------------------------
DROP TABLE IF EXISTS `dj_role`;
CREATE TABLE `dj_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL DEFAULT '' COMMENT '角色/用户组名称',
  `role_auth_ids` varchar(128) NOT NULL DEFAULT '' COMMENT '权限ids,1,2,5，权限表中的主键集合',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_role
-- ----------------------------
INSERT INTO `dj_role` VALUES ('1', '主管', '1,4,5,2,8', '1520408547', '1521337606', null);
INSERT INTO `dj_role` VALUES ('2', '经理', '2,8,9,10,3,11,12', '1520408547', '1521259768', null);

-- ----------------------------
-- Table structure for `tpshop_type`
-- ----------------------------
DROP TABLE IF EXISTS `tpshop_type`;
CREATE TABLE `tpshop_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL DEFAULT '' COMMENT '类型名称',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_type
-- ----------------------------
INSERT INTO `tpshop_type` VALUES ('1', 'aaa', '1528982719', '1528982719', null);
INSERT INTO `tpshop_type` VALUES ('2', 'bbb', '1528982724', '1528982724', null);
INSERT INTO `tpshop_type` VALUES ('3', 'ccc', '1528982729', '1528982729', null);
INSERT INTO `tpshop_type` VALUES ('4', 'ddd', '1528982733', '1528982733', null);
INSERT INTO `tpshop_type` VALUES ('5', 'eee', '1528982738', '1528982738', null);
INSERT INTO `tpshop_type` VALUES ('6', 'fff', '1528982744', '1528982744', null);
INSERT INTO `tpshop_type` VALUES ('7', 'ggg', '1528982749', '1528982749', null);
INSERT INTO `tpshop_type` VALUES ('8', '新类型', '1529486729', '1529486729', null);
INSERT INTO `tpshop_type` VALUES ('9', '再来一次', '1529492039', '1529492039', null);

-- ----------------------------
-- Table structure for `tpshop_user`
-- ----------------------------
DROP TABLE IF EXISTS `tpshop_user`;
CREATE TABLE `tpshop_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
  `phone` varchar(255) NOT NULL DEFAULT '' COMMENT '手机号码',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `is_check` tinyint(2) NOT NULL DEFAULT '0' COMMENT '激活状态 0未激活 1已激活',
  `email_code` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱激活验证码',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '第三方帐号openid',
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpshop_user
-- ----------------------------
INSERT INTO `tpshop_user` VALUES ('1', '489376739@qq.com', '', '1a64de511707a16a17ab2380506df298', '489376739@qq.com', '0', '1', '9304', '', '1529152828', '1529153937', null);
INSERT INTO `tpshop_user` VALUES ('2', '1282791099@qq.com', '', '1a64de511707a16a17ab2380506df298', '1282791099@qq.com', '0', '0', '2877', '', '1529153648', '1529153648', null);
