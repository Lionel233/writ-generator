/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : writ

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-04-13 14:05:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for claim
-- ----------------------------
DROP TABLE IF EXISTS `claim`;
CREATE TABLE `claim` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '原告訴稱/被告訴稱/事實',
  `content` text COLLATE utf8_bin COMMENT '內容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of claim
-- ----------------------------

-- ----------------------------
-- Table structure for evidence
-- ----------------------------
DROP TABLE IF EXISTS `evidence`;
CREATE TABLE `evidence` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '證據名稱',
  `detail` text COLLATE utf8_bin COMMENT '證據明細',
  `number` int(11) DEFAULT NULL COMMENT '數量',
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '證據種類',
  `unit` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '單位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of evidence
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for ws_dsrb
-- ----------------------------
DROP TABLE IF EXISTS `ws_dsrb`;
CREATE TABLE `ws_dsrb` (
  `AJXH` int(255) DEFAULT NULL,
  `DSRBH` int(255) DEFAULT NULL,
  `SSDW` char(10) DEFAULT NULL,
  `YSSSDW` char(10) DEFAULT NULL,
  `DSRLB` char(10) DEFAULT NULL,
  `XM` char(10) DEFAULT NULL,
  `XB` char(10) DEFAULT NULL,
  `MZ` char(10) DEFAULT NULL,
  `GJ` char(50) DEFAULT NULL,
  `WHCD` char(10) DEFAULT NULL,
  `ZJLX` char(10) DEFAULT NULL,
  `ZJHM` char(50) DEFAULT NULL,
  `ZW` char(10) DEFAULT NULL,
  `DZ` char(200) DEFAULT NULL,
  `SFZH` char(2) DEFAULT NULL,
  `TSHY` char(20) DEFAULT NULL,
  `JGDBR` char(20) DEFAULT NULL,
  `DWXZ` char(20) DEFAULT NULL,
  `XZFLGXZT` char(20) DEFAULT NULL,
  `XZGLFW` char(20) DEFAULT NULL,
  `BGLX` char(20) DEFAULT NULL,
  `ZZJGDM` char(20) DEFAULT NULL,
  `SFBHR` char(2) DEFAULT NULL,
  `ZRRSF` char(10) DEFAULT NULL,
  `HJSZD` char(200) DEFAULT NULL,
  `XJYCS` char(100) DEFAULT NULL,
  `XSZRNL` char(20) DEFAULT NULL,
  `SFCT` char(10) DEFAULT NULL,
  `XW` char(20) DEFAULT NULL,
  `ZZMM` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ws_dsrb
-- ----------------------------
INSERT INTO `ws_dsrb` VALUES ('1154', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1154', '2', '被告人', null, '应诉方', '方尚飞', '男', '汉族', '中国', '小学文化', null, null, null, '广东省东莞市厚街镇寮厦新村九巷6号（户籍地为广东省东莞市厚街镇寮厦新村前路八巷18号）', null, null, null, null, null, null, null, null, '否', '农民', '为广东省东莞市厚街镇寮厦新村前路八巷18号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1154', '3', null, null, '代理人', '尤庆', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1154', '4', '被告人', null, '应诉方', '张振', '男', '汉族', '中国', null, null, null, null, '河北省霸州市金泰苑小区2号楼2门402室（户籍地为河北省霸州市煎茶铺镇南庄头村262号）', null, null, null, null, null, null, null, null, '否', '农民', '为河北省霸州市煎茶铺镇南庄头村262号）', '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1154', '5', null, null, '代理人', '魏炜', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1154', '6', '被告人', null, '应诉方', '沈桂清', '男', '汉族', '中国', null, null, null, null, '天津市静海区独流镇福运花园4号楼1门501室（户籍地为天津市静海区独流镇团结街外环北里4排12号）', null, null, null, null, null, null, null, null, '否', '农民', '为天津市静海区独流镇团结街外环北里4排12号）', '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1154', '7', null, null, '代理人', '闫晓菲', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1154', '8', '被告人', null, '应诉方', '王小芳', '女', '汉族', '中国', '初中文化', null, null, null, '河北省霸州市金泰苑小区2号楼2门402室（户籍地为河北省霸州市南孟镇郭家务村12号）', null, null, null, null, null, null, null, null, '否', '农民', '为河北省霸州市南孟镇郭家务村12号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1154', '9', null, null, '代理人', '张耀午', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1154', '10', '被告人', null, '应诉方', '张凯', '男', '汉族', '中国', null, null, null, null, '河北省霸州市金泰苑小区2号楼2门402室（户籍地为河北省霸州市煎茶铺镇南庄头村262号）', null, null, null, null, null, null, null, null, '否', '农民', '为河北省霸州市煎茶铺镇南庄头村262号）', '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1154', '11', null, null, '代理人', '苗桂芝', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1154', '12', '被告人', null, '应诉方', '刘东', '男', '汉族', '中国', null, null, null, null, '河北省霸州市新华书店西城四街（户籍地为河北省霸州市南孟镇东坨村195号）', null, null, null, null, null, null, null, null, '否', '农民', '为河北省霸州市南孟镇东坨村195号）', '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1154', '13', null, null, '代理人', '董亚南', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '2', null, null, '应诉方', '天津市福来', null, null, null, null, null, null, '法定代表人', null, null, null, null, null, null, null, null, null, '否', null, null, null, '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '3', null, null, null, '张磊', null, null, '中国', null, null, null, '会计', null, null, null, null, null, null, null, null, null, null, '其他', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '4', null, null, '应诉方', '天津资宝金', null, null, null, null, null, null, '法定代表人', null, null, null, null, null, null, null, null, null, '否', null, null, null, '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '5', null, null, null, '李广林', null, null, '中国', null, null, null, '法律顾问', null, null, null, null, null, null, null, null, null, null, '其他', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '6', null, null, '应诉方', '天津市和贵', null, null, null, null, null, null, '法定代表人', null, null, null, null, null, null, null, null, null, '否', null, null, null, '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '7', null, null, null, '李凤慧', null, null, '中国', null, null, null, '法律顾问', null, null, null, null, null, null, null, null, null, null, '其他', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '8', null, null, '应诉方', '天津市恒泰', null, null, null, null, null, null, '法定代表人', null, null, null, null, null, null, null, null, null, '否', null, null, null, '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '9', null, null, null, '李玉伟', null, null, '中国', null, null, null, '员工', null, null, null, null, null, null, null, null, null, null, '其他', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '10', null, null, '应诉方', '天津绿源金', null, null, null, null, null, null, '法定代表人', null, null, null, null, null, null, null, null, null, '否', null, null, null, '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '11', null, null, null, '李绍蔷', null, null, '中国', null, null, null, '法律顾问', null, null, null, null, null, null, null, null, null, null, '其他', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '12', null, null, '应诉方', '天津市津艺', null, null, null, null, null, null, '法定代表人', null, null, null, null, null, null, null, null, null, '否', null, null, null, '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '13', null, null, null, '张国福', null, null, '中国', null, null, null, '员工', null, null, null, null, null, null, null, null, null, null, '其他', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '14', null, null, '应诉方', '天津市江涛', null, null, null, null, null, null, '法定代表人', null, null, null, null, null, null, null, null, null, '否', null, null, null, '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '15', null, null, null, '欧宝凤', null, null, '中国', null, null, null, '员工', null, null, null, null, null, null, null, null, null, null, '其他', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '16', '被告人', null, '应诉方', '赵洪峰', '男', '汉族', '中国', '初中文化', null, null, null, '天津市静海县静海镇城市艺墅春华园5号楼1门202室（户籍地天津市静海县静海开发区曙光道清华瑞景5号楼1门150室）', null, null, null, null, null, null, null, null, '否', '其他', '：天津市静海县静海开发区曙光道清华瑞景5号楼1门150室）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1157', '17', null, null, '代理人', '唐延增、崔', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '18', '被告人', null, '应诉方', '郑书国', '男', '汉族', '中国', '初中文化', null, null, null, '天津市南开区时代奥城21号楼1603室（户籍地天津市静海县子牙镇子牙村东大街2排2号）', null, null, null, null, null, null, null, null, '否', '其他', '：天津市静海县子牙镇子牙村东大街2排2号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1157', '19', null, null, '代理人', '刘忠义', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '20', '被告人', null, '应诉方', '李政', '男', '汉族', '中国', '初中文化', null, null, null, '天津市静海县东方海景园4号楼1门502室（户籍地天津市静海县静海镇胡家园鑫园路7号）', null, null, null, null, null, null, null, null, '否', '无业人员', '：天津市静海县静海镇胡家园鑫园路7号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1157', '21', null, null, '代理人', '岳婧', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '22', '被告人', null, '应诉方', '李绍明', '男', '汉族', '中国', '初中文化', null, null, '会计', '天津市静海县沿庄镇大黄洼村兴安街百乐胡同2号', null, null, null, null, null, null, null, null, '否', '其他', null, '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1157', '23', null, null, '代理人', '秦菊香', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '24', '被告人', null, '应诉方', '张宽', '女', '汉族', '中国', '初中文化', null, null, '会计', '天津市静海县上城花园3号楼2203室（户籍地天津市静海县子牙镇王二庄村新南街东1排8号）', null, null, null, null, null, null, null, null, '否', '其他', '：天津市静海县子牙镇王二庄村新南街东1排8号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1157', '25', null, null, '代理人', '崔云玲', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '26', '被告人', null, '应诉方', '张志超', '男', '汉族', '中国', '小学文化', null, null, '法定代表人', '天津市宝坻区马家店镇王辛庄村4段14排10号', null, null, null, null, null, null, null, null, '否', '其他', null, null, '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1157', '27', '被告人', null, '应诉方', '王长远', '男', '汉族', '中国', '初中文化', null, null, '员工', '天津市宝坻区马家店镇连子营村1排3号', null, null, null, null, null, null, null, null, '否', '其他', null, null, '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1157', '28', '被告人', null, '应诉方', '欧宝霞', '女', '汉族', '中国', '中专文化', null, null, null, '天津市静海县春华园12号楼2门302室（户籍地天津市静海县静海镇曹官庄村同庆里6排13号）', null, null, null, null, null, null, null, null, '否', '其他', '：天津市静海县静海镇曹官庄村同庆里6排13号）', null, '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1157', '29', null, null, '代理人', '张维涛', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1157', '30', '被告人', null, '应诉方', '张敬忠', '男', '汉族', '中国', '初中文化', null, null, null, '天津市宝坻区马家店镇王辛庄村4段11排8号', null, null, null, null, null, null, null, null, '否', '其他', null, null, '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1159', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1159', '2', '被告人', null, '应诉方', '邵成钢', '男', '汉族', '中国', '小学文化', null, null, null, '广东省电白县电城镇北街电星巷32号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1159', '3', null, null, '代理人', '赵天竺', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1159', '4', '被告人', null, '应诉方', '吴宝国', '男', '汉族', '中国', '小学文化', null, null, null, '天津市北辰区北仓镇北辰道都望新城1号楼2门301号（户籍地天津市北辰区大张庄镇小杨庄村南6条14号）', null, null, null, null, null, null, null, null, '否', '农民', '：天津市北辰区大张庄镇小杨庄村南6条14号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1159', '5', null, null, '代理人', '高志', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1159', '6', '被告人', null, '应诉方', '吕家海', '男', '汉族', '中国', '初中文化', null, null, null, '天津市北辰区双街镇庞嘴村南路44号', null, null, null, null, null, null, null, null, '否', '农民', null, '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1159', '7', null, null, '代理人', '鲍红娟', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1159', '8', '被告人', null, '应诉方', '陈留华', '男', '汉族', '中国', '初中文化', null, null, null, '天津市南开区宾水西道时代奥城20号楼615室（户籍地天津市南开区雅安道川南公寓2号楼5门201号）', null, null, null, null, null, null, null, null, '否', '无业人员', '：天津市南开区雅安道川南公寓2号楼5门201号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1159', '9', null, null, '代理人', '尚巍、张玉', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1159', '10', '被告人', null, '应诉方', '吴波', '男', '汉族', '中国', '初中文化', null, null, null, '天津市南开区雅安道易川里1号楼1门501号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1159', '11', null, null, '代理人', '刘静', '男', '汉族', '中国', '小学文化', null, null, '律师', '四川省江安县大井镇小流村漆树组7号', null, null, null, null, null, null, null, null, null, '职员', null, '天津市第一看守所', null, null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1159', '12', null, null, '代理人', '王敏', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1159', '13', '被告人', null, '应诉方', '潘恩策', '男', '汉族', '中国', null, null, null, null, '天津市东丽区津塘二线西扬场村（户籍地山东省武城县甲马营乡徐庄村545号）', null, null, null, null, null, null, null, null, '否', '农民', '：山东省武城县甲马营乡徐庄村545号）', '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1159', '14', null, null, '代理人', '苗桂芝', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1159', '15', '被告人', null, '应诉方', '马宝寅', '男', '汉族', '中国', '初中文化', null, null, '个体经营者', '天津市北辰区宜兴埠镇津围公路240号（户籍地天津市北辰区宜兴埠镇仙居里1排6号）', null, null, null, null, null, null, null, null, '否', '其他', '：天津市北辰区宜兴埠镇仙居里1排6号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1159', '16', null, null, '代理人', '郑志龙', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1162', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1162', '2', '被告人', null, '应诉方', '冯建伟', '男', '汉族', '中国', '初中文化', null, null, null, '天津市红桥区翠溪园15号楼154号（户籍地天津市红桥区双环路朝春里13院19号）', null, null, null, null, null, null, null, null, '否', '无业人员', '：天津市红桥区双环路朝春里13院19号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1162', '3', null, null, '代理人', '杨劲柏', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1162', '4', '被告人', null, '应诉方', '徐超', '男', '汉族', '中国', '初中文化', null, null, null, '广东省东莞市沙田镇稔州村水上小组836栋402室（户籍地四川省大竹县庙坝镇老场村7组21号）', null, null, null, null, null, null, null, null, '否', '农民', '：四川省大竹县庙坝镇老场村7组21号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1162', '5', null, null, '代理人', '史锦岭', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1162', '6', null, null, '代理人', '李学鸿', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1162', '7', '被告人', null, '应诉方', '叶礼', '男', '汉族', '中国', '初中文化', null, null, null, '广东省东莞市沙田镇稔州村水上小组（户籍地四川省大竹县清水镇云雾村1组）', null, null, null, null, null, null, null, null, '否', '农民', '：四川省大竹县清水镇云雾村1组）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1162', '8', null, null, '代理人', '陈慧贤', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1162', '9', '被告人', null, '应诉方', '刘阳', '男', '汉族', '中国', null, null, null, null, '天津市红桥区海源道民畅园14号楼1508号', null, null, null, null, null, null, null, null, '否', '私营企业主', null, '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1162', '10', null, null, '代理人', '田霖、付佳', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1162', '11', '被告人', null, '应诉方', '李雨庆', '男', '汉族', '中国', null, null, null, null, null, null, null, null, null, null, null, null, null, '否', '无业人员', '：黑龙江省克东县克东镇春和街二委7组）', '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1162', '12', null, null, '代理人', '刘会玲', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1163', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1163', '2', '被告人', null, '应诉方', '张衡', '男', '汉族', '中国', '初中文化', null, null, null, '广东省中山市东区库充新塘街一巷2号302室（户籍地四川省广元市苍溪县白桥镇青林村7组35号）', null, null, null, null, null, null, null, null, '否', '农民', '：四川省广元市苍溪县白桥镇青林村7组35号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1163', '3', null, null, '代理人', '常娇春', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1163', '4', '被告人', null, '应诉方', '张磊', '男', '汉族', '中国', '小学文化', null, null, null, '天津市东丽区雪莲路雪莲东里1号楼1门1405室（户籍地天津市河东区中心北道团结北里9号楼1门608号）', null, null, null, null, null, null, null, null, '否', '无业人员', '：天津市河东区中心北道团结北里9号楼1门608号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1163', '5', null, null, '代理人', '李树盛、陈', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1163', '6', '被告人', null, '应诉方', '郭丽', '女', '汉族', '中国', '中专文化', null, null, null, '天津市东丽区雪莲路雪莲东里1号楼1门1405室（户籍地黑龙江省绥化市青冈县青冈镇新建街5委71组）', null, null, null, null, null, null, null, null, '否', '无业人员', '：黑龙江省绥化市青冈县青冈镇新建街5委71组）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1163', '7', null, null, '代理人', '尤庆', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1163', '8', '被告人', null, '应诉方', '欧阳志辉', '男', '汉族', '中国', '初中文化', null, null, null, '广东省中山市石岐区第一城祥华楼201室（户籍地湖南省耒阳市仁义乡仁义村1组2号）', null, null, null, null, null, null, null, null, '否', '农民', '：湖南省耒阳市仁义乡仁义村1组2号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1163', '9', null, null, '代理人', '刘静', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1163', '10', '被告人', null, '应诉方', '范金维', '男', '汉族', '中国', '中专文化', null, null, null, '天津市东丽区雪莲路雪莲东里1号楼1门2109室（户籍地天津市红桥区红旗路宜兰里3号楼1门402室）', null, null, null, null, null, null, null, null, '否', '无业人员', '：天津市红桥区红旗路宜兰里3号楼1门402室）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1163', '11', null, null, '代理人', '刘可刚', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1169', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1169', '2', '被告人', null, '应诉方', '吴朝勇', '男', '汉族', '中国', '初中文化', null, null, null, '重庆市北部新区复地上城81栋1011号（户籍地为重庆市巴南区麻柳嘴镇感应村1组15号）', null, null, null, null, null, null, null, null, '否', '农民', '为重庆市巴南区麻柳嘴镇感应村1组15号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1169', '3', null, null, '代理人', '王朝阳', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1169', '4', '被告人', null, '应诉方', '罗萍', '女', '汉族', '中国', null, null, null, null, '天津市滨海新区牌坊东里51-102号（户籍地为湖南省益阳市桃江县牛田镇杉树仑村526号）', null, null, null, null, null, null, null, null, '否', '农民', '为湖南省益阳市桃江县牛田镇杉树仑村526号）', '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1169', '5', null, null, '代理人', '张耀午', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1169', '6', '被告人', null, '应诉方', '马建林', '女', '汉族', '中国', '初中文化', null, null, null, '天津市宁河区七里海镇齐家埠村（户籍地为天津市宁河区俵口乡兴家坨村中心区3排46号）', null, null, null, null, null, null, null, null, '否', '农民', '为天津市宁河区俵口乡兴家坨村中心区3排46号）', null, '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1169', '7', null, null, '代理人', '赵君君', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1169', '8', '被告人', null, '应诉方', '赵连斗', '男', '汉族', '中国', '高中文化', null, null, null, '天津市滨海新区东风南路华阳里26号楼201号', null, null, null, null, null, null, null, null, '否', '其他', null, '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1169', '9', null, null, '代理人', '王增强', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1169', '10', null, null, '代理人', '闫晓菲', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1169', '11', '被告人', null, '应诉方', '蒋能银', '男', '汉族', '中国', '初中文化', null, null, null, '重庆市长寿区凤岭路13号1幢2单元8-2', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1169', '12', null, null, '代理人', '潘志刚', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1177', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1177', '2', '附带民事诉', null, '起诉方', '范明周', '男', '汉族', '中国', '初中文化', null, null, null, '河北省邢台市清河县戈仙庄镇马屯新街79号', null, null, null, null, null, null, null, null, '是', '无业人员', null, null, null, null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1177', '3', '附带民事诉', null, '起诉方', '王金英', '女', '汉族', '中国', '小学文化', null, null, null, '址同上', null, null, null, null, null, null, null, null, '是', '无业人员', null, null, null, null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1177', '4', '附带民事诉', null, '起诉方', '李军', '男', '汉族', '中国', '初中文化', null, null, '工人', '天津市河北区榆关道东海花园6号楼1门301号', null, null, null, null, null, null, null, null, '是', '其他', null, null, null, null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1177', '5', '附带民事诉', null, '起诉方', '李雪莹', '女', '汉族', '中国', null, null, null, null, '址同上', null, null, null, null, null, null, null, null, '是', '其他', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1177', '6', null, null, '代理人', '张志明', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1177', '7', null, null, '代理人', '李健', '男', '汉族', '中国', '大学文化', null, null, null, '天津市河西区解放南路名都公寓28号楼5门501号', null, null, null, null, null, null, null, null, null, '无业人员', null, null, null, null, '学士', null);
INSERT INTO `ws_dsrb` VALUES ('1177', '8', '被告人', null, '应诉方', '王民', '男', '汉族', '中国', '初中文化', null, null, null, '天津市河北区宜白路中宜里16号楼75门101号', null, null, null, null, null, null, null, null, '否', '其他', null, '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1177', '9', null, null, '代理人', '郭洪生', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1187', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1187', '2', '被告人', null, '应诉方', '刘少峰', '男', '汉族', '中国', '初中文化', null, null, null, '广东省佛山市南海区海三路骏城花园C区204号（户籍地广东省佛山市禅城区文龙街6号101房）', null, null, null, null, null, null, null, null, '否', '无业人员', '：广东省佛山市禅城区文龙街6号101房）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1187', '3', null, null, '代理人', '张颖', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1187', '4', '被告人', null, '应诉方', '姜波', '男', '汉族', '中国', '初中文化', null, null, null, '贵州省安顺市熙春花园B区C栋2-2-2号（户籍地贵州省安顺市西秀区白虹南路31号附2号）', null, null, null, null, null, null, null, null, '否', '无业人员', '：贵州省安顺市西秀区白虹南路31号附2号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1187', '5', null, null, '代理人', '李静', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1189', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1189', '2', '被告人', null, '应诉方', '余丽丽', '女', '汉族', '中国', '中专文化', null, null, null, '天津市西青区丽江道江湾广场小区8号楼1505室（户籍地天津市河西区东江道景致里84门105号）', null, null, null, null, null, null, null, null, '否', '无业人员', '：天津市河西区东江道景致里84门105号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1189', '3', null, null, '代理人', '王殿禄、张', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1190', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1190', '2', '附带民事诉', null, '起诉方', '程立圣', '男', '汉族', '中国', '小学文化', null, null, null, '河北省石家庄市长安区和平东路53号3-5-202室（户籍地为河北省南宫市高村镇西高村320号）', null, null, null, null, null, null, null, null, '是', '农民', '为河北省南宫市高村镇西高村320号）', null, null, null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1190', '3', '附带民事诉', null, '起诉方', '邹金华', '女', '汉族', '中国', '小学文化', null, null, null, '河北省石家庄市长安区和平东路53号3-5-202室（户籍地为河北省南宫市高村镇西高村320号）', null, null, null, null, null, null, null, null, '是', '农民', '为河北省南宫市高村镇西高村320号）', null, null, null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1190', '4', null, null, '代理人', '解文宽', null, null, '中国', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '其他', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1190', '5', '被告人', null, '应诉方', '王子齐', '男', '汉族', '中国', '初中文化', null, null, null, '天津市武清区高村镇牛镇新苑小区59-2-1101室（户籍地为天津市武清区高村镇牛镇一村1区13排6号）', null, null, null, null, null, null, null, null, '否', '农民', '为天津市武清区高村镇牛镇一村1区13排6号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1190', '6', null, null, '代理人', '刘静', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1190', '7', '被告人', null, '应诉方', '王瑞', '女', '汉族', '中国', '初中文化', null, null, null, '天津市武清区豆张庄乡豆张庄村2区6排45号（户籍地为甘肃省平凉市崆峒区西郊开发区天门村三庄坑社128号）', null, null, null, null, null, null, null, null, '否', '农民', '为甘肃省平凉市崆峒区西郊开发区天门村三庄坑社128号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1190', '8', null, null, '代理人', '刘国庆', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1190', '9', '被告人', null, '应诉方', '皮淑清', '女', '汉族', '中国', '文盲', null, null, null, '天津市武清区高村镇牛镇新苑小区32-2-101室（户籍地为天津市武清区高村镇牛镇一村1区13排6号）', null, null, null, null, null, null, null, null, '否', '农民', '为天津市武清区高村镇牛镇一村1区13排6号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1190', '10', null, null, '代理人', '刘会玲', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1190', '11', '附带民事诉', null, '应诉方', '刘庆安', '男', '汉族', '中国', '小学文化', null, null, null, '天津市武清区豆张庄乡豆张庄村2区6排45号', null, null, null, null, null, null, null, null, '否', '农民', null, null, '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1190', '12', '附带民事诉', null, '应诉方', '杨红', '女', '汉族', '中国', '初中文化', null, null, null, '天津市武清区豆张庄乡豆张庄村2区6排45号（户籍地为甘肃省平凉市崆峒区西郊开发区天门村三庄坑社128号）', null, null, null, null, null, null, null, null, '否', '农民', '为甘肃省平凉市崆峒区西郊开发区天门村三庄坑社128号）', null, '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1194', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1194', '2', '被告人', null, '应诉方', '朱建军', '男', '汉族', '中国', '小学文化', null, null, null, '江西省新余市渝水区毛家村城中村601号（户籍地为江西省樟树市黄土岗镇窑下村朱家组5号）', null, null, null, null, null, null, null, null, '否', '农民', '为江西省樟树市黄土岗镇窑下村朱家组5号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1194', '3', null, null, '代理人', '邢伟明', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1194', '4', '被告人', null, '应诉方', '李洪青', '男', '汉族', '中国', '初中文化', null, null, null, '天津市西青区精武镇大南河村祥和园24号楼803号（户籍地为天津市西青区中北镇中北大道溪清苑12号楼2门501号）', null, null, null, null, null, null, null, null, '否', '农民', '为天津市西青区中北镇中北大道溪清苑12号楼2门501号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1194', '5', null, null, '代理人', '王巍', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1194', '6', '被告人', null, '应诉方', '李岩', '男', '汉族', '中国', '初中文化', null, null, null, '天津市西青区枫桥园22号楼1门201号（户籍地为天津市河北区三马路61号）', null, null, null, null, null, null, null, null, '否', '无业人员', '为天津市河北区三马路61号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1194', '7', null, null, '代理人', '刘文涛', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1194', '8', '被告人', null, '应诉方', '于世荣', '男', '汉族', '中国', '初中文化', null, null, null, '天津市西青区中北镇中北大道溪清苑1号楼3门1403号', null, null, null, null, null, null, null, null, '否', '农民', null, '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1194', '9', null, null, '代理人', '宋建东', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1200', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1200', '2', '被告人', null, '应诉方', '郑水清', '男', '汉族', '中国', null, null, null, null, '广东省惠来县龙江镇象湖管区坑畔围西片六幢7号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1200', '3', null, null, '代理人', '王敏', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1200', '4', '被告人', null, '应诉方', '李文军', '男', '汉族', '中国', null, null, null, null, '天津市河东区崂山道倚虹中里5号楼3门105室', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1200', '5', null, null, '代理人', '杨劲柏', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1200', '6', null, null, '代理人', '雒玢', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1200', '7', '被告人', null, '应诉方', '陈黾铨', '男', '汉族', '中国', null, null, null, null, '福建省福清市上迳镇上迳村23排2号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1200', '8', null, null, '代理人', '张立德', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1200', '9', '被告人', null, '应诉方', '郝红胜', '男', '汉族', '中国', null, null, null, null, '天津市河北区天江里4号楼15门603室', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1200', '10', null, null, '代理人', '田金龙、窦', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1200', '11', '被告人', null, '应诉方', '王磊', '男', '汉族', '中国', '初中文化', null, null, null, '天津市红桥区南运河南路同议会所胡同28号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1200', '12', null, null, '代理人', '王增强、赵', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1205', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1205', '2', '被告人', null, '应诉方', '赵金龙', '男', '汉族', '中国', '小学文化', null, null, null, '天津市北辰区双口镇双口一村商场北路20号（户籍地天津市北辰区双口镇双口三村姜井道2号）', null, null, null, null, null, null, null, null, '否', '农民', '：天津市北辰区双口镇双口三村姜井道2号）', '天津市河西监狱', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1206', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1206', '2', '被告人', null, '应诉方', '宋红星', '男', '汉族', '中国', null, null, null, null, '广东省东莞市南城区弥珍道香城名门花园9栋203室（户籍所在地河南省平舆县东和店镇张赵行政村黎庄）', null, null, null, null, null, null, null, null, '否', '无业人员', '：河南省平舆县东和店镇张赵行政村黎庄）', '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1206', '3', null, null, '代理人', '杜建军', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1206', '4', '被告人', null, '应诉方', '尤克伦', '男', '汉族', '中国', null, null, null, null, '天津市武清区翠亨家园小区1号楼6门2102号（户籍所在地天津市武清区东马圈镇田家务村3区58号）', null, null, null, null, null, null, null, null, '否', '农民', '：天津市武清区东马圈镇田家务村3区58号）', '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1206', '5', null, null, '代理人', '黄永鑫', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1206', '6', '被告人', null, '应诉方', '徐建举', '男', '汉族', '中国', null, null, null, null, '广东省东莞市南城区上手新村六巷105号（户籍所在地河南省平舆县东和店镇张赵行政村黎庄）', null, null, null, null, null, null, null, null, '否', '无业人员', '：河南省平舆县东和店镇张赵行政村黎庄）', '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1206', '7', null, null, '代理人', '赵津', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1206', '8', '被告人', null, '应诉方', '任国琴', '女', '汉族', '中国', '初中文化', null, null, null, '广东省东莞市南城区弥珍道香城名门花园9栋203室（户籍所在地湖北省钟祥市磷矿镇滨湖路8号）', null, null, null, null, null, null, null, null, '否', '农民', '：湖北省钟祥市磷矿镇滨湖路8号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1206', '9', null, null, '代理人', '张永河', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1208', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1208', '2', '被告人', null, '应诉方', '胡文哲', '男', '汉族', '中国', '初中文化', null, null, null, '本市西青区中北镇雷庄村（户籍地河北省饶阳县同岳乡圣水村）', null, null, null, null, null, null, null, null, '否', '其他', '：河北省饶阳县同岳乡圣水村）', '该监狱', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1212', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1212', '2', '附带民事诉', null, '起诉方', '朱岛樱子', '女', '苗族', '中国', '小学文化', null, null, null, '贵州省铜仁市东太大道314号5栋附45号', null, null, null, null, null, null, null, null, '是', '无业人员', null, null, null, null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1212', '3', null, null, '代理人', '朱红飞', '男', '汉族', '中国', '初中文化', null, null, null, '贵州省铜仁市东太大道314号5栋附45号', null, null, null, null, null, null, null, null, null, '无业人员', null, null, null, null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1212', '4', '被告人', null, '应诉方', '高雪伟', '男', '汉族', '中国', '小学文化', null, null, null, '河北省霸州市胜芳镇北环路三利大厦物业楼3楼（户籍地为黑龙江省齐齐哈尔市克东县昌盛乡民安村1组104号）', null, null, null, null, null, null, null, null, '否', '农民', '为黑龙江省齐齐哈尔市克东县昌盛乡民安村1组104号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1212', '5', null, null, '代理人', '刘文涛', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1213', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1213', '2', '附带民事诉', null, '起诉方', '田顺利', '男', '汉族', '中国', null, null, null, null, '天津市宝坻区口东街胡各庄村2区5排2号', null, null, null, null, null, null, null, null, '是', '农民', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1213', '3', null, null, '代理人', '张晶晶', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1213', '4', '被告人', null, '应诉方', '刘文武', '男', '汉族', '中国', null, null, null, null, '天津市宝坻区口东街胡各庄村1区4排24号', null, null, null, null, null, null, null, null, '否', '农民', null, '天津市第一看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1213', '5', null, null, '代理人', '张耀午', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1215', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1215', '2', '被告人', null, '应诉方', '张庆江', '男', '汉族', '中国', '小学文化', null, null, null, '天津市宝坻区新安镇老艾庄村西4排9号（户籍地同住址）', null, null, null, null, null, null, null, null, '否', '农民', '同住址）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1215', '3', null, null, '代理人', '刘静', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1219', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1219', '2', '被告人', null, '应诉方', '覃毅', '男', '土家族', '中国', '高中文化', null, null, null, '湖南省石门县所街乡柳家台村2组02002号', null, null, null, null, null, null, null, null, '否', '农民', null, '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1219', '3', null, null, '代理人', '唐延增', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1219', '4', '被告人', null, '应诉方', '唐植岸', '男', '汉族', '中国', '小学文化', null, null, null, '天津市东丽区大毕庄镇金钟新城10号楼3门501室（户籍地湖南省石门县壶瓶山镇后路坪村1组）', null, null, null, null, null, null, null, null, '否', '农民', '：湖南省石门县壶瓶山镇后路坪村1组）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1219', '5', null, null, '代理人', '卢同斌', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1219', '6', '被告人', null, '应诉方', '雷正礼', '男', '土家族', '中国', '小学文化', null, null, null, '湖南省石门县皂市镇白沙渡村4组016号', null, null, null, null, null, null, null, null, '否', '农民', null, '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1219', '7', null, null, '代理人', '周晓蕾', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1219', '8', '被告人', null, '应诉方', '王立洲', '男', '汉族', '中国', '高中文化', null, null, null, '天津市滨海新区汉沽新开南路新村南里南1段69号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1219', '9', null, null, '代理人', '梁建忠', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1219', '10', null, null, '代理人', '谢荷', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1219', '11', '被告人', null, '应诉方', '郑文平', '男', '土家族', '中国', '初中文化', null, null, null, '湖南省石门县壶瓶山镇后路坪村1组', null, null, null, null, null, null, null, null, '否', '农民', null, '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1219', '12', null, null, '代理人', '刘元杰、张', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1219', '13', '被告人', null, '应诉方', '关影', '女', '满族', '中国', '初中文化', null, null, null, '天津市滨海新区塘沽吉林路吉安里7、8号楼间临建平房（户籍地黑龙江省齐齐哈尔市梅里斯达斡尔族区卧牛吐达斡尔族镇西卧村5组）', null, null, null, null, null, null, null, null, '否', '农民', '：黑龙江省齐齐哈尔市梅里斯达斡尔族区卧牛吐达斡尔族镇西卧村5组）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1219', '14', null, null, '代理人', '刘静', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1227', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('1227', '2', '被告人', null, '应诉方', '何劲松', '男', '汉族', '中国', '初中文化', null, null, null, '天津市滨海新区塘沽金江路晓镇家园16号楼2504号（户籍所在地天津市滨海新区塘沽广州道华蓉里7栋2门101号）', null, null, null, null, null, null, null, null, '否', '无业人员', '：天津市滨海新区塘沽广州道华蓉里7栋2门101号）', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('1227', '3', null, null, '代理人', '王增强、赵', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9968', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9968', '2', '被告人', null, '应诉方', '韩滨杰', '男', '汉族', '中国', '小学文化', '身份证', '120221198208140915', null, '天津市宁河县丰台镇南埋珠村三区1排13号', null, null, null, null, null, null, null, null, '否', '农民', null, '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9968', '3', null, null, '代理人', '侯永福', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9969', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9969', '2', '被告人', null, '应诉方', '林业稳', '男', '汉族', '中国', '初中文化', '身份证', '441522199210120633', null, '广东省陆丰市甲子镇两东区真君街30号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9969', '3', null, null, '代理人', '林滋智', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9969', '4', '被告人', null, '应诉方', '吴俊宏', '男', '汉族', '中国', '初中文化', '身份证', '441581199308182517', null, '广东省陆丰市甲西镇鱼池村委会鱼池村三片十一巷7号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9969', '5', null, null, '代理人', '王智柱', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9969', '6', '被告人', null, '应诉方', '尹卫峰', '男', '汉族', '中国', '大专文化', '身份证', '31011519880725727X', null, '天津市滨海新区汉沽新开中路咸阳里5号楼309室', null, null, null, null, null, null, null, null, '否', '无业人员', '：上海市浦东新区机场镇邓镇3村西孙家宅22号', '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9969', '7', null, null, '代理人', '于永洋', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9969', '8', '被告人', null, '应诉方', '薛姣', '女', '汉族', '中国', '中专文化', '身份证', '320483199308287027', null, '天津市滨海新区汉沽新开中路咸阳里5号楼309室', null, null, null, null, null, null, null, null, '否', '无业人员', '：江苏省常州市新北区百馨西苑18幢丙单元302室', null, '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9969', '9', null, null, '代理人', '陈建华、潘', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9970', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9970', '2', '被告人', null, '应诉方', '王建军', '男', '汉族', '中国', '初中文化', '身份证', '120107197303022418', null, '天津市滨海新区金海花园6栋3门402室', null, null, null, null, null, null, null, null, '否', '无业人员', '为天津市滨海新区塘沽三槐路胜利楼1栋4门303号', '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9970', '3', null, null, '代理人', '蔡桐', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9970', '4', '被告人', null, '应诉方', '姚联合', '男', '汉族', '中国', '小学文化', '身份证', '350522197301152575', null, '福建省晋江市内坑镇山头村礼达路53号', null, null, null, null, null, null, null, null, '否', '农民', null, '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9970', '5', null, null, '代理人', '刘迎秋', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9970', '6', null, null, '代理人', '黄咏立', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9970', '7', '被告人', null, '应诉方', '陈培培', '男', '汉族', '中国', '初中文化', '身份证', '350583199409043778', null, '福建省南安市官桥镇东头村五甲133号', null, null, null, null, null, null, null, null, '否', '农民', null, '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9970', '8', null, null, '代理人', '王玉华', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9970', '9', '被告人', null, '应诉方', '柯泳宏', '女', '汉族', '中国', '初中文化', '身份证', '510282198110101622', null, '天津市滨海新区学校大街联合村5栋5门402号', null, null, null, null, null, null, null, null, '否', '无业人员', '为重庆市江津区德感街道德园路3号附4号', '天津市第一看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9970', '10', null, null, '代理人', '赵君君', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9971', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9971', '2', '附带民事诉', null, '起诉方', '郑玉武', '男', '汉族', '中国', null, null, null, null, '吉林省东丰县猴石镇文安村五组', null, null, null, null, null, null, null, null, '是', '农民', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9971', '3', null, null, '代理人', '郑忠环', '女', '汉族', '中国', null, null, null, null, '山东省青岛市市南区鱼山路5号', null, null, null, null, null, null, null, null, null, '其他', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9971', '4', null, null, '代理人', '诉讼原告人', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9971', '5', '被告人', null, '应诉方', '代振江', '男', '汉族', '中国', null, null, null, null, '吉林省梅河口市双兴乡福兴村三组', null, null, null, null, null, null, null, null, '否', '农民', null, '天津市第二看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9971', '6', null, null, '代理人', '徐华新', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9976', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9976', '2', '被告人', null, '应诉方', '韩健', '男', '汉族', '中国', '小学文化', '身份证', '120109198510171018', null, '天津市滨海新区大港港西街西幸里3号楼1门201号', null, null, null, null, null, null, null, null, '否', '私营企业主', '为天津市滨海新区大港古林街建北里137号楼1门401号', '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9976', '3', null, null, '代理人', '吕方征', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9981', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9981', '2', '被告人', null, '应诉方', '周革', '男', '汉族', '中国', '初中文化', '身份证', '120103196611234535', null, '天津市河西区红升里3门3楼中单元', null, null, null, null, null, null, null, null, '否', '无业人员', '为天津市河西区大沽南路同善里26门505', '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9981', '3', null, null, '代理人', '魏莉、刘雅', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9983', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9983', '2', '附带民事诉', null, '起诉方', '李体哈', '男', '藏族', '中国', null, null, null, null, '四川省冕宁县泽远乡东方村1组55号', null, null, null, null, null, null, null, null, '是', '农民', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9983', '3', '附带民事诉', null, '起诉方', '宋慈萨', '女', '藏族', '中国', null, null, null, null, '四川省冕宁县泽远乡东方村1组55号', null, null, null, null, null, null, null, null, '是', '农民', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9983', '4', null, null, '代理人', '宋海波', '男', '藏族', '中国', null, null, null, null, '四川省西昌市民胜乡大水村1组17号', null, null, null, null, null, null, null, null, null, '私营企业主', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9983', '5', '被告人', null, '应诉方', '张洪建', '男', '汉族', '中国', '小学文化', '身份证', '120222198807152914', null, '天津市武清区大良镇南阎庄村4区3排11号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9983', '6', null, null, '代理人', '赵津', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9986', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9986', '2', '被告人', null, '应诉方', '王德庆', '男', '汉族', '中国', '初中文化', '身份证', '220603197201290732', null, '吉林省白山市江源区湾沟镇兴工街五委五十五组', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9986', '3', null, null, '代理人', '刘颖', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9987', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9987', '2', '附带民事诉', null, '起诉方', '刘增斌', '男', '汉族', '中国', '初中文化', null, null, '工人', '天津市河北区七经路13号', null, null, null, null, null, null, null, null, '是', '其他', null, null, null, null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9987', '3', '附带民事诉', null, '起诉方', '张亚萍', '女', '汉族', '中国', '初中文化', null, null, null, '天津市河北区七经路13号', null, null, null, null, null, null, null, null, '是', '其他', null, null, null, null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9987', '4', '附带民事诉', null, '起诉方', '刘梓涵', '男', '汉族', '中国', null, null, null, null, '天津市河北区七经路13号', null, null, null, null, null, null, null, null, '是', '其他', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9987', '5', null, null, '代理人', '孙韦韦', null, null, '中国', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '其他', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9987', '6', null, null, '代理人', '范晓燕', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9987', '7', '被告人', null, '应诉方', '陈东祥', '男', '汉族', '中国', '高中文化', '身份证', '120103195902020753', null, '天津市河西区大沽南路古芳里52门107号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9987', '8', null, null, '代理人', '尹劲松', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9988', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9988', '2', '附带民事诉', null, '起诉方', '苏福荣', '女', '汉族', '中国', null, null, null, null, '辽宁省凌海市松山镇二十里铺村333号', null, null, null, null, null, null, null, null, '是', '农民', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9988', '3', null, null, '代理人', '暨被害人赵', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9988', '4', '被告人', null, '应诉方', '毕洪波', '男', '汉族', '中国', '初中文化', '身份证', '130622198003091232', null, '河北省保定市南市区毕庄村33号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9988', '5', null, null, '代理人', '姜卫东', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9990', '1', '公诉机关', null, '公诉方', '天津市人民', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9990', '2', '被告人', null, '应诉方', '张成刚', '男', '汉族', '中国', '小学文化', '身份证', '12011219690829165X', null, '天津市津南区双港镇新家园顺和园10号楼2门401室', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9990', '3', null, null, '代理人', '翟习羊、张', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9990', '4', '被告人', null, '应诉方', '鲍维胜', '男', '汉族', '中国', '初中文化', '身份证', '120112198703281633', null, '天津市津南区双港镇北马集村北地18号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9990', '5', null, null, '代理人', '姚如发', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9990', '6', '被告人', null, '应诉方', '田泽朋', '男', '汉族', '中国', '初中文化', '身份证', '130322199210240059', null, '河北省秦皇岛市昌黎县昌黎镇中阜庄村11组449号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9990', '7', null, null, '代理人', '何春景、王', null, null, null, null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9990', '8', '被告人', null, '应诉方', '许德水', '男', '回族', '中国', null, '身份证', '640203197609250538', null, '宁夏回族自治区石嘴山市惠农区福利新区11－2门－1号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第二看守所', '完全刑事责任能力', null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9990', '9', null, null, '代理人', '张旺', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);
INSERT INTO `ws_dsrb` VALUES ('9990', '10', '被告人', null, '应诉方', '李洪元', '男', '汉族', '中国', '小学文化', '身份证', '120112198706272013', null, '天津市津南区北闸口镇正营村一区21号', null, null, null, null, null, null, null, null, '否', '无业人员', null, '天津市第二看守所', '完全刑事责任能力', null, '其他', null);
INSERT INTO `ws_dsrb` VALUES ('9990', '11', null, null, '代理人', '陈科蕾', null, null, '中国', null, null, null, '律师', null, null, null, null, null, null, null, null, null, null, '职员', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for ws_dsr_qk
-- ----------------------------
DROP TABLE IF EXISTS `ws_dsr_qk`;
CREATE TABLE `ws_dsr_qk` (
  `AJXH` int(11) DEFAULT NULL,
  `QKBH` int(11) DEFAULT NULL,
  `DSRBH` int(11) DEFAULT NULL,
  `QKLB` char(50) DEFAULT NULL,
  `CFTIME` char(50) DEFAULT NULL,
  `CFYY` char(255) DEFAULT NULL,
  `SFDW` char(200) DEFAULT NULL,
  `CFXS` char(100) DEFAULT NULL,
  `CFRQ` char(200) DEFAULT NULL,
  `XMSFSJ` char(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ws_dsr_qk
-- ----------------------------
INSERT INTO `ws_dsr_qk` VALUES ('1154', '1', '6', '刑事前科', '1999年7月21日', '十八年', null, '有期徒刑', null, '2010年5月30日');
INSERT INTO `ws_dsr_qk` VALUES ('1157', '1', '16', '刑事前科', '2001年7月17日', '有期徒刑刑期一年;缓刑二年', '天津市静海县人民法院', '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1159', '1', '4', '刑事前科', '2006年5月', '七年;一年六个月', null, '有期徒刑', null, '2013年8月12日');
INSERT INTO `ws_dsr_qk` VALUES ('1159', '2', '8', '刑事前科', '1988年12月', '五年;三年六个月;六个月;一年;一年', null, '有期徒刑', null, '2008年6月10日');
INSERT INTO `ws_dsr_qk` VALUES ('1159', '3', '10', '刑事前科', '2003年12月', '一年六个月', null, '有期徒刑', null, '2005年1月21日');
INSERT INTO `ws_dsr_qk` VALUES ('1159', '4', '11', '刑事前科', '2007年7月', '二年六个月', null, '有期徒刑', null, '2009年5月13日');
INSERT INTO `ws_dsr_qk` VALUES ('1159', '5', '13', '刑事前科', '2012年1月', '四年', null, '有期徒刑', null, '2014年8月17日');
INSERT INTO `ws_dsr_qk` VALUES ('1159', '6', '15', '刑事前科', '2005年1月', '十个月', null, '有期徒刑', null, '2005年9月12日');
INSERT INTO `ws_dsr_qk` VALUES ('1162', '1', '2', '刑事前科', '1996年5月', '一年二个月', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1162', '2', '2', '刑事前科', '1998年6月2日', '六个月', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1162', '3', '2', '行政前科', '同年11月6日', '一年', null, '劳动教养', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1162', '4', '2', '刑事前科', '2003年3月20日', '二年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1162', '5', '2', '刑事前科', '2005年12月5日', '八年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1162', '6', '2', '刑事前科', '2008年1月3日', '一年六个月;六年一个月;七年六个月', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1162', '7', '2', '刑事前科', '2014年5月30日', '十五年;八年;四年;十三年;一年七个月;二十年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1162', '8', '2', '刑事前科', '2014年12月18日', '四年;四年;九个月;二十年;二十年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1162', '9', '4', '行政前科', '2015年1月', '十五日', null, '行政拘留', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1163', '1', '4', '刑事前科', '2001年9月28日', '八年', null, '有期徒刑', null, '2006年4月4日');
INSERT INTO `ws_dsr_qk` VALUES ('1163', '2', '4', '刑事前科', '2007年12月3日', '四年', null, '有期徒刑', null, '2010年4月22日');
INSERT INTO `ws_dsr_qk` VALUES ('1163', '3', '8', '刑事前科', '2010年5月10日', '三年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1163', '4', '8', '刑事前科', '2013年12月4日', '一年', null, '有期徒刑', null, '2014年7月16日');
INSERT INTO `ws_dsr_qk` VALUES ('1163', '5', '10', '刑事前科', '2010年6月17日', '三年六个月', null, '有期徒刑', null, '2012年4月17日');
INSERT INTO `ws_dsr_qk` VALUES ('1169', '1', '2', '行政前科', '2014年3月8日', '十五日;三年', null, '社区戒毒', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1177', '1', '8', '行政前科', '1975年7月', '一年;一年;二年', null, '劳动教养', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1187', '1', '2', '刑事前科', '1983年2月24日', '三年六个月', null, '有期徒刑', null, '1986年3月15日');
INSERT INTO `ws_dsr_qk` VALUES ('1187', '2', '2', '刑事前科', '1988年7月4日', '三年', null, '有期徒刑', null, '1991年1月10日');
INSERT INTO `ws_dsr_qk` VALUES ('1187', '3', '2', '刑事前科', '1997年12月5日', '二年', null, '死刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1187', '4', '4', '刑事前科', '1996年8月13日', '二年', null, '死刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1189', '1', '2', '刑事前科', '2007年6月', '一年六个月', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1189', '2', '2', '刑事前科', '2009年6月23日', '一年六个月', null, '有期徒刑', null, '2010年8月16日');
INSERT INTO `ws_dsr_qk` VALUES ('1189', '3', '2', '刑事前科', '2014年12月3日', '一年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1190', '1', '5', '刑事前科', '2010年6月12日', '四年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1194', '1', '2', '刑事前科', '2007年4月10日', '十二年', null, '有期徒刑', null, '2014年1月15日');
INSERT INTO `ws_dsr_qk` VALUES ('1194', '2', '4', '刑事前科', '2006年6月', '二年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1194', '3', '4', '刑事前科', '2011年3月8日', '十个月', null, '有期徒刑', null, '2011年8月21日');
INSERT INTO `ws_dsr_qk` VALUES ('1194', '4', '6', '行政前科', '1988年4月8日', '一年', null, '劳动教养', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1194', '5', '6', '刑事前科', '1991年2月8日', '一年六个月;三年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1194', '6', '6', '刑事前科', null, '六年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1194', '7', '6', '刑事前科', '2003年7月25日', '二年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1194', '8', '6', '刑事前科', '2007年10月31日', '十三年', null, '有期徒刑', null, '2014年11月20日');
INSERT INTO `ws_dsr_qk` VALUES ('1194', '9', '8', '刑事前科', null, '一年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1194', '10', '8', '刑事前科', null, '一年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1194', '11', '8', '行政前科', '2001年2月', '二年', null, '劳动教养', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1194', '12', '8', '行政前科', '2003年1月', '一年三个月', null, '劳动教养', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1194', '13', '8', '刑事前科', '2011年5月31日', '四年', null, '有期徒刑', null, '2014年1月6日');
INSERT INTO `ws_dsr_qk` VALUES ('1200', '1', '4', '刑事前科', '2008年7月8日', '八年', null, '有期徒刑', null, '2013年9月29日');
INSERT INTO `ws_dsr_qk` VALUES ('1200', '2', '7', '刑事前科', '2005年6月7日', '一年六个月', null, '有期徒刑', null, '2006年6月23日');
INSERT INTO `ws_dsr_qk` VALUES ('1200', '3', '7', '刑事前科', '2012年12月12日', '六个月', null, '有期徒刑', null, '2013年2月25日');
INSERT INTO `ws_dsr_qk` VALUES ('1200', '4', '7', '刑事前科', '2013年5月15日', '六个月', null, '有期徒刑', null, '2013年9月16日');
INSERT INTO `ws_dsr_qk` VALUES ('1200', '5', '9', '刑事前科', '1993年5月7日', '四年六个月', null, '有期徒刑', null, '1996年11月27日');
INSERT INTO `ws_dsr_qk` VALUES ('1200', '6', '9', '刑事前科', '1997年8月', '十个月', null, '有期徒刑', null, '1998年6月30日');
INSERT INTO `ws_dsr_qk` VALUES ('1200', '7', '9', '刑事前科', '2002年10月18日', '六个月', null, '有期徒刑', null, '2003年1月10日');
INSERT INTO `ws_dsr_qk` VALUES ('1200', '8', '9', '刑事前科', '2004年9月24日', '五年', null, '有期徒刑', null, '2008年1月10日');
INSERT INTO `ws_dsr_qk` VALUES ('1200', '9', '11', '刑事前科', '2003年4月21日', '四年', null, '有期徒刑', null, '2006年1月15日');
INSERT INTO `ws_dsr_qk` VALUES ('1200', '10', '11', '刑事前科', '2007年5月10日', '七年六个月', null, '有期徒刑', null, '2012年5月29日');
INSERT INTO `ws_dsr_qk` VALUES ('1205', '1', '2', '刑事前科', '2013年10月15日', '犯故意杀人罪', null, '无期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1206', '1', '2', '刑事前科', '1995年5月', '十年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1206', '2', '2', '刑事前科', '2005年3月', '十六年', null, '有期徒刑', null, '2014年9月23日');
INSERT INTO `ws_dsr_qk` VALUES ('1206', '3', '4', '刑事前科', '2001年7月', '十个月', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1206', '4', '4', '刑事前科', '2003年6月', '十五年', null, '有期徒刑', null, '2012年4月1日');
INSERT INTO `ws_dsr_qk` VALUES ('1206', '5', '4', '刑事前科', '2014年12月', '六个月;一年', null, '拘役', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1206', '6', '6', '刑事前科', '2005年3月', '十四年', null, '有期徒刑', null, '2013年12月20日');
INSERT INTO `ws_dsr_qk` VALUES ('1208', '1', '2', '刑事前科', '2011年12月1日', '二年', '天津市高级人民法院', '死刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1212', '1', '4', '刑事前科', '2009年4月14日', '一年六个月', null, '有期徒刑', null, '2010年6月26日');
INSERT INTO `ws_dsr_qk` VALUES ('1213', '1', '4', '刑事前科', null, '三个月;六个月', null, '拘役', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1215', '1', '2', '刑事前科', '1999年9月20日', '三年', '天津市宝坻区人民法院', '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1219', '1', '8', '刑事前科', '2004年12月2日', '三年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1219', '2', '8', '刑事前科', '2007年7月4日', '二年六个月', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1219', '3', '8', '刑事前科', '2009年12月29日', '二年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1219', '4', '8', '刑事前科', '2012年2月17日', '八个月', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1219', '5', '8', '刑事前科', '2013年5月10日', '一年三个月', null, '有期徒刑', null, '2014年3月29日');
INSERT INTO `ws_dsr_qk` VALUES ('1227', '1', '2', '刑事前科', '1996年1月26日', '三年六个月', '天津市塘沽区人民法院', '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('1227', '2', '2', '刑事前科', '1998年3月18日', '十二年', '天津市塘沽区人民法院', '有期徒刑', null, '2005年4月30日');
INSERT INTO `ws_dsr_qk` VALUES ('1227', '3', '2', '刑事前科', '2006年6月5日', '十一年', '天津市塘沽区人民法院', '有期徒刑', null, '2012年8月9日');
INSERT INTO `ws_dsr_qk` VALUES ('9968', '1', '2', '刑事前科', '2003年6月', '一年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('9969', '1', '6', '刑事前科', '2011年7月', '一年五个月', '上海市长宁区人民法院', '有期徒刑', null, '2012年6月23日');
INSERT INTO `ws_dsr_qk` VALUES ('9970', '1', '2', '刑事前科', '1992年3月', '一年三个月;三年', '天津市塘沽区人民法院', '有期徒刑', null, '2004年7月12日');
INSERT INTO `ws_dsr_qk` VALUES ('9971', '1', '5', '刑事前科', '1989年10月', '十二年;十二年', '吉林省梅河口市人民法院', '有期徒刑', null, '2009年1月10日');
INSERT INTO `ws_dsr_qk` VALUES ('9976', '1', '2', '刑事前科', '2003年3月28日', '五个月', '天津市大港区人民法院', '拘役', null, '同年4月7日');
INSERT INTO `ws_dsr_qk` VALUES ('9981', '1', '2', '刑事前科', '2000年3月', '五年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('9983', '1', '5', '刑事前科', '2008年4月11日', '一年六个月', '天津市红桥区人民法院', '有期徒刑', null, '2009年7月30日');
INSERT INTO `ws_dsr_qk` VALUES ('9986', '1', '2', '刑事前科', '1997年1月30日', '八年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('9987', '1', '7', '刑事前科', '1995年6月', '一年六个月', '天津市河西区人民法院', '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('9988', '1', '4', '刑事前科', '2010年12月', '有期徒刑刑期六个月;缓刑一年', '河北省保定市南市区人民法院', '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('9990', '1', '2', '刑事前科', null, '六年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('9990', '2', '2', '刑事前科', null, '五年', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('9990', '3', '2', '刑事前科', null, '一年六个月', null, '有期徒刑', null, null);
INSERT INTO `ws_dsr_qk` VALUES ('9990', '4', '2', '刑事前科', null, '五年', null, '有期徒刑', null, '2009年3月20日');
INSERT INTO `ws_dsr_qk` VALUES ('9990', '5', '4', '刑事前科', null, '三年', null, '有期徒刑', null, '2012年5月21日');
INSERT INTO `ws_dsr_qk` VALUES ('9990', '6', '8', '刑事前科', null, '十二年', null, '有期徒刑', null, '2005年12月15日');
INSERT INTO `ws_dsr_qk` VALUES ('9990', '7', '10', '刑事前科', '2013年9月6日', '五个月', null, '拘役', null, null);

-- ----------------------------
-- Table structure for ws_dsr_qzcs
-- ----------------------------
DROP TABLE IF EXISTS `ws_dsr_qzcs`;
CREATE TABLE `ws_dsr_qzcs` (
  `AJXH` int(255) DEFAULT NULL,
  `QZCSBH` int(255) DEFAULT NULL,
  `DSRBH` int(255) DEFAULT NULL,
  `ZL` char(200) DEFAULT NULL,
  `ZXSJ` char(50) DEFAULT NULL,
  `DW` char(100) DEFAULT NULL,
  `YY` char(200) DEFAULT NULL,
  `SFDB` char(10) DEFAULT NULL,
  `DBRQ` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ws_dsr_qzcs
-- ----------------------------
INSERT INTO `ws_dsr_qzcs` VALUES ('1154', '1', '2', '拘留', '2014年12月17日', null, '涉嫌犯贩卖、运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1154', '2', '2', '逮捕', '2015年1月20日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1154', '3', '4', '拘留', '2014年11月18日', null, '涉嫌犯贩卖、运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1154', '4', '4', '逮捕', '2014年12月26日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1154', '5', '6', '拘留', '2014年11月4日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1154', '6', '6', '逮捕', '2014年12月12日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1154', '7', '8', '拘留', '2014年11月19日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1154', '8', '8', '逮捕', '2014年12月26日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1154', '9', '10', '拘留', '2014年11月21日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1154', '10', '10', '逮捕', '2014年12月26日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1154', '11', '12', '拘留', '2014年11月19日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1154', '12', '12', '逮捕', '2014年12月26日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '1', '16', '拘留', '2014年11月4日', null, '涉嫌犯虚开增值税专用发票罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '2', '16', '逮捕', '2014年11月27日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '3', '18', '拘留', '2014年7月18日', null, '涉嫌犯虚开增值税专用发票罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '4', '18', '逮捕', '2014年8月22日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '5', '20', '拘留', '2014年7月18日', null, '涉嫌犯虚开增值税专用发票罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '6', '20', '逮捕', '2014年8月22日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '7', '22', '拘留', '2014年7月19日', null, '涉嫌犯虚开增值税专用发票罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '8', '22', '逮捕', '2014年8月22日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '9', '24', '拘留', '2014年7月18日', null, '涉嫌犯虚开增值税专用发票罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '10', '24', '逮捕', '2014年8月22日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '11', '26', '取保候审', '2014年12月25日', null, '涉嫌犯虚开增值税专用发票罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '12', '27', '拘留', '2014年12月26日', null, '涉嫌犯虚开增值税专用发票罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '13', '27', '取保候审', null, null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '14', '28', '拘留', '2014年7月23日', null, '涉嫌犯虚开增值税专用发票罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '15', '28', '逮捕', '2014年8月22日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '16', '28', '取保候审', '2014年11月11日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '17', '30', '拘留', '2014年12月26日', null, '涉嫌犯虚开增值税专用发票罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1157', '18', '30', '取保候审', null, null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '1', '2', '拘留', '2014年12月30日', null, '涉嫌犯贩卖、运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '2', '2', '逮捕', '2015年2月5日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '3', '4', '拘留', '2014年12月30日', null, '涉嫌犯贩卖、运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '4', '4', '逮捕', '2015年2月5日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '5', '6', '拘留', '2014年12月30日', null, '涉嫌犯贩卖、运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '6', '6', '逮捕', '2015年2月5日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '7', '8', '拘留', '2014年12月1日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '8', '8', '逮捕', '2014年12月30日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '9', '10', '拘留', '2014年12月1日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '10', '10', '逮捕', '2014年12月30日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '11', '11', '拘留', '2014年12月1日', null, '涉嫌犯运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '12', '11', '逮捕', '2014年12月30日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '13', '13', '拘留', '2014年12月1日', null, '涉嫌犯运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '14', '13', '逮捕', '2014年12月30日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '15', '15', '拘留', '2014年12月30日', null, '涉嫌犯贩卖、运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '16', '15', '取保候审', '2015年1月29日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1159', '17', '15', '逮捕', '2015年11月26日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1162', '1', '2', '监视居住', '2015年4月17日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1162', '2', '2', '取保候审', '2015年10月16日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1162', '3', '2', '取保候审', '2016年1月5日', '天津市第一中级人民法院', null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1162', '4', '2', '逮捕', '2016年4月21日', '天津市第一中级人民法院', null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1162', '5', '2', '逮捕', '2016年4月25日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1162', '6', '4', '拘留', '2015年4月16日', null, '涉嫌犯贩卖、运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1162', '7', '4', '逮捕', '2015年5月22日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1162', '8', '7', '拘留', '2015年4月17日', null, '涉嫌犯贩卖、运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1162', '9', '7', '逮捕', '2015年5月22日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1162', '10', '9', '拘留', '2015年4月17日', null, '涉嫌犯贩卖、运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1162', '11', '9', '逮捕', '2015年5月22日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1162', '12', '11', '拘留', '2015年10月3日', null, '涉嫌犯抢夺罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1162', '13', '11', '逮捕', '2015年12月3日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1163', '1', '2', '拘留', '2014年12月29日', null, '涉嫌贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1163', '2', '2', '逮捕', '2015年2月4日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1163', '3', '4', '解除', '2010年4月22日', null, '犯聚众斗殴罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1163', '4', '4', '拘留', '2014年11月24日', null, '涉嫌贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1163', '5', '4', '逮捕', '2014年12月30日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1163', '6', '6', '拘留', '2014年11月24日', null, '涉嫌贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1163', '7', '6', '逮捕', '2014年12月30日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1163', '8', '8', '拘留', '2014年12月29日', null, '涉嫌贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1163', '9', '8', '逮捕', '2015年2月4日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1163', '10', '10', '拘留', '2014年11月24日', null, '涉嫌贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1163', '11', '10', '逮捕', '2014年12月30日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1169', '1', '2', '拘留', '2015年1月15日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1169', '2', '2', '逮捕', '2015年2月16日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1169', '3', '4', '拘留', '2015年1月15日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1169', '4', '4', '逮捕', '2015年2月16日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1169', '5', '6', '拘留', '2015年1月15日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1169', '6', '6', '取保候审', '2015年1月16日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1169', '7', '8', '拘留', '2015年1月21日', null, '涉嫌犯贩卖、运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1169', '8', '8', '逮捕', '2015年2月16日', null, '涉嫌犯运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1169', '9', '11', '拘留', '2015年1月15日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1169', '10', '11', '逮捕', '2015年2月16日', null, '涉嫌犯运输毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1177', '1', '8', '拘留', '2015年9月16日', null, '涉嫌犯故意杀人罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1177', '2', '8', '逮捕', '2015年12月8日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1187', '1', '2', '解除', '1991年1月10日', null, '犯盗窃罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1187', '2', '2', '拘留', '2015年5月27日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1187', '3', '2', '逮捕', '2015年7月2日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1187', '4', '4', '拘留', '2015年5月27日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1187', '5', '4', '逮捕', '2015年7月2日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1189', '1', '2', '拘留', '2015年4月24日', null, '犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1189', '2', '2', '逮捕', '2015年5月29日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1190', '1', '5', '拘留', '2015年8月30日', null, '涉嫌犯故意杀人罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1190', '2', '5', '逮捕', '2015年9月30日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1190', '3', '7', '监视居住', '2015年8月30日', null, '涉嫌犯故意杀人罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1190', '4', '7', '逮捕', '2015年11月10日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1190', '5', '9', '拘留', '2015年8月30日', null, '涉嫌犯包庇罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1190', '6', '9', '逮捕', '2015年9月11日', null, '涉嫌犯帮助毁灭、伪造证据罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1194', '1', '2', '拘留', '2015年8月21日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1194', '2', '2', '逮捕', '2015年9月25日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1194', '3', '4', '拘留', '2015年4月18日', null, '涉嫌犯非法持有毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1194', '4', '4', '取保候审', '2015年4月22日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1194', '5', '4', '拘留', '2015年8月21日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1194', '6', '4', '逮捕', '2015年9月25日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1194', '7', '6', '拘留', '2015年8月21日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1194', '8', '6', '逮捕', '2015年9月25日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1194', '9', '8', '拘留', '2015年8月26日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1194', '10', '8', '逮捕', '2015年9月25日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '1', '2', '拘留', '2015年4月26日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '2', '2', '逮捕', '2015年5月21日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '3', '4', '拘留', '2015年4月14日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '4', '4', '逮捕', '2015年5月21日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '5', '7', '解除', '2013年2月25日', null, '犯盗窃罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '6', '7', '拘留', '2015年4月22日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '7', '7', '逮捕', '2015年5月21日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '8', '9', '解除', '1998年6月30日', null, '犯敲诈勒索罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '9', '9', '解除', '2008年1月10日', null, '犯聚众斗殴罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '10', '9', '拘留', '2015年4月14日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '11', '9', '逮捕', '2015年5月21日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '12', '11', '解除', '2012年5月29日', null, '犯聚众斗殴罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '13', '11', '拘留', '2015年4月14日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1200', '14', '11', '逮捕', '2015年5月21日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1206', '1', '2', '拘留', '2016年1月16日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1206', '2', '2', '逮捕', '2016年2月22日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1206', '3', '4', '拘留', '2016年1月16日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1206', '4', '4', '逮捕', '2016年2月22日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1206', '5', '6', '拘留', '2016年1月16日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1206', '6', '6', '逮捕', '2016年2月22日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1206', '7', '8', '拘留', '2016年1月16日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1206', '8', '8', '逮捕', '2016年2月22日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1212', '1', '4', '拘留', '2016年4月28日', null, '涉嫌犯故意伤害罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1212', '2', '4', '逮捕', '2016年5月12日', null, '涉嫌犯故意杀人罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1213', '1', '4', '拘留', '2016年1月29日', '天津市公安局宝坻分局', '涉嫌犯故意杀人罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1213', '2', '4', '逮捕', '2016年2月6日', '天津市宝坻区人民检察院', '涉嫌犯绑架罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1215', '1', '2', '拘留', '2016年3月25日', null, '涉嫌犯故意杀人罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1215', '2', '2', '逮捕', '2016年6月3日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '1', '2', '拘留', '2015年10月16日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '2', '2', '逮捕', '2015年11月23日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '3', '4', '拘留', '2015年10月16日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '4', '4', '逮捕', '2015年11月23日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '5', '6', '拘留', '2015年10月16日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '6', '6', '逮捕', '2015年11月23日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '7', '8', '拘留', '2015年10月16日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '8', '8', '逮捕', '2015年11月23日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '9', '11', '拘留', '2015年11月16日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '10', '11', '逮捕', '2015年12月3日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '11', '13', '取保候审', '2015年1月8日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '12', '13', '拘留', '2015年10月16日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '13', '13', '监视居住', '2015年10月17日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '14', '13', '取保候审', '2015年10月30日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1219', '15', '13', '逮捕', '2016年9月27日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1227', '1', '2', '解除', '2012年8月9日', '天津市塘沽区人民法院', '犯聚众斗殴罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1227', '2', '2', '拘留', '2015年7月29日', null, '贩卖毒品', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('1227', '3', '2', '逮捕', '2015年8月12日', null, '贩卖毒品', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9968', '1', '2', '拘留', '2013年6月21日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9968', '2', '2', '逮捕', '2013年7月5日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9969', '1', '2', '拘留', '2013年2月22日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9969', '2', '2', '逮捕', '2013年3月26日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9969', '3', '4', '取保候审', '2009年5月3日', '深圳市公安局龙岗分局', '涉嫌犯抢劫罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9969', '4', '4', '取保候审', '2011年12月7日', '深圳市公安局龙岗分局', null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9969', '5', '4', '拘留', '2013年2月22日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9969', '6', '4', '逮捕', '2013年3月26日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9969', '7', '6', '拘留', '2013年2月2日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9969', '8', '6', '逮捕', '2013年3月1日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9969', '9', '8', '监视居住', '2013年2月2日', null, '涉嫌犯贩卖毒品罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9969', '10', '8', '取保候审', '2013年2月4日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9970', '1', '2', '拘留', '2013年4月26日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9970', '2', '2', '逮捕', '2013年5月31日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9970', '3', '4', '拘留', '2013年4月26日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9970', '4', '4', '逮捕', '2013年5月31日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9970', '5', '7', '拘留', '2013年4月26日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9970', '6', '7', '逮捕', '2013年5月31日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9970', '7', '9', '拘留', '2013年4月26日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9970', '8', '9', '逮捕', '2013年5月31日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9971', '1', '5', '拘留', '2013年8月10日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9971', '2', '5', '逮捕', '2013年8月23日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9976', '1', '2', '拘留', '2013年9月27日', null, '涉嫌故意伤害罪', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9976', '2', '2', '逮捕', '2013年9月30日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9981', '1', '2', '拘留', '2013年9月12日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9981', '2', '2', '逮捕', '2013年9月26日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9983', '1', '5', '拘留', '2013年8月26日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9983', '2', '5', '逮捕', '2013年9月5日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9986', '1', '2', '拘留', '2013年9月18日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9986', '2', '2', '逮捕', '2013年9月30日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9987', '1', '7', '拘留', '2013年7月28日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9987', '2', '7', '逮捕', '2013年8月8日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9988', '1', '4', '拘留', '2013年8月20日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9988', '2', '4', '逮捕', '2013年9月3日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9990', '1', '2', '拘留', '2013年4月24日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9990', '2', '2', '逮捕', '2013年5月29日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9990', '3', '4', '拘留', '2013年7月18日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9990', '4', '4', '逮捕', '2013年8月1日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9990', '5', '6', '拘留', '2013年8月15日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9990', '6', '6', '逮捕', '2013年9月6日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9990', '7', '8', '拘留', '2013年8月6日', null, '本案', null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9990', '8', '8', '逮捕', '2013年9月12日', null, null, null, null);
INSERT INTO `ws_dsr_qzcs` VALUES ('9990', '9', '10', '逮捕', '同年9月27日', null, null, null, null);
