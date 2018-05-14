/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50542
 Source Host           : localhost
 Source Database       : temp

 Target Server Type    : MySQL
 Target Server Version : 50542
 File Encoding         : utf-8

 Date: 05/14/2018 15:26:21 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `leepet_access`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_access`;
CREATE TABLE `leepet_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `app` varchar(20) NOT NULL COMMENT '模块',
  `controller` varchar(20) NOT NULL COMMENT '控制器',
  `action` varchar(20) NOT NULL COMMENT '方法',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否有效',
  `menu_id` smallint(6) NOT NULL,
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
--  Records of `leepet_access`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_access` VALUES ('18', 'Admin', 'Role', 'accredit', '1', '32'), ('18', 'Admin', 'Role', 'access', '1', '31'), ('18', 'Admin', 'Role', 'del', '1', '30'), ('18', 'Admin', 'Role', 'edit', '1', '29'), ('18', 'Admin', 'Role', 'add', '1', '28'), ('18', 'Admin', 'Role', 'index', '1', '27'), ('18', 'Admin', 'User', 'check', '1', '26'), ('18', 'Admin', 'User', 'del', '1', '25'), ('18', 'Admin', 'User', 'edit', '1', '24'), ('18', 'Admin', 'User', 'add', '1', '23'), ('18', 'Admin', 'User', 'index', '1', '22'), ('18', 'Admin', 'None', 'none', '1', '21'), ('18', 'Admin', 'Index', 'index', '1', '2'), ('11', 'Admin', 'Content', 'renew', '1', '62'), ('11', 'Admin', 'Content', 'remove', '1', '61'), ('11', 'Admin', 'Content', 'cancelcheck', '1', '60'), ('11', 'Admin', 'Content', 'sort', '1', '59'), ('11', 'Admin', 'Content', 'checkout', '1', '58'), ('11', 'Admin', 'Content', 'check', '1', '57'), ('11', 'Admin', 'Content', 'edit', '1', '55'), ('11', 'Admin', 'Content', 'del', '1', '54'), ('11', 'Admin', 'Content', 'add', '1', '53'), ('11', 'Admin', 'Content', 'index', '1', '56'), ('11', 'Admin', 'None', 'none', '1', '39'), ('11', 'Admin', 'None', 'none', '1', '38'), ('11', 'Admin', 'Index', 'index', '1', '3'), ('11', 'Admin', 'Operationlog', 'del', '1', '43'), ('11', 'Admin', 'Operationlog', 'index', '1', '42'), ('11', 'Admin', 'Log', 'del', '1', '41'), ('11', 'Admin', 'Log', 'index', '1', '40'), ('11', 'Admin', 'None', 'none', '1', '33'), ('11', 'Admin', 'Role', 'accredit', '1', '32'), ('11', 'Admin', 'Role', 'access', '1', '31'), ('11', 'Admin', 'Role', 'del', '1', '30'), ('11', 'Admin', 'Role', 'edit', '1', '29'), ('11', 'Admin', 'Role', 'add', '1', '28'), ('11', 'Admin', 'Role', 'index', '1', '27'), ('11', 'Admin', 'User', 'check', '1', '26'), ('11', 'Admin', 'User', 'del', '1', '25'), ('11', 'Admin', 'User', 'edit', '1', '24'), ('11', 'Admin', 'User', 'add', '1', '23'), ('11', 'Admin', 'None', 'none', '1', '21'), ('11', 'Admin', 'Config', 'extend_del', '1', '20'), ('11', 'Admin', 'Config', 'extend_edit', '1', '19'), ('11', 'Admin', 'Config', 'extend', '1', '17'), ('11', 'Admin', 'Config', 'master', '1', '16'), ('11', 'Admin', 'Config', 'file', '1', '15'), ('11', 'Admin', 'Config', 'email', '1', '14'), ('11', 'Admin', 'Index', 'index', '1', '2'), ('11', 'Admin', 'Usually', 'index', '1', '11'), ('11', 'Admin', 'Index', 'index', '1', '1'), ('17', 'Admin', 'Index', 'index', '1', '2'), ('17', 'Admin', 'None', 'none', '1', '21'), ('17', 'Admin', 'User', 'index', '1', '22'), ('17', 'Admin', 'User', 'add', '1', '23'), ('17', 'Admin', 'User', 'edit', '1', '24'), ('17', 'Admin', 'User', 'del', '1', '25'), ('17', 'Admin', 'User', 'check', '1', '26'), ('17', 'Admin', 'Role', 'index', '1', '27'), ('17', 'Admin', 'Role', 'add', '1', '28'), ('17', 'Admin', 'Role', 'edit', '1', '29'), ('17', 'Admin', 'Role', 'del', '1', '30'), ('17', 'Admin', 'Role', 'access', '1', '31'), ('17', 'Admin', 'Role', 'accredit', '1', '32'), ('11', 'Admin', 'Content', 'test', '1', '63'), ('11', 'Admin', 'Content', 'restore', '1', '64'), ('11', 'Admin', 'Class', 'index', '1', '65'), ('11', 'Admin', 'Class', 'sort', '1', '66'), ('11', 'Admin', 'Class', 'add', '1', '67'), ('11', 'Admin', 'Class', 'edit', '1', '69'), ('11', 'Admin', 'Class', 'del', '1', '70'), ('11', 'Admin', 'Class', 'addlink', '1', '71'), ('11', 'Admin', 'Class', 'editlink', '1', '72'), ('11', 'Admin', 'Picture', 'index', '1', '73'), ('11', 'Admin', 'Index', 'getclass', '1', '74'), ('11', 'Admin', 'Teacher', 'index', '1', '75'), ('11', 'Admin', 'Keyan', 'index', '1', '76'), ('11', 'Admin', 'Zhuanti', 'index', '1', '77'), ('11', 'Admin', 'None', 'none', '1', '44'), ('11', 'Admin', 'Link', 'index', '1', '45'), ('11', 'Admin', 'Link', 'add', '1', '46'), ('11', 'Admin', 'Link', 'edit', '1', '47'), ('11', 'Admin', 'Link', 'del', '1', '48'), ('11', 'Admin', 'Link', 'term', '1', '49'), ('11', 'Admin', 'Link', 'termedit', '1', '50'), ('11', 'Admin', 'Link', 'termdel', '1', '51'), ('11', 'Admin', 'Link', 'termadd', '1', '52'), ('11', 'Admin', 'Person', 'index', '1', '34'), ('11', 'Admin', 'Person', 'info', '1', '35'), ('11', 'Admin', 'Person', 'pwd', '1', '36'), ('11', 'Admin', 'Person', 'checkpwd', '1', '37');
COMMIT;

-- ----------------------------
--  Table structure for `leepet_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_admin_menu`;
CREATE TABLE `leepet_admin_menu` (
  `mid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL,
  `name` char(32) NOT NULL,
  `url` char(255) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `leepet_assets`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_assets`;
CREATE TABLE `leepet_assets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_code` varchar(255) NOT NULL,
  `add_time` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `user_part_id` int(11) NOT NULL,
  `qr_path` varchar(255) NOT NULL DEFAULT '生成错误，请单独重试',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leepet_assets` (`asset_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `leepet_branch`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_branch`;
CREATE TABLE `leepet_branch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(255) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `leepet_branch`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_branch` VALUES ('1', '总裁办', '10'), ('2', '人事部', '9'), ('3', '财务部', '8'), ('4', '会员部', '7'), ('5', '运营部', '6'), ('6', '采购部', '5'), ('7', '创意部', '4'), ('8', '编辑部', '3'), ('9', '售后部', '2'), ('10', '信息部', '1');
COMMIT;

-- ----------------------------
--  Table structure for `leepet_class`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_class`;
CREATE TABLE `leepet_class` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目Id',
  `type` tinyint(1) DEFAULT '0' COMMENT '栏目类型（0：频道栏目，1：列表栏目，2：外部链接）',
  `modelid` int(11) DEFAULT NULL COMMENT '模型ID',
  `parentid` int(11) DEFAULT NULL COMMENT '父级栏目',
  `allparentid` varchar(255) DEFAULT NULL COMMENT '所有父ID',
  `child` tinyint(1) DEFAULT '0' COMMENT '是否存在子栏目，1存在',
  `arrchildid` mediumtext COMMENT '全部子栏目ID',
  `classname` varchar(255) DEFAULT NULL COMMENT '栏目名称',
  `image` varchar(255) DEFAULT NULL COMMENT '栏目缩略图',
  `introduce` mediumtext COMMENT '栏目简介',
  `url` varchar(255) DEFAULT NULL COMMENT '外部链接',
  `hits` int(11) DEFAULT '0' COMMENT '栏目点击次数',
  `sort` int(5) DEFAULT '0' COMMENT '排序',
  `isshow` tinyint(1) DEFAULT '1' COMMENT '是否启用（1：启用）',
  `isnav` tinyint(1) DEFAULT '1' COMMENT '是否设置为导航：1：是',
  `content_template` int(11) DEFAULT NULL COMMENT '栏目内容模板',
  `index_template` int(11) DEFAULT NULL COMMENT '栏目封面模板',
  `seo_title` varchar(255) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '栏目关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '栏目描述',
  `content` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `leepet_config`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_config`;
CREATE TABLE `leepet_config` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `type` char(16) NOT NULL DEFAULT 'string' COMMENT '类型',
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='网站配置表';

-- ----------------------------
--  Records of `leepet_config`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_config` VALUES ('1', 'sitename', '网站名称', '0', '乐宠资产管理后台', ''), ('2', 'siteurl', '网站网址', '0', 'http://www.e8net.cn/mkszyllx', ''), ('3', 'sitefileurl', '附件地址', '0', '', ''), ('4', 'siteemail', '站点邮箱', '0', '', ''), ('6', 'siteinfo', '网站介绍', '0', '淮南师范学院计算机学院', ''), ('7', 'sitekeywords', '网站关键字', '0', '淮南师范学院计算机学院', ''), ('8', 'uploadmaxsize', '允许上传附件大小', '0', '20240', ''), ('9', 'uploadallowext', '允许上传附件类型', '0', '|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf', ''), ('10', 'qtuploadmaxsize', '前台允许上传附件大小', '0', '200', ''), ('11', 'qtuploadallowext', '前台允许上传附件类型', '0', 'jpg|jpeg|gif', ''), ('12', 'watermarkenable', '是否开启图片水印', '0', '1', ''), ('13', 'watermarkminwidth', '印-宽', '0', '300', ''), ('14', 'watermarkminheight', '水印-高', '0', '100', ''), ('15', 'watermarkimg', '水印图片', '0', '/statics/images/mark_bai.png', ''), ('16', 'watermarkpct', '水印透明度', '0', '80', ''), ('17', 'watermarkquality', 'JPEG 水印质量', '0', '85', ''), ('18', 'watermarkpos', '水印位置', '0', '7', ''), ('19', 'theme', '主题风格', '0', 'Default', ''), ('20', 'ftpstatus', 'FTP上传', '0', '0', ''), ('21', 'ftpuser', 'FTP用户名', '0', '', ''), ('22', 'ftppassword', 'FTP密码', '0', '1', ''), ('23', 'ftphost', 'FTP服务器地址', '0', '1', ''), ('24', 'ftpport', 'FTP服务器端口', '0', '21', ''), ('25', 'ftppasv', 'FTP是否开启被动模式', '0', '1', ''), ('26', 'ftpssl', 'FTP是否使用SSL连接', '0', '0', ''), ('27', 'ftptimeout', 'FTP超时时间', '0', '10', ''), ('28', 'ftpuppat', 'FTP上传目录', '0', '/', ''), ('29', 'mail_type', '邮件发送模式', '0', '1', ''), ('30', 'mail_server', '邮件服务器', '0', 'smtp.126.com', ''), ('31', 'mail_port', '邮件发送端口', '0', '25', ''), ('32', 'mail_from', '发件人地址', '0', 'web_bc@126.com', ''), ('33', 'mail_auth', '密码验证', '0', '', ''), ('34', 'mail_user', '邮箱用户名', '0', 'E8网络工作室', ''), ('35', 'mail_password', '邮箱密码', '0', 'baochao000', ''), ('36', 'mail_fname', '发件人名称', '0', 'web_bc@126.com', ''), ('37', 'domainaccess', '指定域名访问', '0', '0', ''), ('38', 'generate', '是否生成首页', '0', '0', ''), ('39', 'index_urlruleid', '首页URL规则', '0', '静态1:index_2.html', ''), ('40', 'indextp', '首页模板', '0', 'index.php', ''), ('41', 'tagurl', 'TagURL规则', '0', '8', ''), ('61', 'adminurl', '后台url', '1', 'http://211.70.176.141/jxx/admin.php/', 'bool');
COMMIT;

-- ----------------------------
--  Table structure for `leepet_content`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_content`;
CREATE TABLE `leepet_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL COMMENT '发布者',
  `classid` int(11) DEFAULT NULL COMMENT '栏目ID',
  `title` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `islink` tinyint(1) DEFAULT '0' COMMENT '是否启用文章链接 （1：启用）',
  `url` varchar(255) DEFAULT NULL,
  `sort` int(255) DEFAULT '0',
  `status` int(255) DEFAULT '0' COMMENT '状态 （0：未审核，1：已审核，2：回收站）',
  `addtime` int(11) DEFAULT NULL,
  `uptime` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `yesterdayviews` int(11) DEFAULT '0' COMMENT '昨日点击量',
  `dayviews` int(11) DEFAULT '0' COMMENT '今日点击量',
  `weekviews` int(11) DEFAULT '0' COMMENT '周点击量',
  `monthviews` int(11) DEFAULT '0' COMMENT '本月点击量',
  `viewsupdatetime` int(11) DEFAULT '0' COMMENT '点击数更新时间',
  `titlecolor` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `relateid` int(11) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `leepet_events`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_events`;
CREATE TABLE `leepet_events` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT NULL,
  `manage_id` int(11) DEFAULT NULL,
  `event` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `add_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `leepet_express`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_express`;
CREATE TABLE `leepet_express` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `senderName` varchar(255) DEFAULT NULL,
  `senderAddr` varchar(255) DEFAULT NULL,
  `senderMobile` varchar(255) DEFAULT NULL,
  `recverName` varchar(255) DEFAULT NULL,
  `recverMobile` varchar(255) DEFAULT NULL,
  `recverAddr` varchar(255) DEFAULT NULL,
  `opunix` bigint(20) DEFAULT NULL,
  `qr_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `leepet_express`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_express` VALUES ('42', '胡兵', '上海', '13215624315', '马忠双', '13651674370', '淮南', '1526272291', './images/1526272291.png'), ('43', '张三', '13651674370', '上海市徐汇区宜山路711号', '李四', '13215543162', '安徽省淮南市淮南师范学院', '1526277298', './images/1526885934.png');
COMMIT;

-- ----------------------------
--  Table structure for `leepet_log`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_log`;
CREATE TABLE `leepet_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `username` char(30) NOT NULL COMMENT '登录帐号',
  `logintime` int(10) NOT NULL COMMENT '登录时间戳',
  `loginip` char(20) NOT NULL COMMENT '登录IP',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '状态,1为登录成功，2为登录失败',
  `password` char(30) NOT NULL DEFAULT '' COMMENT '尝试错误密码',
  `info` char(255) NOT NULL COMMENT '其他说明',
  `area` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=461 DEFAULT CHARSET=utf8 COMMENT='后台登陆日志表';

-- ----------------------------
--  Records of `leepet_log`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_log` VALUES ('454', 'admin', '1476434116', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('453', 'admin', '1475040638', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('452', 'admin', '1472894200', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('451', 'admin', '1472184369', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('450', 'admin', '1472183932', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('449', 'admin', '1472183587', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('448', 'admin', '1472176985', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('447', 'admin', '1472176962', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('446', 'admin', '1472172995', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('445', 'admin', '1472116141', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('444', 'admin', '1471849312', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('443', 'admin', '1471600511', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('442', 'admin', '1471599803', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('441', 'admin', '1471599793', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('440', 'admin', '1471598358', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('439', 'admin', '1471578609', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('438', 'admin', '1471578132', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('437', 'admin', '1471574595', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('436', 'admin', '1471571465', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('435', 'admin', '1471501642', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('429', 'admin', '1471318364', '0.0.0.0', '1', '密码保密', '用户名登陆', 'IANA保留地址'), ('430', 'admin', '1471396511', '0.0.0.0', '1', '密码保密', '用户名登陆', 'IANA保留地址'), ('431', 'admin', '1471483489', '0.0.0.0', '1', '密码保密', '用户名登陆', 'IANA保留地址'), ('432', 'hubing', '1471488089', '0.0.0.0', '1', '密码保密', '用户名登陆', 'IANA保留地址'), ('433', 'admin', '1471488346', '0.0.0.0', '1', '密码保密', '用户名登陆', 'IANA保留地址'), ('434', 'admin', '1471491549', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('455', 'admin', '1526109675', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('456', 'admin', '1526110808', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('457', 'admin', '1526112353', '127.0.0.1', '1', '密码保密', '用户名登陆', ''), ('458', 'admin', '1526113443', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('459', 'admin', '1526263416', '0.0.0.0', '1', '密码保密', '用户名登陆', ''), ('460', 'admin', '1526279641', '0.0.0.0', '1', '密码保密', '用户名登陆', '');
COMMIT;

-- ----------------------------
--  Table structure for `leepet_menu`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_menu`;
CREATE TABLE `leepet_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parentid` smallint(6) NOT NULL DEFAULT '0' COMMENT '上级菜单',
  `app` varchar(20) NOT NULL COMMENT '应用表示',
  `controller` varchar(20) NOT NULL COMMENT '控制器',
  `action` varchar(20) NOT NULL COMMENT '方法',
  `parameter` char(255) NOT NULL DEFAULT '' COMMENT '附加参数',
  `url` char(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '0',
  `status` tinyint(1) unsigned NOT NULL COMMENT '是否启用',
  `remark` varchar(255) NOT NULL COMMENT '栏目备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '栏目排序',
  `hidden` tinyint(1) DEFAULT '1' COMMENT '是否隐藏',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `leepet_menu`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_menu` VALUES ('3', '后台管理', '0', 'Admin', 'Index', 'index', 'menu/3', null, '1', '1', '内容管理', '0', '0'), ('21', '管理员设置', '2', 'Admin', 'None', 'none', '', '#', '1', '1', '管理员设置', '0', '0'), ('22', '管理员管理', '21', 'Admin', 'User', 'index', '', 'User/index', '1', '1', '管理员管理', '0', '0'), ('23', '管理员添加', '21', 'Admin', 'User', 'add', '', null, '1', '1', '管理员添加', '0', '1'), ('24', '管理员编辑', '21', 'Admin', 'User', 'edit', '', null, '1', '1', '管理员编辑', '0', '1'), ('25', '管理员删除', '21', 'Admin', 'User', 'del', '', null, '1', '1', '管理员删除', '0', '1'), ('26', '管理员Ajax验证', '21', 'Admin', 'User', 'check', '', null, '1', '1', '管理员Ajax验证', '0', '1'), ('27', '角色管理', '21', 'Admin', 'Role', 'index', '', 'Role/index', '1', '1', '角色管理', '0', '0'), ('28', '角色添加', '21', 'Admin', 'Role', 'add', '', null, '1', '1', '角色添加', '0', '1'), ('29', '角色编辑', '21', 'Admin', 'Role', 'edit', '', null, '1', '1', '角色编辑', '0', '1'), ('30', '角色删除', '21', 'Admin', 'Role', 'del', '', null, '1', '1', '角色删除', '0', '1'), ('31', '角色权限查看', '21', 'Admin', 'Role', 'access', '', null, '1', '1', '角色权限查看', '0', '1'), ('32', '角色授权', '21', 'Admin', 'Role', 'accredit', '', null, '1', '1', '角色授权', '0', '1'), ('34', '个人中心', '0', 'Admin', 'Person', 'index', '', null, '1', '1', '个人中心', '0', '1'), ('35', '修改个人信息', '34', 'Admin', 'Person', 'info', '', 'Person/info', '1', '1', '修改个人信息', '0', '1'), ('36', '修改个人密码', '34', 'Admin', 'Person', 'pwd', '', 'Person/pwd', '1', '1', '修改个人密码', '0', '1'), ('37', '密码Ajax验证', '34', 'Admin', 'Person', 'checkpwd', '', 'Person/checkpwd', '1', '1', '密码Ajax验证', '0', '1'), ('38', '内容管理', '3', 'Admin', 'None', 'none', '', '#', '1', '1', '内容管理', '0', '0'), ('73', '运单二维码管理', '38', 'Admin', 'Picture', 'index', '', 'Picture/index', '1', '1', '图片管理', '0', '0'), ('74', '获取栏目列表', '38', 'Admin', 'Index', 'getclass', '', null, '1', '1', '获取栏目列表', '0', '1'), ('75', '运单记录', '38', 'Admin', 'Asset', 'index', '', 'Asset/index', '1', '1', '获取资产记录', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `leepet_model`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_model`;
CREATE TABLE `leepet_model` (
  `modelid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `tablename` varchar(255) DEFAULT NULL,
  `isopen` tinyint(1) DEFAULT '1' COMMENT '是否启用，1：启用',
  PRIMARY KEY (`modelid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `leepet_model`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_model` VALUES ('1', '文章模型', null, null, '1');
COMMIT;

-- ----------------------------
--  Table structure for `leepet_operationlog`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_operationlog`;
CREATE TABLE `leepet_operationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `uid` smallint(6) NOT NULL COMMENT '操作帐号ID',
  `time` int(10) NOT NULL COMMENT '操作时间',
  `ip` char(20) NOT NULL DEFAULT '' COMMENT 'IP',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '状态,2错误提示，1为正确提示',
  `info` text NOT NULL COMMENT '其他说明',
  `get` varchar(255) NOT NULL COMMENT 'get数据',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `username` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=utf8 COMMENT='后台操作日志表';

-- ----------------------------
--  Records of `leepet_operationlog`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_operationlog` VALUES ('240', '1', '1418953970', '192.168.7.212', '1', '提示语：修改管理用户成功! <br />模块：Admin,控制器：User,方法：edit <br />请求方式：AJAX', '/jxx/admin.php/User/edit'), ('241', '1', '1418954020', '192.168.7.212', '1', '提示语：添加管理用户成功! <br />模块：Admin,控制器：User,方法：add <br />请求方式：AJAX', '/jxx/admin.php/User/add'), ('242', '1', '1418954034', '192.168.7.212', '1', '提示语：删除角色成功 <br />模块：Admin,控制器：Role,方法：del <br />请求方式：GET', '/jxx/admin.php/Role/del/id/17/mw/UGNfMg=='), ('243', '1', '1418954085', '192.168.7.212', '1', '提示语：授权成功 :) <br />模块：Admin,控制器：Role,方法：accredit <br />请求方式：AJAX', '/jxx/admin.php/Role/accredit/id/11/mw/VmVbMA==/data/1,11,2,14,15,16,17,19,20,21,23,24,25,26,27,28,29,30,31,32,33,40,41,42,43,3,38,39,56,53,54,55,57,58,59,60,61,62,63,64,65,66,67,69,70,71,72,73,74,75,76,77,44,45,46,47,48,49,50,51,52,34,35,36,37'), ('244', '1', '1418954100', '192.168.7.212', '1', '提示语：修改管理用户成功! <br />模块：Admin,控制器：User,方法：edit <br />请求方式：AJAX', '/jxx/admin.php/User/edit'), ('245', '1', '1418954231', '192.168.7.212', '1', '提示语：修改管理用户成功! <br />模块：Admin,控制器：User,方法：edit <br />请求方式：AJAX', '/jxx/admin.php/User/edit'), ('246', '1', '1418954398', '192.168.7.212', '1', '提示语：修改个人密码成功! <br />模块：Admin,控制器：Person,方法：pwd <br />请求方式：POST', '/jxx/admin.php/Person/pwd'), ('247', '1', '1418971214', '192.168.7.14', '1', '提示语：添加扩展配置成功! <br />模块：Admin,控制器：Config,方法：extend <br />请求方式：POST', '/jxx/admin.php/Config/extend'), ('248', '1', '1418971960', '192.168.7.14', '1', '提示语：修改扩展配置成功! <br />模块：Admin,控制器：Config,方法：extend_edit <br />请求方式：POST', '/jxx/admin.php/Config/extend_edit'), ('249', '1', '1418972037', '192.168.7.14', '1', '提示语：添加链接分类成功! <br />模块：Admin,控制器：Link,方法：termadd <br />请求方式：POST', '/jxx/admin.php/Link/termadd'), ('250', '1', '1418972168', '192.168.7.14', '1', '提示语：添加链接成功! <br />模块：Admin,控制器：Link,方法：add <br />请求方式：POST', '/jxx/admin.php/Link/add'), ('251', '1', '1418972601', '192.168.7.14', '1', '提示语：删除扩展配置成功! <br />模块：Admin,控制器：Config,方法：extend_del <br />请求方式：GET', '/jxx/admin.php/Config/extend_del/id/64'), ('252', '1', '1418972770', '192.168.7.14', '1', '提示语：修改链接成功! <br />模块：Admin,控制器：Link,方法：edit <br />请求方式：POST', '/jxx/admin.php/Link/edit'), ('253', '2', '1425439468', '192.168.7.202', '1', '提示语：修改站点配置成功! <br />模块：Admin,控制器：Config,方法：index <br />请求方式：POST', '/jxx/admin.php/Config/index'), ('254', '2', '1425446300', '192.168.7.202', '1', '提示语：修改链接成功! <br />模块：Admin,控制器：Link,方法：edit <br />请求方式：POST', '/jxx/admin.php/Link/edit'), ('255', '2', '1425446355', '192.168.7.202', '1', '提示语：修改链接成功! <br />模块：Admin,控制器：Link,方法：edit <br />请求方式：POST', '/jxx/admin.php/Link/edit'), ('256', '2', '1426119518', '192.168.7.249', '1', '提示语：修改链接成功! <br />模块：Admin,控制器：Link,方法：edit <br />请求方式：POST', '/jxx/admin.php/Link/edit'), ('257', '2', '1426119874', '192.168.7.249', '1', '提示语：修改链接成功! <br />模块：Admin,控制器：Link,方法：edit <br />请求方式：POST', '/jxx/admin.php/Link/edit'), ('258', '2', '1426146707', '192.168.7.141', '1', '提示语：修改链接成功! <br />模块：Admin,控制器：Link,方法：edit <br />请求方式：POST', '/jxx/admin.php/Link/edit'), ('259', '2', '1432966678', '127.0.0.1', '1', '提示语：删除链接成功! <br />模块：Admin,控制器：Teacher,方法：Del <br />请求方式：GET', '/mks/admin.php/Teacher/Del/id/5,6,7'), ('260', '2', '1432966736', '127.0.0.1', '1', '提示语：删除教师成功! <br />模块：Admin,控制器：Teacher,方法：Del <br />请求方式：GET', '/mks/admin.php/Teacher/Del/id/1,3'), ('261', '2', '1433064875', '127.0.0.1', '1', '提示语：删除教师成功! <br />模块：Admin,控制器：Teacher,方法：Del <br />请求方式：GET', '/mks/admin.php/Teacher/Del/id/9,10,11,13'), ('262', '2', '1433238660', '127.0.0.1', '1', '提示语：删除教师成功! <br />模块：Admin,控制器：Teacher,方法：Del <br />请求方式：GET', '/mkszyllx/admin.php/Teacher/Del/id/4,8,12,14,15,16,17'), ('263', '2', '1433299080', '127.0.0.1', '1', '提示语：删除教师成功! <br />模块：Admin,控制器：Teacher,方法：Del <br />请求方式：GET', '/mkszyllx/admin.php/Teacher/Del/id/20,21,22,23,24'), ('264', '2', '1433305678', '127.0.0.1', '1', '提示语：修改站点配置成功! <br />模块：Admin,控制器：Config,方法：index <br />请求方式：POST', '/mkszyllx/admin.php/Config/index'), ('265', '2', '1433308035', '127.0.0.1', '1', '提示语：修改站点配置成功! <br />模块：Admin,控制器：Config,方法：index <br />请求方式：POST', '/mkszyllx/admin.php/Config/index'), ('266', '2', '1433308241', '127.0.0.1', '1', '提示语：修改站点配置成功! <br />模块：Admin,控制器：Config,方法：index <br />请求方式：POST', '/mkszyllx/admin.php/Config/index'), ('267', '2', '1433311388', '127.0.0.1', '1', '提示语：修改站点配置成功! <br />模块：Admin,控制器：Config,方法：index <br />请求方式：POST', '/mkszyllx/admin.php/Config/index'), ('268', '2', '1433311720', '127.0.0.1', '1', '提示语：修改站点配置成功! <br />模块：Admin,控制器：Config,方法：index <br />请求方式：POST', '/mkszyllx/admin.php/Config/index'), ('269', '2', '1433314037', '183.166.46.42', '1', '提示语：修改站点配置成功! <br />模块：Admin,控制器：Config,方法：index <br />请求方式：POST', '/mkszyllx/admin.php/Config/index'), ('270', '2', '1433656782', '127.0.0.1', '1', '提示语：修改邮箱配置成功! <br />模块：Admin,控制器：Config,方法：email <br />请求方式：POST', '/mkszyllx/admin.php/Config/email'), ('271', '1', '1443065798', '127.0.0.1', '1', '提示语：删除教师成功! <br />模块：Admin,控制器：Teacher,方法：Del <br />请求方式：GET', '/jxx/admin.php/Teacher/Del/id/29,33,34'), ('272', '1', '1460460740', '0.0.0.0', '1', '提示语：删除记录成功! <br />模块：Admin,控制器：Record,方法：Del <br />请求方式：GET', '/leepet/admin.php/Record/Del/id/1'), ('273', '1', '1460470841', '0.0.0.0', '1', '提示语：删除记录成功! <br />模块：Admin,控制器：Record,方法：Del <br />请求方式：GET', '/leepet/admin.php/Record/Del/id/3,4,5,6'), ('274', '1', '1460471164', '0.0.0.0', '1', '提示语：删除记录成功! <br />模块：Admin,控制器：Record,方法：del <br />请求方式：GET', '/leepet/admin.php/Record/del/id/8'), ('275', '1', '1460512201', '0.0.0.0', '1', '提示语：删除记录成功! <br />模块：Admin,控制器：Record,方法：del <br />请求方式：GET', '/leepet/admin.php/Record/del/id/8'), ('276', '1', '1460512218', '0.0.0.0', '1', '提示语：删除记录成功! <br />模块：Admin,控制器：Record,方法：Del <br />请求方式：GET', '/leepet/admin.php/Record/Del/id/7'), ('277', '1', '1471487980', '0.0.0.0', '1', '提示语：共添加了0条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/temp/admin.php/Usually/add/data/'), ('278', '1', '1471487981', '0.0.0.0', '1', '提示语：共添加了0条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/temp/admin.php/Usually/add/data/'), ('279', '1', '1471488040', '0.0.0.0', '1', '提示语：删除角色成功 <br />模块：Admin,控制器：Role,方法：del <br />请求方式：GET', '/temp/admin.php/Role/del/id/11/mw/ATJcNw=='), ('280', '1', '1471488076', '0.0.0.0', '1', '提示语：添加管理用户成功! <br />模块：Admin,控制器：User,方法：add <br />请求方式：AJAX', '/temp/admin.php/User/add'), ('281', '1', '1472116178', '0.0.0.0', '1', '提示语：共添加了0条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/leepet/admin.php/Usually/add/data/');
COMMIT;

-- ----------------------------
--  Table structure for `leepet_picture`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_picture`;
CREATE TABLE `leepet_picture` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `termid` smallint(8) NOT NULL,
  `name` char(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `open` tinyint(1) DEFAULT '0' COMMENT '0：点击显示大图，1：外部链接，2：图片介绍页面',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `remark` varchar(1024) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `content` longtext,
  `views` int(11) DEFAULT '0' COMMENT '浏览次数',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `leepet_role`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_role`;
CREATE TABLE `leepet_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '角色名称',
  `parentid` smallint(6) NOT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='角色信息列表';

-- ----------------------------
--  Records of `leepet_role`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_role` VALUES ('1', '超级管理员', '0', '1', '拥有网站最高管理员权限！', '1329633709', '1329633709', '0');
COMMIT;

-- ----------------------------
--  Table structure for `leepet_session`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_session`;
CREATE TABLE `leepet_session` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(64) NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `leepet_session`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_session` VALUES ('2', '127.0.0.1', '3c9285983984122f3203cd57a43da02c'), ('3', '183.166.46.42', '3c9285983984122f3203cd57a43da02c'), ('4', '101.226.89.191', '3c9285983984122f3203cd57a43da02c'), ('5', '120.210.172.26', '3c9285983984122f3203cd57a43da02c'), ('6', '60.171.15.62', '3c9285983984122f3203cd57a43da02c'), ('7', '120.210.172.91', '3c9285983984122f3203cd57a43da02c'), ('8', '120.210.172.39', '3c9285983984122f3203cd57a43da02c'), ('9', '183.166.60.185', '3c9285983984122f3203cd57a43da02c'), ('10', '117.69.58.189', '3c9285983984122f3203cd57a43da02c'), ('11', '211.70.176.10', '3c9285983984122f3203cd57a43da02c'), ('12', '192.168.7.214', '3c9285983984122f3203cd57a43da02c'), ('13', '192.168.7.16', '3c9285983984122f3203cd57a43da02c'), ('14', '192.168.7.12', '3c9285983984122f3203cd57a43da02c'), ('15', '223.104.18.125', '3c9285983984122f3203cd57a43da02c'), ('16', '192.168.7.14', '3c9285983984122f3203cd57a43da02c'), ('17', '192.168.7.249', '3c9285983984122f3203cd57a43da02c'), ('18', '192.168.7.156', '3c9285983984122f3203cd57a43da02c'), ('19', '192.168.7.189', '3c9285983984122f3203cd57a43da02c'), ('20', '192.168.7.251', '3c9285983984122f3203cd57a43da02c'), ('21', '192.168.7.201', '3c9285983984122f3203cd57a43da02c'), ('22', '192.168.7.56', '3c9285983984122f3203cd57a43da02c'), ('23', '183.166.60.42', '3c9285983984122f3203cd57a43da02c'), ('24', '120.210.100.188', '3c9285983984122f3203cd57a43da02c'), ('25', '192.168.7.212', '3c9285983984122f3203cd57a43da02c'), ('26', '192.168.53.30', '3c9285983984122f3203cd57a43da02c'), ('27', '117.69.22.30', '3c9285983984122f3203cd57a43da02c'), ('28', '120.210.183.253', '3c9285983984122f3203cd57a43da02c'), ('29', '192.168.7.202', '66aa2a4d09a3b203d18202319ff4c112'), ('30', '192.168.7.141', '66aa2a4d09a3b203d18202319ff4c112'), ('31', '0.0.0.0', '3c9285983984122f3203cd57a43da02c');
COMMIT;

-- ----------------------------
--  Table structure for `leepet_staff`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_staff`;
CREATE TABLE `leepet_staff` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `leepet_staff`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_staff` VALUES ('1', '1001', '胡兵', '2016-07-12 10:55:52', '1');
COMMIT;

-- ----------------------------
--  Table structure for `leepet_user`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_user`;
CREATE TABLE `leepet_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) NOT NULL COMMENT '昵称/姓名',
  `password` char(32) NOT NULL COMMENT '密码',
  `bind_account` varchar(50) NOT NULL COMMENT '绑定帐户',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(40) NOT NULL COMMENT '上次登录IP',
  `verify` varchar(32) NOT NULL COMMENT '证验码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '对应角色ID',
  `info` text NOT NULL COMMENT '信息',
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
--  Records of `leepet_user`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_user` VALUES ('1', 'admin', '超级管理员', '81dc9bdb52d04dc20036dbd8313ed055', '', '1526279641', '0.0.0.0', 'BmFZ3p', '1102665668@qq.com', '', '1408778905', '1418953970', '1', '1', '', 'photo/2014-12-16/54900d897dd25.jpg');
COMMIT;

-- ----------------------------
--  Table structure for `leepet_users`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_users`;
CREATE TABLE `leepet_users` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(12) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '管理员登录账号',
  `user_pass` varchar(255) DEFAULT NULL,
  `user_nick` varchar(8) DEFAULT '帅气的未命名用户',
  `user_intro` varchar(15) DEFAULT '这个人很懒，什么都没留下',
  `last_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `leepet_users`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_users` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '超级管理员', '这个人很懒，什么都没留下', '127.0.0.1');
COMMIT;

-- ----------------------------
--  Table structure for `leepet_visit`
-- ----------------------------
DROP TABLE IF EXISTS `leepet_visit`;
CREATE TABLE `leepet_visit` (
  `vid` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0' COMMENT '今日访问次数',
  `y` int(11) NOT NULL,
  `m` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=7225 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `leepet_visit`
-- ----------------------------
BEGIN;
INSERT INTO `leepet_visit` VALUES ('7216', '0.0.0.0', '1460440342', '2', '16', '4', '12'), ('7217', '0.0.0.0', '1460512046', '4', '16', '4', '13'), ('7218', '0.0.0.0', '1460597631', '1', '16', '4', '14'), ('7219', '0.0.0.0', '1460686510', '3', '16', '4', '15'), ('7220', '0.0.0.0', '1460778587', '2', '16', '4', '16'), ('7221', '0.0.0.0', '1460969681', '1', '16', '4', '18'), ('7222', '0.0.0.0', '1468824580', '1', '16', '7', '18'), ('7223', '0.0.0.0', '1471396489', '1', '16', '8', '17'), ('7224', '0.0.0.0', '1471571590', '1', '16', '8', '19');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
