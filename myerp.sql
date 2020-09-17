/*
Navicat MySQL Data Transfer

Source Server         : mysq
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : myerp

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-09-17 16:20:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbdealer`
-- ----------------------------
DROP TABLE IF EXISTS `tbdealer`;
CREATE TABLE `tbdealer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbdealer
-- ----------------------------

-- ----------------------------
-- Table structure for `tbguestbook`
-- ----------------------------
DROP TABLE IF EXISTS `tbguestbook`;
CREATE TABLE `tbguestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `isshow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbguestbook
-- ----------------------------

-- ----------------------------
-- Table structure for `tbinout`
-- ----------------------------
DROP TABLE IF EXISTS `tbinout`;
CREATE TABLE `tbinout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opttype` int(11) DEFAULT NULL COMMENT '-1为出库，1为入库',
  `proid` int(11) DEFAULT NULL,
  `pronum` varchar(255) DEFAULT NULL,
  `proname` varchar(50) DEFAULT NULL,
  `protype` varchar(255) DEFAULT NULL,
  `proimgurl` varchar(300) DEFAULT NULL,
  `prooldnum` int(11) DEFAULT NULL,
  `proaddnum` int(11) DEFAULT NULL COMMENT '入库或者出库的数量',
  `unitname` varchar(255) DEFAULT NULL COMMENT '计量单位名称',
  `ctime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbinout
-- ----------------------------
INSERT INTO `tbinout` VALUES ('1', '1', '17', 'gl-2020', '格力空调gl-2020', '家用电器/空调', '20200823095339843.jpg', '0', '100', '台', '2020-08-24 15:23:29');
INSERT INTO `tbinout` VALUES ('2', '-1', '17', 'gl-2020', '格力空调gl-2020', '家用电器/空调', '20200823095339843.jpg', '100', '30', '台', '2020-08-24 16:46:19');
INSERT INTO `tbinout` VALUES ('3', '1', '17', 'gl-2020', '格力空调gl-2020', '家用电器/空调', '20200823095339843.jpg', '70', '80', '台', '2020-08-24 16:54:13');
INSERT INTO `tbinout` VALUES ('13', '1', '25', 'HET-847YKPZM(E)', '海尔小天鹅', null, '20200910103924012.png', null, '1', null, '2020-09-16 11:18:26');
INSERT INTO `tbinout` VALUES ('14', '1', '25', 'HET-847YKPZM(E)', '海尔小天鹅', null, '20200910103924012.png', null, '1', null, '2020-09-16 11:33:05');
INSERT INTO `tbinout` VALUES ('15', '1', '28', 'BFG-624WKPZM(A)', '美的变频空调', '/冰箱/美的', '20200916155945392.png', '0', '1', '台', '2020-09-16 16:01:30');

-- ----------------------------
-- Table structure for `tbinout_tuihuan`
-- ----------------------------
DROP TABLE IF EXISTS `tbinout_tuihuan`;
CREATE TABLE `tbinout_tuihuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opttype` int(11) DEFAULT NULL COMMENT '-1为出库，1为入库',
  `proid` int(11) DEFAULT NULL,
  `pronum` varchar(255) DEFAULT NULL,
  `proname` varchar(50) DEFAULT NULL,
  `protype` varchar(255) DEFAULT NULL,
  `proimgurl` varchar(300) DEFAULT NULL,
  `prooldnum` int(11) DEFAULT NULL,
  `proaddnum` int(11) DEFAULT NULL COMMENT '入库或者出库的数量',
  `unitname` varchar(255) DEFAULT NULL COMMENT '计量单位名称',
  `ctime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbinout_tuihuan
-- ----------------------------
INSERT INTO `tbinout_tuihuan` VALUES ('14', '1', '28', 'BFG-624WKPZM(A)', '美的变频空调', null, '20200916155945392.png', null, '1', null, '2020-09-16 16:02:01');
INSERT INTO `tbinout_tuihuan` VALUES ('15', '1', '28', 'BFG-624WKPZM(A)', '美的变频空调', null, '20200916155945392.png', null, '2', null, '2020-09-16 16:09:10');
INSERT INTO `tbinout_tuihuan` VALUES ('16', '1', '28', 'BFG-624WKPZM(A)', '美的变频空调', null, '20200916155945392.png', null, '5', null, '2020-09-16 16:11:39');
INSERT INTO `tbinout_tuihuan` VALUES ('19', '1', '27', 'BCD-629WKPZM(E)', '阿什顿', null, '20200916155926532.png', null, '5', null, '2020-09-17 10:13:45');

-- ----------------------------
-- Table structure for `tblog`
-- ----------------------------
DROP TABLE IF EXISTS `tblog`;
CREATE TABLE `tblog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统日志表',
  `typeid` int(255) DEFAULT NULL COMMENT '日志类型：1登录日志 2操作日志 3异常日志',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `msg` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `ctime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblog
-- ----------------------------
INSERT INTO `tblog` VALUES ('15', '3', '1', '超级管理员', '登录系统失败，用户名为：admin密码：123455', '2020-09-14 16:29:16');
INSERT INTO `tblog` VALUES ('16', '1', '1', '超级管理员', '正常登录系统', '2020-09-14 16:29:22');
INSERT INTO `tblog` VALUES ('17', '1', '1', '超级管理员', '正常登录系统', '2020-09-14 16:30:42');
INSERT INTO `tblog` VALUES ('18', '1', '1', '超级管理员', '正常登录系统', '2020-09-14 16:30:48');
INSERT INTO `tblog` VALUES ('19', '1', '1', '超级管理员', '正常登录系统', '2020-09-14 16:32:58');
INSERT INTO `tblog` VALUES ('20', '1', '1', '超级管理员', '正常登录系统', '2020-09-14 16:38:18');
INSERT INTO `tblog` VALUES ('21', '1', '1', '超级管理员', '正常登录系统', '2020-09-14 16:40:20');
INSERT INTO `tblog` VALUES ('22', '1', '1', '超级管理员', '正常登录系统', '2020-09-14 16:41:33');
INSERT INTO `tblog` VALUES ('23', '3', '1', '超级管理员', '登录系统失败，用户名为：admin密码：11', '2020-09-14 16:43:36');
INSERT INTO `tblog` VALUES ('24', '1', '1', '超级管理员', '正常登录系统', '2020-09-14 17:00:15');
INSERT INTO `tblog` VALUES ('25', '1', '1', '超级管理员', '正常登录系统', '2020-09-15 15:49:39');
INSERT INTO `tblog` VALUES ('26', '1', '1', '超级管理员', '正常登录系统', '2020-09-15 18:55:19');
INSERT INTO `tblog` VALUES ('27', '1', '1', '超级管理员', '正常登录系统', '2020-09-16 09:46:23');
INSERT INTO `tblog` VALUES ('28', '1', '1', '超级管理员', '正常登录系统', '2020-09-16 10:25:07');
INSERT INTO `tblog` VALUES ('29', '1', '1', '超级管理员', '正常登录系统', '2020-09-16 10:34:27');
INSERT INTO `tblog` VALUES ('30', '1', '1', '超级管理员', '正常登录系统', '2020-09-16 10:48:59');
INSERT INTO `tblog` VALUES ('31', '1', '1', '超级管理员', '正常登录系统', '2020-09-16 11:48:57');
INSERT INTO `tblog` VALUES ('32', '1', '1', '超级管理员', '正常登录系统', '2020-09-16 11:53:05');
INSERT INTO `tblog` VALUES ('33', '1', '1', '超级管理员', '正常登录系统', '2020-09-16 14:52:01');
INSERT INTO `tblog` VALUES ('34', '1', '1', '超级管理员', '正常登录系统', '2020-09-16 15:58:23');
INSERT INTO `tblog` VALUES ('35', '3', '0', '未知', '登录系统失败，用户名为：admin密码：hjkhkkjhjhkjh', '2020-09-16 16:03:25');
INSERT INTO `tblog` VALUES ('36', '1', '1', '超级管理员', '正常登录系统', '2020-09-16 16:05:21');
INSERT INTO `tblog` VALUES ('37', '1', '1', '超级管理员', '正常登录系统', '2020-09-16 16:22:43');
INSERT INTO `tblog` VALUES ('38', '1', '1', '超级管理员', '正常登录系统', '2020-09-16 16:41:10');
INSERT INTO `tblog` VALUES ('39', '1', '1', '超级管理员', '正常登录系统', '2020-09-17 09:59:48');
INSERT INTO `tblog` VALUES ('40', '1', '1', '超级管理员', '正常登录系统', '2020-09-17 11:21:00');
INSERT INTO `tblog` VALUES ('41', '1', '1', '超级管理员', '正常登录系统', '2020-09-17 11:29:58');
INSERT INTO `tblog` VALUES ('42', '3', '1', '超级管理员', '登录系统失败，用户名为：admin密码：1    1=1', '2020-09-17 11:34:25');
INSERT INTO `tblog` VALUES ('43', '1', '1', '超级管理员', '正常登录系统', '2020-09-17 11:37:10');
INSERT INTO `tblog` VALUES ('44', '1', '1', '超级管理员', '正常登录系统', '2020-09-17 15:15:03');
INSERT INTO `tblog` VALUES ('45', '1', '1', '超级管理员', '正常登录系统', '2020-09-17 16:08:22');

-- ----------------------------
-- Table structure for `tbmenubar`
-- ----------------------------
DROP TABLE IF EXISTS `tbmenubar`;
CREATE TABLE `tbmenubar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MenuName` varchar(100) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `ParentPath` varchar(100) DEFAULT NULL,
  `Href` varchar(100) DEFAULT NULL,
  `Target` varchar(100) DEFAULT NULL,
  `OrderList` int(11) DEFAULT NULL,
  `Visible` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmenubar
-- ----------------------------
INSERT INTO `tbmenubar` VALUES ('1', '系统设置', '0', '1', '1', null, '', '1', '1');
INSERT INTO `tbmenubar` VALUES ('2', '商品中心', '0', '1', '2', null, '', '2', '1');
INSERT INTO `tbmenubar` VALUES ('3', '进货管理', '0', '1', '3', null, '', '3', '1');
INSERT INTO `tbmenubar` VALUES ('4', '销售管理', '0', '1', '4', null, '', '4', '1');
INSERT INTO `tbmenubar` VALUES ('5', '库存管理', '0', '1', '5', null, '', '7', '1');
INSERT INTO `tbmenubar` VALUES ('6', '报表管理', '0', '1', '6', null, '', '8', '1');
INSERT INTO `tbmenubar` VALUES ('7', '密码修改', '1', '2', '1,7', './admin/passwordedit.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('8', '新增用户', '1', '2', '1,8', './admin/usersadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('9', '建根类别', '2', '2', '2,9', './admin/tbtypeadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('10', '管理类别', '2', '2', '2,10', './tbtypelist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('11', '新增商品', '2', '2', '2,11', './admin/proadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('12', '管理商品', '2', '2', '2,12', './prolist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('13', '创建进货单', '3', '2', '3,13', './admin/ordermain.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('14', '管理进货单', '3', '2', '3,14', './orderheadlist', 'main', '2', '1');
INSERT INTO `tbmenubar` VALUES ('17', '库存入库', '5', '2', '5,17', './admin/proinout.jsp?t=1', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('18', '商品出库', '5', '2', '5,18', './admin/proinout.jsp?t=-1', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('19', '商品查询', '5', '2', '5,19', 'prolistforsearch', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('20', '管理用户', '1', '2', '1,20', './userslist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('21', '新增角色', '1', '2', '1,21', './admin/roleadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('22', '角色管理', '1', '2', '1,22', './rolelist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('23', '入库管理', '0', '1', '23', '', null, '5', '0');
INSERT INTO `tbmenubar` VALUES ('24', '出库管理', '0', '1', '24', null, null, '6', '0');
INSERT INTO `tbmenubar` VALUES ('25', '明细查询', '5', '2', '5,25', './inoutlist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('26', '进货类别报表', '6', '2', '6,26', './admin/baobiao_huanxingtu.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('27', '退换货管理', '0', '1', '27', null, null, '9', '1');
INSERT INTO `tbmenubar` VALUES ('28', '退换操作', '27', '2', '27,28', './admin/pro_tuihuan.jsp?t=1', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('29', '退换数据', '27', '2', '27,29', './pro_tuihuanlist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('30', '创建销售单', '4', '2', '4,30', './admin/salesmain.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('31', '管理销售单', '4', '2', '4,31', './salesheadlist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('32', '产品类销售报表', '6', '2', '6,32', './admin/report_xiaoshou.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('33', '产品类报表', '6', '2', '6,33', './admin/report_products.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('34', '日志数据', '0', '1', '34', null, null, '10', '1');
INSERT INTO `tbmenubar` VALUES ('35', '日志查询', '34', '2', '34,35', './tbloglist', 'main', '1', '1');

-- ----------------------------
-- Table structure for `tbnews`
-- ----------------------------
DROP TABLE IF EXISTS `tbnews`;
CREATE TABLE `tbnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `contents` text,
  `createtime` varchar(100) DEFAULT NULL,
  `typeid` varchar(11) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbnews
-- ----------------------------

-- ----------------------------
-- Table structure for `tborderhead`
-- ----------------------------
DROP TABLE IF EXISTS `tborderhead`;
CREATE TABLE `tborderhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `stel` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `sumprice` decimal(11,0) DEFAULT '0',
  `memberid` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `ptime` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderhead
-- ----------------------------
INSERT INTO `tborderhead` VALUES ('34', '20200903094637149', '超级管理员', '15397600038', '四川成都总部', '6299', '1', '2020-09-03 09:46:37', null, null);
INSERT INTO `tborderhead` VALUES ('36', '20200905213429929', '超级管理员', '13627674786', '中国重庆', '6998', '1', '2020-09-05 21:34:29', null, null);
INSERT INTO `tborderhead` VALUES ('37', '20200906173412252', '超级管理员', '00000000000', '中国北京', '10497', '1', '2020-09-06 17:34:12', null, null);
INSERT INTO `tborderhead` VALUES ('38', '20200910111659696', '超级管理员', '15397600038', '四川成都总部', '11088', '1', '2020-09-10 11:16:59', null, null);
INSERT INTO `tborderhead` VALUES ('39', '20200910111709320', '超级管理员', '15397600038', '四川成都总部', '34440', '1', '2020-09-10 11:17:09', null, null);
INSERT INTO `tborderhead` VALUES ('40', '20200910111715099', '超级管理员', '15397600038', '四川成都总部', '3499', '1', '2020-09-10 11:17:15', null, null);
INSERT INTO `tborderhead` VALUES ('41', '20200911141939080', '超级管理员', '15397600038', '四川成都总部', '11088', '1', '2020-09-11 14:19:39', null, null);
INSERT INTO `tborderhead` VALUES ('42', '20200914171728746', '超级管理员', '15397600038', '四川成都总部', '11397', '1', '2020-09-14 17:17:28', null, null);
INSERT INTO `tborderhead` VALUES ('43', '20200916113156441', '超级管理员', '15397600038', '四川成都总部', '9343', '1', '2020-09-16 11:31:56', null, null);

-- ----------------------------
-- Table structure for `tborderitems`
-- ----------------------------
DROP TABLE IF EXISTS `tborderitems`;
CREATE TABLE `tborderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `imgurl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderitems
-- ----------------------------
INSERT INTO `tborderitems` VALUES ('53', '20200905202201350', '22', '美的智控冰箱', '3499', '1', '20200905202136618.jpg');
INSERT INTO `tborderitems` VALUES ('54', '20200905213429929', '22', '美的智控冰箱', '3499', '2', '20200905202136618.jpg');
INSERT INTO `tborderitems` VALUES ('55', '20200906173412252', '22', '美的智控冰箱', '3499', '3', '20200905202136618.jpg');
INSERT INTO `tborderitems` VALUES ('56', '20200910111659696', '25', '海尔小天鹅', '5544', '2', '20200910103924012.png');
INSERT INTO `tborderitems` VALUES ('57', '20200910111709320', '24', '格力酷力', '6888', '5', '20200910102110868.png');
INSERT INTO `tborderitems` VALUES ('58', '20200910111715099', '22', '美的智控冰箱', '3499', '1', '20200910095325795.png');
INSERT INTO `tborderitems` VALUES ('59', '20200911141939080', '25', '海尔小天鹅', '5544', '2', '20200910103924012.png');
INSERT INTO `tborderitems` VALUES ('60', '20200914171728746', '26', '海信智能洗衣机', '3799', '3', '20200914171714596.png');
INSERT INTO `tborderitems` VALUES ('61', '20200916113156441', '26', '海信智能洗衣机', '3799', '1', '20200914171714596.png');
INSERT INTO `tborderitems` VALUES ('62', '20200916113156441', '25', '海尔小天鹅', '5544', '1', '20200910103924012.png');

-- ----------------------------
-- Table structure for `tbproduct`
-- ----------------------------
DROP TABLE IF EXISTS `tbproduct`;
CREATE TABLE `tbproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proname` varchar(255) DEFAULT NULL,
  `pronum` varchar(255) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `descriptions` text,
  `address` varchar(255) DEFAULT NULL,
  `procount` int(11) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT NULL,
  `procodeurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbproduct
-- ----------------------------
INSERT INTO `tbproduct` VALUES ('27', '阿什顿', 'BCD-629WKPZM(E)', '38', '3499', '温控变频 风冷无霜', '', '广东省', '0', '20200916155926532.png', '20200916155926550.jpg');
INSERT INTO `tbproduct` VALUES ('28', '美的变频空调', 'BFG-624WKPZM(A)', '46', '3799', '温控变频 风冷无霜', '', '广东省', '1', '20200916155945392.png', '20200916155945407.jpg');
INSERT INTO `tbproduct` VALUES ('30', '510L风冷变频', 'ACD-629WOPZM(M)', '38', '2599', '风冷变频', '', '北京', '0', '20200917152726053.png', '20200917152726058.jpg');
INSERT INTO `tbproduct` VALUES ('31', '海尔滚筒', 'QUD-698WKPZM(E)', '44', '3499', '蜂旋式', '', '北京', '0', '20200917161323586.png', '20200917161323589.jpg');
INSERT INTO `tbproduct` VALUES ('32', '格力酷生活', 'HAT-617YKPZM(E)', '42', '4599', '新功效大2匹', '', '广东省', '0', '20200917161702337.png', '20200917161702342.jpg');

-- ----------------------------
-- Table structure for `tbproduct_tuihuan`
-- ----------------------------
DROP TABLE IF EXISTS `tbproduct_tuihuan`;
CREATE TABLE `tbproduct_tuihuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proname` varchar(255) DEFAULT NULL,
  `pronum` varchar(255) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `descriptions` text,
  `address` varchar(255) DEFAULT NULL,
  `procount` int(11) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT NULL,
  `procodeurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbproduct_tuihuan
-- ----------------------------

-- ----------------------------
-- Table structure for `tbrolehasmenu`
-- ----------------------------
DROP TABLE IF EXISTS `tbrolehasmenu`;
CREATE TABLE `tbrolehasmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  `menuid` int(11) DEFAULT NULL,
  `menuname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbrolehasmenu
-- ----------------------------
INSERT INTO `tbrolehasmenu` VALUES ('93', '1', null, '22', null);
INSERT INTO `tbrolehasmenu` VALUES ('94', '1', null, '21', null);
INSERT INTO `tbrolehasmenu` VALUES ('95', '1', null, '20', null);
INSERT INTO `tbrolehasmenu` VALUES ('96', '1', null, '19', null);
INSERT INTO `tbrolehasmenu` VALUES ('97', '1', null, '18', null);
INSERT INTO `tbrolehasmenu` VALUES ('98', '1', null, '17', null);
INSERT INTO `tbrolehasmenu` VALUES ('99', '1', null, '16', null);
INSERT INTO `tbrolehasmenu` VALUES ('100', '1', null, '15', null);
INSERT INTO `tbrolehasmenu` VALUES ('101', '1', null, '14', null);
INSERT INTO `tbrolehasmenu` VALUES ('102', '1', null, '13', null);
INSERT INTO `tbrolehasmenu` VALUES ('103', '1', null, '12', null);
INSERT INTO `tbrolehasmenu` VALUES ('104', '1', null, '11', null);
INSERT INTO `tbrolehasmenu` VALUES ('105', '1', null, '10', null);
INSERT INTO `tbrolehasmenu` VALUES ('106', '1', null, '9', null);
INSERT INTO `tbrolehasmenu` VALUES ('107', '1', null, '8', null);
INSERT INTO `tbrolehasmenu` VALUES ('108', '1', null, '7', null);
INSERT INTO `tbrolehasmenu` VALUES ('109', '1', null, '6', null);
INSERT INTO `tbrolehasmenu` VALUES ('110', '1', null, '5', null);
INSERT INTO `tbrolehasmenu` VALUES ('111', '1', null, '4', null);
INSERT INTO `tbrolehasmenu` VALUES ('112', '1', null, '3', null);
INSERT INTO `tbrolehasmenu` VALUES ('113', '1', null, '2', null);
INSERT INTO `tbrolehasmenu` VALUES ('114', '1', null, '1', null);
INSERT INTO `tbrolehasmenu` VALUES ('115', '2', null, '22', null);
INSERT INTO `tbrolehasmenu` VALUES ('116', '2', null, '21', null);
INSERT INTO `tbrolehasmenu` VALUES ('117', '2', null, '20', null);
INSERT INTO `tbrolehasmenu` VALUES ('118', '2', null, '19', null);
INSERT INTO `tbrolehasmenu` VALUES ('119', '2', null, '18', null);
INSERT INTO `tbrolehasmenu` VALUES ('120', '2', null, '17', null);
INSERT INTO `tbrolehasmenu` VALUES ('121', '2', null, '16', null);
INSERT INTO `tbrolehasmenu` VALUES ('122', '2', null, '15', null);
INSERT INTO `tbrolehasmenu` VALUES ('123', '2', null, '14', null);
INSERT INTO `tbrolehasmenu` VALUES ('124', '2', null, '13', null);
INSERT INTO `tbrolehasmenu` VALUES ('125', '2', null, '12', null);
INSERT INTO `tbrolehasmenu` VALUES ('126', '2', null, '11', null);
INSERT INTO `tbrolehasmenu` VALUES ('127', '2', null, '10', null);
INSERT INTO `tbrolehasmenu` VALUES ('128', '2', null, '9', null);
INSERT INTO `tbrolehasmenu` VALUES ('129', '2', null, '8', null);
INSERT INTO `tbrolehasmenu` VALUES ('130', '2', null, '7', null);
INSERT INTO `tbrolehasmenu` VALUES ('131', '2', null, '6', null);
INSERT INTO `tbrolehasmenu` VALUES ('132', '2', null, '5', null);
INSERT INTO `tbrolehasmenu` VALUES ('133', '2', null, '4', null);
INSERT INTO `tbrolehasmenu` VALUES ('134', '2', null, '3', null);
INSERT INTO `tbrolehasmenu` VALUES ('135', '2', null, '2', null);
INSERT INTO `tbrolehasmenu` VALUES ('136', '2', null, '1', null);
INSERT INTO `tbrolehasmenu` VALUES ('137', '3', null, '3', null);
INSERT INTO `tbrolehasmenu` VALUES ('138', '3', null, '14', null);
INSERT INTO `tbrolehasmenu` VALUES ('139', '3', null, '13', null);
INSERT INTO `tbrolehasmenu` VALUES ('140', '1', null, '24', null);
INSERT INTO `tbrolehasmenu` VALUES ('141', '1', null, '23', null);
INSERT INTO `tbrolehasmenu` VALUES ('142', '1', null, '25', null);
INSERT INTO `tbrolehasmenu` VALUES ('143', '1', null, '26', null);
INSERT INTO `tbrolehasmenu` VALUES ('144', '4', null, '19', null);
INSERT INTO `tbrolehasmenu` VALUES ('145', '4', null, '5', null);
INSERT INTO `tbrolehasmenu` VALUES ('146', '5', null, '6', null);
INSERT INTO `tbrolehasmenu` VALUES ('147', '5', null, '26', null);
INSERT INTO `tbrolehasmenu` VALUES ('148', '1', null, '27', null);
INSERT INTO `tbrolehasmenu` VALUES ('149', '1', null, '28', null);
INSERT INTO `tbrolehasmenu` VALUES ('150', '1', null, '29', null);
INSERT INTO `tbrolehasmenu` VALUES ('151', '1', null, '31', null);
INSERT INTO `tbrolehasmenu` VALUES ('152', '1', null, '30', null);
INSERT INTO `tbrolehasmenu` VALUES ('153', '1', null, '32', null);
INSERT INTO `tbrolehasmenu` VALUES ('154', '1', null, '33', null);
INSERT INTO `tbrolehasmenu` VALUES ('155', '1', null, '34', null);
INSERT INTO `tbrolehasmenu` VALUES ('156', '1', null, '35', null);

-- ----------------------------
-- Table structure for `tbroles`
-- ----------------------------
DROP TABLE IF EXISTS `tbroles`;
CREATE TABLE `tbroles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbroles
-- ----------------------------
INSERT INTO `tbroles` VALUES ('1', '超级管理员', '拥有所有权限');
INSERT INTO `tbroles` VALUES ('2', '管理员', '管理员');
INSERT INTO `tbroles` VALUES ('3', '经销商', '进货管理');
INSERT INTO `tbroles` VALUES ('4', '仓库管理员', '只能查询商品库存信息');
INSERT INTO `tbroles` VALUES ('5', '采购员', '进行进货、报表管理');

-- ----------------------------
-- Table structure for `tbsaleorderhead`
-- ----------------------------
DROP TABLE IF EXISTS `tbsaleorderhead`;
CREATE TABLE `tbsaleorderhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `stel` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `sumprice` decimal(11,0) DEFAULT '0',
  `memberid` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `ptime` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsaleorderhead
-- ----------------------------
INSERT INTO `tbsaleorderhead` VALUES ('5', '20200907141508262', '小张', '133522', '中国北京', '3499', '1', '2020-09-07 14:15:08', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('6', '20200907141945440', '小刘', '15397600038', '中国重庆', '3499', '1', '2020-09-07 14:19:45', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('7', '20200910103810084', '超级管理员', '15397600038', '四川成都总部', '27552', '1', '2020-09-10 10:38:10', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('8', '20200910103954546', '小李', '15397600038', '中国重庆', '11088', '1', '2020-09-10 10:39:54', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('9', '20200914171747457', '超级管理员', '15397600038', '四川成都总部', '7598', '1', '2020-09-14 17:17:47', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('10', '20200916113211916', '超级管理员', '15397600038', '四川成都总部', '9343', '1', '2020-09-16 11:32:11', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('11', '20200917161834759', '超级管理员', '15397600038', '四川成都总部', '2599', '1', '2020-09-17 16:18:34', null, null);

-- ----------------------------
-- Table structure for `tbsaleorderitems`
-- ----------------------------
DROP TABLE IF EXISTS `tbsaleorderitems`;
CREATE TABLE `tbsaleorderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `imgurl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsaleorderitems
-- ----------------------------
INSERT INTO `tbsaleorderitems` VALUES ('5', '20200907141508262', '22', '美的智控冰箱', '3499', '1', '20200905202136618.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('6', '20200907141945440', '22', '美的智控冰箱', '3499', '1', '20200905202136618.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('7', '20200910103810084', '24', '格力酷力', '6888', '4', '20200910102110868.png');
INSERT INTO `tbsaleorderitems` VALUES ('8', '20200910103954546', '25', '海尔小天鹅', '5544', '2', '20200910103924012.png');
INSERT INTO `tbsaleorderitems` VALUES ('9', '20200914171747457', '26', '海信智能洗衣机', '3799', '2', '20200914171714596.png');
INSERT INTO `tbsaleorderitems` VALUES ('10', '20200916113211916', '26', '海信智能洗衣机', '3799', '1', '20200914171714596.png');
INSERT INTO `tbsaleorderitems` VALUES ('11', '20200916113211916', '25', '海尔小天鹅', '5544', '1', '20200910103924012.png');
INSERT INTO `tbsaleorderitems` VALUES ('12', '20200917161834759', '30', '510L风冷变频', '2599', '1', '20200917152726053.png');

-- ----------------------------
-- Table structure for `tbsalesshoppingcar`
-- ----------------------------
DROP TABLE IF EXISTS `tbsalesshoppingcar`;
CREATE TABLE `tbsalesshoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(32) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsalesshoppingcar
-- ----------------------------
INSERT INTO `tbsalesshoppingcar` VALUES ('75', '41EFB73C20B2B946AB68D8917961A513', 'MateBook 13', '21', '1', '2020-08-26 15:39:18', '20200824172055164.png', '5200');
INSERT INTO `tbsalesshoppingcar` VALUES ('76', '41EFB73C20B2B946AB68D8917961A513', '戴尔DELL灵越5000', '20', '1', '2020-08-26 15:39:18', '20200824171708716.png', '4200');
INSERT INTO `tbsalesshoppingcar` VALUES ('82', '1F05DCD56A4F52162F1C64742BEDED48', 'MateBook 13', '21', '1', '2020-09-03 11:38:13', '20200824172055164.png', '5200');
INSERT INTO `tbsalesshoppingcar` VALUES ('83', '9AF4AA4405003C77C01E5C4407D81399', 'MateBook 13', '21', '1', '2020-09-03 19:57:32', '20200824172055164.png', '5200');

-- ----------------------------
-- Table structure for `tbshoppingcar`
-- ----------------------------
DROP TABLE IF EXISTS `tbshoppingcar`;
CREATE TABLE `tbshoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(32) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshoppingcar
-- ----------------------------
INSERT INTO `tbshoppingcar` VALUES ('75', '41EFB73C20B2B946AB68D8917961A513', 'MateBook 13', '21', '1', '2020-08-26 15:39:18', '20200824172055164.png', '5200');
INSERT INTO `tbshoppingcar` VALUES ('76', '41EFB73C20B2B946AB68D8917961A513', '戴尔DELL灵越5000', '20', '1', '2020-08-26 15:39:18', '20200824171708716.png', '4200');
INSERT INTO `tbshoppingcar` VALUES ('82', '1F05DCD56A4F52162F1C64742BEDED48', 'MateBook 13', '21', '1', '2020-09-03 11:38:13', '20200824172055164.png', '5200');
INSERT INTO `tbshoppingcar` VALUES ('83', '9AF4AA4405003C77C01E5C4407D81399', 'MateBook 13', '21', '1', '2020-09-03 19:57:32', '20200824172055164.png', '5200');

-- ----------------------------
-- Table structure for `tbsupplier`
-- ----------------------------
DROP TABLE IF EXISTS `tbsupplier`;
CREATE TABLE `tbsupplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsupplier
-- ----------------------------

-- ----------------------------
-- Table structure for `tbtype`
-- ----------------------------
DROP TABLE IF EXISTS `tbtype`;
CREATE TABLE `tbtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) DEFAULT NULL,
  `parentname` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `fullpath` varchar(255) DEFAULT NULL,
  `levelnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbtype
-- ----------------------------
INSERT INTO `tbtype` VALUES ('31', '电视机', '家用电器', '1', '家用电器/电视机', '1');
INSERT INTO `tbtype` VALUES ('32', '电冰箱', '家用电器', '1', '家用电器/电冰箱', '1');
INSERT INTO `tbtype` VALUES ('33', '空调', '家用电器', '1', '家用电器/空调', '1');
INSERT INTO `tbtype` VALUES ('34', '笔记本', '家用电器', '1', '家用电器/笔记本电脑', '1');
INSERT INTO `tbtype` VALUES ('35', 'TCL', '电视机', '31', '家用电器/电视机/TCL', '2');
INSERT INTO `tbtype` VALUES ('36', '小米', '电视机', '31', '家用电器/电视机/小米', '2');
INSERT INTO `tbtype` VALUES ('37', '冰箱', '/', '0', '/冰箱', '0');
INSERT INTO `tbtype` VALUES ('38', '海尔', '冰箱', '37', '/冰箱/海尔', '1');
INSERT INTO `tbtype` VALUES ('39', '格力', '冰箱', '37', '/冰箱/格力', '1');
INSERT INTO `tbtype` VALUES ('40', '空调', '/', '0', '/空调', '0');
INSERT INTO `tbtype` VALUES ('41', '海尔', '空调', '40', '/空调/海尔', '1');
INSERT INTO `tbtype` VALUES ('42', '格力', '空调', '40', '/空调/格力', '1');
INSERT INTO `tbtype` VALUES ('43', '洗衣机', '/', '0', '/洗衣机', '0');
INSERT INTO `tbtype` VALUES ('44', '海尔', '洗衣机', '43', '/洗衣机/海尔', '1');
INSERT INTO `tbtype` VALUES ('45', '美的', '洗衣机', '43', '/洗衣机/美的', '1');
INSERT INTO `tbtype` VALUES ('46', '美的', '冰箱', '37', '/冰箱/美的', '1');
INSERT INTO `tbtype` VALUES ('47', '美的', '空调', '40', '/空调/美的', '1');
INSERT INTO `tbtype` VALUES ('48', '海信', '洗衣机', '43', '/洗衣机/海信', '1');

-- ----------------------------
-- Table structure for `tbuserhasrole`
-- ----------------------------
DROP TABLE IF EXISTS `tbuserhasrole`;
CREATE TABLE `tbuserhasrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbuserhasrole
-- ----------------------------
INSERT INTO `tbuserhasrole` VALUES ('13', '1', null, '1', null);
INSERT INTO `tbuserhasrole` VALUES ('14', '12', null, '3', null);
INSERT INTO `tbuserhasrole` VALUES ('15', '13', null, '4', null);
INSERT INTO `tbuserhasrole` VALUES ('16', '13', null, '5', null);

-- ----------------------------
-- Table structure for `tbusers`
-- ----------------------------
DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE `tbusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `truename` varchar(20) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `creatorid` int(11) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbusers
-- ----------------------------
INSERT INTO `tbusers` VALUES ('1', 'admin', '123456', '超级管理员', '15397600038', '四川成都总部', null, null);
INSERT INTO `tbusers` VALUES ('2', 'tangyan05', '123456', '张三', '15397600036', '上海江浦路店', null, null);
INSERT INTO `tbusers` VALUES ('7', 'feifei', '123456', '郭靖', '15988886666', '北京复兴门外大街10086号', null, null);
INSERT INTO `tbusers` VALUES ('8', 'tangyan03', '123456', '刘湘', '15397600035', '重庆来福士广场店', null, null);
INSERT INTO `tbusers` VALUES ('11', 'tangyan02', '123456', '汤燕', '15397600033', '成都经销商火车南站西路店', null, null);
INSERT INTO `tbusers` VALUES ('12', 'tangyan01', '123456', '汤燕', '15397600032', '成都天府广场店', null, null);
INSERT INTO `tbusers` VALUES ('13', 'qingzewei', '123456', 'qingzewei', '13500000001', '测试账号', null, null);

-- ----------------------------
-- View structure for `v_product`
-- ----------------------------
DROP VIEW IF EXISTS `v_product`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_product` AS select `tbproduct`.`id` AS `id`,`tbproduct`.`proname` AS `proname`,`tbproduct`.`pronum` AS `pronum`,`tbproduct`.`typeid` AS `typeid`,`tbproduct`.`price` AS `price`,`tbproduct`.`brief` AS `brief`,`tbproduct`.`descriptions` AS `descriptions`,`tbproduct`.`address` AS `address`,`tbproduct`.`procount` AS `procount`,`tbproduct`.`imgurl` AS `imgurl`,`tbproduct`.`procodeurl` AS `procodeurl`,`tbtype`.`levelnum` AS `levelnum`,`tbtype`.`typename` AS `typename`,`tbtype`.`fullpath` AS `fullpath` from (`tbproduct` left join `tbtype` on((`tbproduct`.`typeid` = `tbtype`.`id`))) ;

-- ----------------------------
-- View structure for `v_product_tuihuan`
-- ----------------------------
DROP VIEW IF EXISTS `v_product_tuihuan`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_product_tuihuan` AS select `tbinout_tuihuan`.`id` AS `id`,`tbinout_tuihuan`.`opttype` AS `opttype`,`tbinout_tuihuan`.`proid` AS `proid`,`tbinout_tuihuan`.`pronum` AS `pronum`,`tbinout_tuihuan`.`proname` AS `proname`,`tbinout_tuihuan`.`protype` AS `protype`,`tbinout_tuihuan`.`proimgurl` AS `proimgurl`,`tbinout_tuihuan`.`prooldnum` AS `prooldnum`,`tbinout_tuihuan`.`proaddnum` AS `proaddnum`,`tbinout_tuihuan`.`unitname` AS `unitname`,`tbinout_tuihuan`.`ctime` AS `ctime`,`tbproduct`.`typeid` AS `typeid`,`tbtype`.`typename` AS `typename`,`tbtype`.`levelnum` AS `levelnum`,`tbtype`.`fullpath` AS `fullpath`,`tbproduct`.`imgurl` AS `imgurl`,`tbproduct`.`address` AS `address`,`tbproduct`.`price` AS `price`,`tbproduct`.`procodeurl` AS `procodeurl` from ((`tbinout_tuihuan` left join `tbproduct` on((`tbinout_tuihuan`.`proid` = `tbproduct`.`id`))) left join `tbtype` on((`tbproduct`.`typeid` = `tbtype`.`id`))) ;

-- ----------------------------
-- View structure for `v_saleitems`
-- ----------------------------
DROP VIEW IF EXISTS `v_saleitems`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_saleitems` AS select `tbsaleorderitems`.`id` AS `id`,`tbsaleorderitems`.`orderid` AS `orderid`,`tbsaleorderitems`.`proid` AS `proid`,`tbsaleorderitems`.`proname` AS `proname`,`tbsaleorderitems`.`price` AS `price`,`tbsaleorderitems`.`procount` AS `procount`,`tbsaleorderitems`.`imgurl` AS `imgurl`,`tbsaleorderhead`.`ctime` AS `ctime` from (`tbsaleorderitems` left join `tbsaleorderhead` on((`tbsaleorderitems`.`orderid` = `tbsaleorderhead`.`orderid`))) ;
