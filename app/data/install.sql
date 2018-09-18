/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : testq

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2018-09-11 21:46:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_cg_group
-- ----------------------------
DROP TABLE IF EXISTS `admin_cg_group`;
CREATE TABLE `admin_cg_group` (
  `GroupID` int(11) NOT NULL AUTO_INCREMENT,
  `G_CName` varchar(50) DEFAULT NULL,
  `G_ParentID` int(11) DEFAULT NULL,
  `G_ShowOrder` int(11) DEFAULT NULL,
  `G_Level` int(11) DEFAULT NULL,
  `G_ChildCount` int(11) DEFAULT NULL,
  `G_Delete` int(11) DEFAULT '0',
  `G_Num` int(11) DEFAULT '0',
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=3445 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_cg_group
-- ----------------------------
INSERT INTO `admin_cg_group` VALUES ('2', '北京市', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3', '天津市', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('4', '河北省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('5', '山西省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('6', '内蒙古自治区', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('7', '辽宁省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('8', '吉林省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('9', '黑龙江省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('10', '上海市', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('11', '江苏省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('12', '浙江省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('13', '安徽省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('14', '福建省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('15', '江西省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('16', '山东省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('17', '河南省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('18', '湖北省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('19', '湖南省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('20', '广东省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('21', '广西省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('22', '海南省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('23', '重庆市', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('24', '四川省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('25', '贵州省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('26', '云南省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('27', '西藏自治区', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('28', '陕西省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('29', '甘肃省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('30', '青海省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('31', '宁夏市', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('32', '新疆省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('33', '台湾省', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('34', '香港特别行政区', '0', '100', '2', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('35', '市辖区', '2', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('36', '县', '2', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('37', '市辖区', '3', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('38', '县', '3', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('39', '石家庄市', '4', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('40', '唐山市', '4', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('41', '秦皇岛市', '4', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('42', '邯郸市', '4', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('43', '邢台市', '4', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('44', '保定市', '4', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('45', '张家口市', '4', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('46', '承德市', '4', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('47', '沧州市', '4', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('48', '廊坊市', '4', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('49', '衡水市', '4', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('50', '太原市', '5', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('51', '大同市', '5', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('52', '阳泉市', '5', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('53', '长治市', '5', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('54', '晋城市', '5', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('55', '朔州市', '5', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('56', '忻州地区', '5', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('57', '吕梁地区', '5', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('58', '晋中地区', '5', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('59', '临汾地区', '5', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('60', '运城地区', '5', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('61', '呼和浩特市', '6', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('62', '包头市', '6', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('63', '乌海市', '6', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('64', '赤峰市', '6', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('65', '呼伦贝尔市', '6', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('66', '兴安盟', '6', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('67', '通辽市', '6', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('68', '锡林浩特市', '6', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('69', '集宁市', '6', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('70', '鄂尔多斯市', '6', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('71', '临河市', '6', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('72', '阿尔善左旗', '6', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('73', '沈阳市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('74', '大连市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('75', '鞍山市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('76', '抚顺市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('77', '本溪市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('78', '丹东市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('79', '锦州市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('80', '营口市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('81', '阜新市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('82', '辽阳市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('83', '盘锦市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('84', '铁岭市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('85', '朝阳市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('86', '葫芦岛市', '7', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('87', '长春市', '8', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('88', '吉林市', '8', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('89', '四平市', '8', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('90', '辽源市', '8', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('91', '通化市', '8', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('92', '白山市', '8', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('93', '松原市', '8', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('94', '白城市', '8', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('95', '延边自治州', '8', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('96', '哈尔滨市', '9', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('97', '齐齐哈尔市', '9', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('98', '鸡西市', '9', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('99', '鹤岗市', '9', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('100', '双鸭山市', '9', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('101', '大庆市', '9', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('102', '伊春市', '9', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('103', '佳木斯市', '9', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('104', '七台河市', '9', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('105', '牡丹江市', '9', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('106', '黑河市', '9', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('107', '绥化地区', '9', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('108', '大兴安岭地区', '9', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('109', '市辖区', '10', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('110', '县', '10', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('111', '南京市', '11', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('112', '无锡市', '11', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('113', '徐州市', '11', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('114', '常州市', '11', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('115', '苏州市', '11', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('116', '南通市', '11', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('117', '连云港市', '11', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('118', '淮阴市', '11', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('119', '盐城市', '11', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('120', '扬州市', '11', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('121', '镇江市', '11', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('122', '泰州市', '11', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('123', '宿迁市', '11', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('124', '杭州市', '12', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('125', '宁波市', '12', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('126', '温州市', '12', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('127', '嘉兴市', '12', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('128', '湖州市', '12', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('129', '绍兴市', '12', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('130', '金华市', '12', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('131', '衢州市', '12', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('132', '舟山市', '12', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('133', '台州市', '12', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('134', '丽水地区', '12', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('135', '合肥市', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('136', '芜湖市', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('137', '蚌埠市', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('138', '淮南市', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('139', '马鞍山市', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('140', '淮北市', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('141', '铜陵市', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('142', '安庆市', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('143', '黄山市', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('144', '滁州市', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('145', '阜阳市', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('146', '宿州市', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('147', '六安地区', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('148', '宣城地区', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('149', '巢湖地区', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('150', '池州地区', '13', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('151', '福州市', '14', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('152', '厦门市', '14', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('153', '莆田市', '14', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('154', '三明市', '14', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('155', '泉州市', '14', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('156', '漳州市', '14', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('157', '南平市', '14', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('158', '龙岩市', '14', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('159', '宁德地区', '14', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('160', '南昌市', '15', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('161', '景德镇市', '15', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('162', '萍乡市', '15', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('163', '九江市', '15', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('164', '新余市', '15', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('165', '赣州市', '15', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('166', '宜春地区', '15', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('167', '上饶地区', '15', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('168', '吉安地区', '15', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('169', '抚州地区', '15', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('170', '济南市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('171', '青岛市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('172', '淄博市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('173', '枣庄市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('174', '东营市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('175', '烟台市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('176', '潍坊市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('177', '济宁市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('178', '泰安市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('179', '威海市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('180', '日照市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('181', '莱芜市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('182', '临沂市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('183', '德州市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('184', '聊城市', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('185', '滨州地区', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('186', '荷泽地区', '16', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('187', '郑州市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('188', '开封市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('189', '洛阳市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('190', '平顶山市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('191', '安阳市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('192', '鹤壁市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('193', '新乡市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('194', '焦作市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('195', '濮阳市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('196', '许昌市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('197', '漯河市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('198', '三门峡市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('199', '南阳市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('200', '商丘市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('201', '信阳市', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('202', '周口地区', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('203', '驻马店地区', '17', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('204', '武汉市', '18', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('205', '黄石市', '18', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('206', '十堰市', '18', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('207', '宜昌市', '18', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('208', '襄樊市', '18', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('209', '鄂州市', '18', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('210', '荆门市', '18', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('211', '孝感市', '18', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('212', '荆州市', '18', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('213', '黄冈市', '18', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('214', '咸宁市', '18', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('215', '恩施自治州', '18', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('216', '省直辖县', '18', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('217', '长沙市', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('218', '株洲市', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('219', '湘潭市', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('220', '衡阳市', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('221', '邵阳市', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('222', '岳阳市', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('223', '常德市', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('224', '张家界市', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('225', '益阳市', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('226', '郴州市', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('227', '永州市', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('228', '怀化市', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('229', '娄底地区', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('230', '湘西自治州', '19', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('231', '广州市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('232', '韶关市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('233', '深圳市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('234', '珠海市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('235', '汕头市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('236', '佛山市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('237', '江门市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('238', '湛江市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('239', '茂名市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('240', '肇庆市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('241', '惠州市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('242', '梅州市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('243', '汕尾市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('244', '河源市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('245', '阳江市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('246', '清远市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('247', '东莞市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('248', '中山市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('249', '潮州市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('250', '揭阳市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('251', '云浮市', '20', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('252', '南宁市', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('253', '柳州市', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('254', '桂林市', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('255', '梧州市', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('256', '北海市', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('257', '防城港市', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('258', '钦州市', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('259', '贵港市', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('260', '玉林市', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('261', '南宁地区', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('262', '柳州地区', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('263', '贺州地区', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('264', '百色地区', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('265', '河池地区', '21', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('266', '海口市', '22', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('267', '三亚市', '22', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('268', '市辖区', '23', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('269', '县', '23', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('270', '市', '23', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('271', '成都市', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('272', '自贡市', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('273', '攀枝花市', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('274', '泸州市', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('275', '德阳市', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('276', '绵阳市', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('277', '广元市', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('278', '遂宁市', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('279', '内江市', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('280', '乐山市', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('281', '南充市', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('282', '宜宾市', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('283', '广安市', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('284', '达川地区', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('285', '雅安地区', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('286', '阿坝藏族羌族自治州', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('287', '甘孜藏族自治州', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('288', '凉山彝族自治州', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('289', '巴中地区', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('290', '眉山地区', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('291', '资阳地区', '24', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('292', '贵阳市', '25', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('293', '六盘水市', '25', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('294', '遵义市', '25', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('295', '铜仁地区', '25', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('296', '黔西南布依族苗族自治州', '25', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('297', '毕节地区', '25', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('298', '安顺地区', '25', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('299', '黔东南苗族侗族自治州', '25', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('300', '黔南布依族苗族自治州', '25', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('301', '昆明市', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('302', '曲靖市', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('303', '玉溪市', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('304', '昭通地区', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('305', '楚雄彝族自治州', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('306', '红河哈尼族彝族自治州', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('307', '文山壮族苗族自治州', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('308', '思茅地区', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('309', '西双版纳傣族自治州', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('310', '大理白族自治州', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('311', '保山地区', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('312', '德宏傣族景颇族自治州', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('313', '丽江地区', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('314', '怒江傈僳族自治州', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('315', '迪庆藏族自治州', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('316', '临沧地区', '26', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('317', '拉萨市', '27', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('318', '昌都地区', '27', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('319', '山南地区', '27', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('320', '日喀则地区', '27', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('321', '那曲地区', '27', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('322', '阿里地区', '27', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('323', '林芝地区', '27', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('324', '西安市', '28', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('325', '铜川市', '28', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('326', '宝鸡市', '28', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('327', '咸阳市', '28', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('328', '渭南市', '28', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('329', '延安市', '28', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('330', '汉中市', '28', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('331', '安康地区', '28', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('332', '商洛地区', '28', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('333', '榆林地区', '28', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('334', '兰州市', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('335', '嘉峪关市', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('336', '金昌市', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('337', '白银市', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('338', '天水市', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('339', '酒泉地区', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('340', '张掖地区', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('341', '武威地区', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('342', '定西地区', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('343', '陇南地区', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('344', '平凉地区', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('345', '庆阳地区', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('346', '临夏回族自治州', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('347', '甘南藏族自治州', '29', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('348', '西宁市', '30', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('349', '海东地区', '30', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('350', '海北藏族自治州', '30', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('351', '黄南藏族自治州', '30', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('352', '海南藏族自治州', '30', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('353', '果洛藏族自治州', '30', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('354', '玉树藏族自治州', '30', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('355', '海西蒙古族藏族自治州', '30', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('356', '银川市', '31', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('357', '石嘴山市', '31', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('358', '吴忠市', '31', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('359', '固原地区', '31', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('360', '乌鲁木齐市', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('361', '克拉玛依市', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('362', '吐鲁番地区', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('363', '哈密地区', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('364', '昌吉回族自治州', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('365', '博尔塔拉蒙古自治州', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('366', '巴音郭楞蒙古族自治州', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('367', '阿克苏地区', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('368', '克孜勒苏柯尔克孜自治州', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('369', '喀什地区', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('370', '和田地区', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('371', '伊犁哈萨克自治州', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('372', '伊犁地区', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('373', '塔城地区', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('374', '阿勒泰地区', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('375', '直辖行政单位', '32', '100', '3', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('376', '东城区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('377', '西城区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('378', '崇文区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('379', '宣武区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('380', '朝阳区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('381', '丰台区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('382', '石景山区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('383', '海淀区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('384', '门头沟区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('385', '房山区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('386', '通州区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('387', '顺义区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('388', '昌平区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('389', '大兴区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('390', '平谷区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('391', '怀柔区', '35', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('392', '密云县', '36', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('393', '延庆县', '36', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('394', '和平区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('395', '河东区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('396', '河西区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('397', '南开区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('398', '河北区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('399', '红桥区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('400', '塘沽区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('401', '汉沽区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('402', '大港区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('403', '东丽区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('404', '西青区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('405', '津南区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('406', '北辰区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('407', '武清区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('408', '宝坻区', '37', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('409', '宁河县', '38', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('410', '静海县', '38', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('411', '蓟县', '38', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('413', '长安区', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('414', '桥东区', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('415', '桥西区', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('416', '新华区', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('417', '郊区', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('418', '井陉矿区', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('419', '井陉县', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('420', '正定县', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('421', '栾城县', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('422', '行唐县', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('423', '灵寿县', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('424', '高邑县', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('425', '沈泽县', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('426', '赞皇县', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('427', '无极县', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('428', '平山县', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('429', '元氏县', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('430', '赵县', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('431', '辛集市', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('432', '藁城市', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('433', '晋州市', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('434', '新乐市', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('435', '鹿泉市', '39', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('437', '路南区', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('438', '路北区', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('439', '古冶区', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('440', '开平区', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('441', '新区', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('442', '丰润县', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('443', '滦县', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('444', '滦南县', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('445', '乐亭县', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('446', '迁西县', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('447', '玉田县', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('448', '唐海县', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('449', '遵化市', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('450', '丰南市', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('451', '迁安市', '40', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('453', '海港区', '41', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('454', '山海关区', '41', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('455', '北戴河区', '41', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('456', '青龙满族自治县', '41', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('457', '昌黎县', '41', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('458', '抚宁县', '41', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('459', '卢龙县', '41', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('461', '邯山区', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('462', '丛台区', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('463', '复兴区', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('464', '峰峰矿区', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('465', '邯郸县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('466', '临漳县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('467', '成安县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('468', '大名县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('469', '涉县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('470', '磁县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('471', '肥乡县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('472', '永年县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('473', '邱县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('474', '鸡泽县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('475', '广平县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('476', '馆陶县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('477', '魏县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('478', '曲周县', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('479', '武安市', '42', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('481', '桥东区', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('482', '桥西区', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('483', '邢台县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('484', '临城县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('485', '内丘县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('486', '柏乡县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('487', '隆尧县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('488', '任县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('489', '南和县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('490', '宁晋县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('491', '巨鹿县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('492', '新河县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('493', '广宗县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('494', '平乡县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('495', '威县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('496', '清河县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('497', '临西县', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('498', '南宫市', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('499', '沙河市', '43', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('501', '新市区', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('502', '北市区', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('503', '南市区', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('504', '满城县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('505', '清苑县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('506', '涞水县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('507', '阜平县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('508', '徐水县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('509', '定兴县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('510', '唐县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('511', '高阳县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('512', '容城县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('513', '涞源县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('514', '望都县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('515', '安新县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('516', '易县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('517', '曲阳县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('518', '蠡县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('519', '顺平县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('520', '博野县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('521', '雄县', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('522', '涿州市', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('523', '定州市', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('524', '安国市', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('525', '高碑店市', '44', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('527', '桥东区', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('528', '桥西区', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('529', '宣化区', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('530', '下花园区', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('531', '宣化县', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('532', '张北县', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('533', '康保县', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('534', '沽原县', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('535', '尚义县', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('536', '蔚县', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('537', '阳原县', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('538', '怀安县', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('539', '万全县', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('540', '怀来县', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('541', '涿鹿县', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('542', '赤城县', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('543', '崇礼县', '45', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('545', '双桥区', '46', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('546', '双滦区', '46', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('547', '鹰手营子矿区', '46', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('548', '承德县', '46', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('549', '兴隆县', '46', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('550', '平泉县', '46', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('551', '滦平县', '46', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('552', '隆化县', '46', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('553', '丰宁满族自治县', '46', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('554', '宽城满族自治县', '46', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('555', '围场满族蒙古族自治县', '46', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('557', '市区', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('558', '运河区', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('559', '沧县', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('560', '青县', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('561', '东光县', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('562', '海兴县', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('563', '盐山县', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('564', '肃宁县', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('565', '南皮县', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('566', '吴桥县', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('567', '献县', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('568', '孟村回族自治县', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('569', '泊头市', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('570', '任丘市', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('571', '黄骅市', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('572', '河间市', '47', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('574', '安次区', '48', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('575', '固安县', '48', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('576', '永清县', '48', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('577', '香河县', '48', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('578', '大城县', '48', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('579', '文安县', '48', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('580', '大厂回族自治县', '48', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('581', '霸州市', '48', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('582', '三河市', '48', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('584', '桃城区', '49', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('585', '枣强县', '49', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('586', '武邑县', '49', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('587', '武强县', '49', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('588', '饶阳县', '49', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('589', '安平县', '49', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('590', '故城县', '49', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('591', '景县', '49', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('592', '阜城县', '49', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('593', '冀州市', '49', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('594', '深州市', '49', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('596', '小店区', '50', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('597', '迎泽区', '50', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('598', '杏花岭区', '50', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('599', '尖草坪区', '50', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('600', '万柏林区', '50', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('601', '晋源区', '50', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('602', '清徐县', '50', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('603', '阳曲县', '50', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('604', '娄烦县', '50', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('605', '古交市', '50', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('607', '城区', '51', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('608', '矿区', '51', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('609', '南郊区', '51', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('610', '新荣区', '51', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('611', '阳高县', '51', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('612', '天镇县', '51', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('613', '广灵县', '51', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('614', '灵丘县', '51', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('615', '浑源县', '51', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('616', '左云县', '51', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('617', '大同县', '51', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('619', '城区', '52', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('620', '矿区', '52', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('621', '郊区', '52', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('622', '平定县', '52', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('623', '盂县', '52', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('625', '城区', '53', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('626', '郊区', '53', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('627', '长治县', '53', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('628', '襄垣县', '53', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('629', '屯留县', '53', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('630', '平顺县', '53', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('631', '黎城县', '53', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('632', '壶关县', '53', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('633', '长子县', '53', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('634', '武乡县', '53', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('635', '沁县', '53', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('636', '沁源县', '53', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('637', '潞城市', '53', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('639', '城区', '54', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('640', '沁水县', '54', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('641', '阳城县', '54', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('642', '陵川县', '54', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('643', '泽州县', '54', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('644', '高平市', '54', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('646', '朔城区', '55', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('647', '平鲁区', '55', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('648', '山阴县', '55', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('649', '应县', '55', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('650', '右玉县', '55', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('651', '怀仁县', '55', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('652', '忻州市', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('653', '原平市', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('654', '定襄县', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('655', '五台县', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('656', '代县', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('657', '繁峙县', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('658', '宁武县', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('659', '静乐县', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('660', '神池县', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('661', '五寨县', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('662', '苛岚县', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('663', '河曲县', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('664', '保德县', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('665', '偏关县', '56', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('666', '孝义市', '57', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('667', '离石市', '57', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('668', '汾阳市', '57', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('669', '文水市', '57', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('670', '交城县', '57', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('671', '兴县', '57', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('672', '临县', '57', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('673', '柳林县', '57', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('674', '石楼县', '57', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('675', '岚县', '57', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('676', '方山县', '57', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('677', '中阳县', '57', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('678', '交口县', '57', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('679', '榆次市', '58', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('680', '介休市', '58', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('681', '榆社县', '58', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('682', '左权县', '58', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('683', '和顺县', '58', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('684', '昔阳县', '58', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('685', '寿阳县', '58', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('686', '太谷县', '58', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('687', '祁县', '58', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('688', '平遥县', '58', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('689', '灵石县', '58', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('690', '临汾市', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('691', '侯马市', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('692', '霍州市', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('693', '曲沃县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('694', '翼城县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('695', '襄汾县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('696', '洪洞县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('697', '古县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('698', '安泽县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('699', '浮山县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('700', '吉县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('701', '乡宁县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('702', '浦县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('703', '大宁县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('704', '永和县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('705', '隰县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('706', '汾西县', '59', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('707', '运城市', '60', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('708', '永济市', '60', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('709', '河津市', '60', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('710', '芮城县', '60', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('711', '临猗县', '60', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('712', '万荣县', '60', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('713', '新绛县', '60', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('714', '稷山县', '60', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('715', '闻喜县', '60', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('716', '夏县', '60', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('717', '绛县', '60', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('718', '平陆县', '60', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('719', '垣曲县', '60', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('721', '新城区', '61', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('722', '回民区', '61', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('723', '玉泉区', '61', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('724', '赛罕区', '61', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('725', '土默特左旗', '61', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('726', '托克托县', '61', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('727', '和林格尔县', '61', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('728', '清水河县', '61', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('729', '武川县', '61', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('731', '东河区', '62', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('732', '昆都伦区', '62', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('733', '青山区', '62', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('734', '石拐矿区', '62', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('735', '白云矿区', '62', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('736', '九原区', '62', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('737', '土默特右旗', '62', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('738', '固阳县', '62', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('739', '达尔罕茂明安联合旗', '62', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('741', '海勃湾区', '63', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('742', '海南区', '63', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('743', '乌达区', '63', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('745', '红山区', '64', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('746', '元宝山区', '64', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('747', '松山区', '64', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('748', '阿鲁科尔沁旗', '64', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('749', '巴林左旗', '64', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('750', '巴林右旗', '64', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('751', '林西县', '64', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('752', '克什克腾旗', '64', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('753', '翁牛特旗', '64', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('754', '喀喇沁旗', '64', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('755', '宁城县', '64', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('756', '敖汉旗', '64', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('757', '海拉尔市', '65', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('758', '满洲里市', '65', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('759', '扎兰屯市', '65', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('760', '牙克石市', '65', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('761', '根河市', '65', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('762', '额尔古纳市', '65', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('763', '阿荣旗', '65', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('764', '莫力达瓦达斡尔族自治旗', '65', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('765', '鄂伦春自治旗', '65', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('766', '鄂温克族自治旗', '65', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('767', '新巴尔虎右旗', '65', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('768', '新巴尔虎左旗', '65', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('769', '陈巴尔虎旗', '65', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('770', '乌兰浩特市', '66', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('771', '阿尔山市', '66', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('772', '科尔沁右翼前旗', '66', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('773', '科尔沁右翼中旗', '66', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('774', '扎赉特旗', '66', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('775', '突泉县', '66', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('776', '通辽市', '67', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('777', '科尔沁区', '67', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('778', '科尔沁左翼中旗', '67', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('779', '科尔沁左翼后旗', '67', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('780', '开鲁县', '67', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('781', '库伦旗', '67', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('782', '奈曼旗', '67', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('783', '扎鲁特旗', '67', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('784', '二连浩特市', '68', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('785', '锡林浩特市', '68', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('786', '阿巴嘎旗', '68', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('787', '苏尼特左旗', '68', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('788', '苏尼特右旗', '68', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('789', '东乌珠穆沁旗', '68', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('790', '西乌珠穆沁旗', '68', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('791', '太仆寺旗', '68', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('792', '镶黄旗', '68', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('793', '正镶白旗', '68', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('794', '正蓝旗', '68', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('795', '多伦县', '68', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('796', '集宁市', '69', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('797', '丰镇市', '69', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('798', '卓资县', '69', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('799', '化德县', '69', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('800', '商都县', '69', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('801', '兴和县', '69', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('802', '凉城县', '69', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('803', '察哈尔右翼前旗', '69', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('804', '察哈尔右翼中旗', '69', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('805', '察哈尔右翼后旗', '69', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('806', '四子王旗', '69', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('807', '东胜市', '70', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('808', '达拉特旗', '70', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('809', '准格尔旗', '70', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('810', '鄂托克前旗', '70', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('811', '鄂托克旗', '70', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('812', '杭锦旗', '70', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('813', '乌审旗', '70', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('814', '伊金霍洛旗', '70', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('815', '临河市', '71', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('816', '五原县', '71', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('817', '磴口县', '71', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('818', '乌拉特前旗', '71', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('819', '乌拉特中旗', '71', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('820', '乌拉特后旗', '71', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('821', '杭锦后旗', '71', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('822', '阿拉善左旗', '72', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('823', '阿拉善右旗', '72', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('824', '额济纳旗', '72', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('826', '和平区', '73', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('827', '沈河区', '73', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('828', '大东区', '73', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('829', '皇姑区', '73', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('830', '铁西区', '73', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('831', '苏家屯区', '73', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('832', '东陵区', '73', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('833', '新城子区', '73', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('834', '于洪区', '73', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('835', '辽中县', '73', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('836', '康平县', '73', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('837', '法库县', '73', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('838', '新民市', '73', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('840', '中山区', '74', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('841', '西岗区', '74', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('842', '沙河口区', '74', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('843', '甘井子区', '74', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('844', '旅顺口区', '74', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('845', '金州区', '74', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('846', '长海县', '74', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('847', '瓦房店市', '74', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('848', '普兰店市', '74', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('849', '庄河市', '74', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('851', '铁东区', '75', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('852', '铁西区', '75', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('853', '立山区', '75', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('854', '千山区', '75', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('855', '台安县', '75', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('856', '岫岩满族自治县', '75', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('857', '海城市', '75', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('859', '新抚区', '76', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('860', '露天区', '76', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('861', '望花区', '76', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('862', '顺城区', '76', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('863', '抚顺县', '76', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('864', '新宾满族自治区', '76', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('865', '清原满族自治区', '76', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('867', '平山区', '77', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('868', '溪湖区', '77', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('869', '明山区', '77', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('870', '南芬区', '77', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('871', '本溪满族自治县', '77', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('872', '桓仁满族自治县', '77', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('874', '元宝区', '78', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('875', '振兴区', '78', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('876', '振安区', '78', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('877', '宽甸满族自治县', '78', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('878', '东港市', '78', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('879', '凤城市', '78', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('881', '古塔区', '79', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('882', '凌河区', '79', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('883', '太河区', '79', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('884', '黑山县', '79', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('885', '义县', '79', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('886', '凌海市', '79', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('887', '北宁市', '79', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('889', '站前区', '80', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('890', '西市区', '80', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('891', '鲅鱼圈区', '80', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('892', '老边区', '80', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('893', '盖州市', '80', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('894', '大石桥市', '80', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('896', '海州区', '81', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('897', '新邱区', '81', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('898', '太平区', '81', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('899', '清河门区', '81', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('900', '细河区', '81', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('901', '阜新蒙古族自治县', '81', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('902', '彰武县', '81', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('904', '白塔区', '82', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('905', '文圣区', '82', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('906', '宏伟区', '82', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('907', '弓长岭区', '82', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('908', '太子河区', '82', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('909', '辽阳县', '82', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('910', '灯塔市', '82', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('912', '双台子区', '83', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('913', '兴隆台区', '83', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('914', '大洼县', '83', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('915', '盘山县', '83', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('917', '银州区', '84', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('918', '清河区', '84', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('919', '铁岭县', '84', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('920', '西丰县', '84', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('921', '昌图县', '84', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('922', '铁法市', '84', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('923', '开原市', '84', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('925', '双塔区', '85', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('926', '龙城区', '85', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('927', '朝阳县', '85', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('928', '建平县', '85', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('929', '喀喇沁左翼蒙古族自治县', '85', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('930', '北票市', '85', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('931', '凌源市', '85', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('933', '连山区', '86', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('934', '龙港区', '86', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('935', '南票区', '86', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('936', '绥中县', '86', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('937', '建昌县', '86', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('938', '兴城市', '86', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('940', '南关区', '87', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('941', '宽城区', '87', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('942', '朝阳区', '87', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('943', '二道区', '87', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('944', '绿园区', '87', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('945', '双阳区', '87', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('946', '农安县', '87', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('947', '九台市', '87', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('948', '榆树市', '87', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('949', '德惠市', '87', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('951', '昌邑区', '88', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('952', '龙潭区', '88', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('953', '船营区', '88', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('954', '丰满区', '88', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('955', '永吉县', '88', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('956', '蛟河市', '88', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('957', '桦甸市', '88', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('958', '舒兰市', '88', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('959', '磐石市', '88', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('961', '铁西区', '89', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('962', '铁东区', '89', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('963', '梨树县', '89', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('964', '伊通满族自治县', '89', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('965', '公主岭市', '89', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('966', '双辽市', '89', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('968', '龙山区', '90', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('969', '西安区', '90', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('970', '东丰县', '90', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('971', '东辽县', '90', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('973', '东昌区', '91', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('974', '二道江区', '91', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('975', '通化县', '91', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('976', '辉南县', '91', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('977', '柳河县', '91', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('978', '梅河口市', '91', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('979', '集安市', '91', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('981', '八道江区', '92', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('982', '抚松县', '92', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('983', '靖宇县', '92', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('984', '长白朝县族自治县', '92', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('985', '江源县', '92', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('986', '临江市', '92', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('988', '宁江区', '93', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('989', '前郭尔罗斯蒙古族自治县', '93', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('990', '长岭县', '93', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('991', '乾安县', '93', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('992', '扶余县', '93', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('994', '洮北区', '94', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('995', '镇赉县', '94', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('996', '通榆县', '94', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('997', '洮南市', '94', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('998', '大安市', '94', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('999', '延吉市', '95', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1000', '图们市', '95', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1001', '敦化市', '95', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1002', '珲春市', '95', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1003', '龙井市', '95', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1004', '和龙市', '95', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1005', '汪清县', '95', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1006', '安图县', '95', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1008', '道里区', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1009', '南岗区', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1010', '道外区', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1011', '太平区', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1012', '香坊区', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1013', '动力区', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1014', '平房区', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1015', '呼兰县', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1016', '依兰县', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1017', '方正县', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1018', '宾县', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1019', '巴彦县', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1020', '木兰县', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1021', '通河县', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1022', '延寿县', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1023', '阿城市', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1024', '双城市', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1025', '尚志市', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1026', '五常市', '96', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1028', '龙沙区', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1029', '建华区', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1030', '铁峰区', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1031', '昂昂溪区', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1032', '富拉尔基区', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1033', '碾子山区', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1034', '梅里斯达斡尔族', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1035', '龙江县', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1036', '依安县', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1037', '泰来县', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1038', '甘南县', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1039', '富裕县', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1040', '克山县', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1041', '克东县', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1042', '拜泉县', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1043', '讷河市', '97', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1045', '鸡冠区', '98', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1046', '恒山区', '98', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1047', '滴道区', '98', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1048', '梨树区', '98', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1049', '城子河区', '98', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1050', '麻山区', '98', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1051', '鸡东县', '98', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1052', '虎林市', '98', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1053', '密山市', '98', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1055', '向阳区', '99', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1056', '工农区', '99', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1057', '南山区', '99', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1058', '兴安区', '99', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1059', '东山区', '99', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1060', '兴山区', '99', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1061', '萝北县', '99', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1062', '绥宾县', '99', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1064', '尖山区', '100', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1065', '岭东区', '100', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1066', '四方台区', '100', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1067', '宝山区', '100', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1068', '集贤县', '100', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1069', '友谊县', '100', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1070', '宝清县', '100', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1071', '饶河县', '100', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1073', '萨尔图区', '101', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1074', '龙凤区', '101', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1075', '让胡路区', '101', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1076', '红岗区', '101', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1077', '大同区', '101', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1078', '肇州县', '101', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1079', '肇源县', '101', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1080', '林甸县', '101', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1081', '杜尔伯特蒙古族自治县', '101', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1083', '伊春区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1084', '南岔区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1085', '友好区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1086', '西林区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1087', '翠峦区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1088', '新青区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1089', '美溪区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1090', '金山屯区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1091', '五营区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1092', '乌马河区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1093', '汤旺河区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1094', '带岭区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1095', '乌伊岭区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1096', '红星区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1097', '上甘岭区', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1098', '嘉阴县', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1099', '铁力市', '102', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1101', '永红区', '103', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1102', '向阳区', '103', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1103', '前进区', '103', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1104', '东风区', '103', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1105', '郊区', '103', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1106', '桦南县', '103', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1107', '桦川县', '103', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1108', '汤原县', '103', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1109', '抚远县', '103', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1110', '同江市', '103', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1111', '富锦市', '103', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1113', '新兴区', '104', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1114', '桃山区', '104', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1115', '茄子河区', '104', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1116', '勃利县', '104', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1118', '东安区', '105', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1119', '阳明区', '105', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1120', '爱民区', '105', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1121', '西安区', '105', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1122', '东宁县', '105', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1123', '林口县', '105', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1124', '绥芬河市', '105', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1125', '海林市', '105', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1126', '宁安市', '105', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1127', '穆棱市', '105', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1129', '爱辉区', '106', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1130', '嫩江县', '106', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1131', '逊克县', '106', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1132', '孙吴县', '106', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1133', '北安市', '106', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1134', '五大连池市', '106', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1135', '绥化市', '107', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1136', '安达市', '107', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1137', '肇东市', '107', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1138', '海伦市', '107', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1139', '望奎县', '107', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1140', '兰西县', '107', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1141', '青冈县', '107', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1142', '庆安县', '107', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1143', '明水县', '107', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1144', '绥棱县', '107', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1145', '呼玛县', '108', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1146', '塔河县', '108', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1147', '漠河县', '108', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1148', '黄浦区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1149', '卢湾区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1150', '徐汇区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1151', '长宁区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1152', '静安区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1153', '普陀区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1154', '闸北区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1155', '虹口区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1156', '杨浦区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1157', '闵行区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1158', '宝山区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1159', '嘉定区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1160', '浦东新区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1161', '金山区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1162', '松江区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1163', '南汇区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1164', '奉贤区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1165', '青浦区', '109', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1166', '崇明县', '110', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1168', '玄武区', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1169', '白下区', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1170', '秦淮区', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1171', '建邺区', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1172', '鼓楼区', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1173', '下关区', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1174', '浦口区', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1175', '大厂区', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1176', '栖霞区', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1177', '雨花台区', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1178', '江宁县', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1179', '江浦县', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1180', '六合县', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1181', '溧水县', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1182', '高淳县', '111', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1184', '崇安区', '112', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1185', '南长区', '112', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1186', '北塘区', '112', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1187', '郊区', '112', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1188', '马山区', '112', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1189', '江阴市', '112', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1190', '宜兴市', '112', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1191', '锡山市', '112', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1193', '鼓楼区', '113', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1194', '云龙区', '113', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1195', '九里区', '113', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1196', '贾汪区', '113', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1197', '泉山区', '113', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1198', '丰县', '113', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1199', '沛县', '113', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1200', '铜山县', '113', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1201', '睢宁县', '113', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1202', '新沂市', '113', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1203', '邳州市', '113', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1205', '天宁区', '114', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1206', '钟楼区', '114', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1207', '戚墅堰区', '114', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1208', '郊区', '114', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1209', '溧阳市', '114', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1210', '金坛市', '114', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1211', '武进市', '114', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1213', '沧浪区', '115', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1214', '平江区', '115', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1215', '金阊区', '115', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1216', '郊区', '115', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1217', '常熟市', '115', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1218', '张家港市', '115', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1219', '昆山市', '115', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1220', '吴江市', '115', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1221', '太仓市', '115', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1222', '吴县市', '115', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1224', '崇川区', '116', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1225', '港闸区', '116', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1226', '海安县', '116', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1227', '如东县', '116', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1228', '启东市', '116', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1229', '如皋市', '116', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1230', '通州市', '116', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1231', '海门市', '116', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1233', '连云区', '117', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1234', '云台区', '117', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1235', '新浦区', '117', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1236', '海州区', '117', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1237', '赣榆县', '117', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1238', '东海县', '117', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1239', '灌云县', '117', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1240', '灌南县', '117', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1242', '清河区', '118', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1243', '清浦区', '118', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1244', '淮阴县', '118', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1245', '涟水县', '118', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1246', '洪泽县', '118', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1247', '盱眙县', '118', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1248', '金湖县', '118', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1249', '淮安市', '118', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1251', '城区', '119', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1252', '响水县', '119', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1253', '滨海县', '119', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1254', '阜宁县', '119', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1255', '射阳县', '119', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1256', '建湖县', '119', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1257', '盐都县', '119', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1258', '东台市', '119', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1259', '大丰市', '119', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1261', '广陵区', '120', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1262', '郊区', '120', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1263', '宝应县', '120', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1264', '邗江县', '120', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1265', '仪征市', '120', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1266', '高邮市', '120', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1267', '江都市', '120', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1269', '东口区', '121', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1270', '润州区', '121', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1271', '丹徒县', '121', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1272', '丹阳市', '121', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1273', '扬中市', '121', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1274', '句容市', '121', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1276', '海陵区', '122', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1277', '高港区', '122', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1278', '兴化市', '122', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1279', '靖江市', '122', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1280', '泰兴市', '122', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1281', '姜堰市', '122', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1283', '宿城区', '123', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1284', '宿豫区', '123', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1285', '沭阳县', '123', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1286', '泗阳县', '123', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1287', '泗洪县', '123', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1289', '上城区', '124', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1290', '下城区', '124', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1291', '江干区', '124', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1292', '拱墅区', '124', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1293', '西湖区', '124', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1294', '滨江区', '124', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1295', '桐庐县', '124', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1296', '淳安县', '124', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1297', '萧山市', '124', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1298', '建德市', '124', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1299', '富阳市', '124', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1300', '余杭市', '124', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1301', '临安市', '124', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1303', '海曙区', '125', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1304', '江东区', '125', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1305', '江北区', '125', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1306', '北仑区', '125', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1307', '镇海区', '125', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1308', '象山县', '125', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1309', '宁海县', '125', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1310', '鄞县', '125', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1311', '余姚市', '125', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1312', '慈溪市', '125', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1313', '奉化市', '125', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1315', '鹿城区', '126', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1316', '龙湾区', '126', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1317', '瓯海区', '126', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1318', '洞头县', '126', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1319', '永嘉县', '126', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1320', '平阳县', '126', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1321', '苍南县', '126', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1322', '文成县', '126', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1323', '泰顺县', '126', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1324', '瑞安市', '126', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1325', '乐清市', '126', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1327', '秀城区', '127', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1328', '郊区', '127', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1329', '嘉善县', '127', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1330', '海盐县', '127', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1331', '海宁市', '127', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1332', '平湖市', '127', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1333', '桐乡市', '127', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1335', '德清县', '128', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1336', '长兴县', '128', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1337', '安吉县', '128', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1339', '越城区', '129', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1340', '绍兴县', '129', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1341', '新昌县', '129', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1342', '诸暨市', '129', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1343', '上虞市', '129', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1344', '嵊州市', '129', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1346', '婺城区', '130', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1347', '金华县', '130', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1348', '武义县', '130', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1349', '浦江县', '130', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1350', '磐安县', '130', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1351', '兰溪市', '130', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1352', '义乌市', '130', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1353', '东阳市', '130', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1354', '永康市', '130', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1356', '柯城区', '131', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1357', '衢县', '131', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1358', '常山县', '131', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1359', '开化县', '131', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1360', '龙游县', '131', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1361', '江山市', '131', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1363', '定海区', '132', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1364', '普陀区', '132', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1365', '岱山县', '132', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1366', '嵊泗县', '132', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1368', '椒江区', '133', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1369', '黄岩区', '133', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1370', '路桥区', '133', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1371', '玉环县', '133', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1372', '三门县', '133', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1373', '天台县', '133', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1374', '仙居县', '133', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1375', '温岭市', '133', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1376', '临海市', '133', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1377', '丽水市', '134', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1378', '龙泉市', '134', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1379', '青田县', '134', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1380', '云和县', '134', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1381', '庆元县', '134', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1382', '缙云县', '134', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1383', '遂昌县', '134', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1384', '松阳县', '134', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1385', '景宁畲族自治县', '134', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1387', '东市区', '135', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1388', '中市区', '135', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1389', '西市区', '135', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1390', '郊区', '135', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1391', '长丰县', '135', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1392', '肥东县', '135', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1393', '肥西县', '135', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1395', '镜湖区', '136', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1396', '马塘区', '136', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1397', '新芜区', '136', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1398', '鸠江区', '136', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1399', '芜湖县', '136', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1400', '繁昌县', '136', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1401', '南陵县', '136', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1403', '东市区', '137', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1404', '中市区', '137', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1405', '西市区', '137', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1406', '郊区', '137', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1407', '怀远县', '137', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1408', '五河县', '137', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1409', '固镇县', '137', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1411', '大通区', '138', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1412', '田家庵区', '138', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1413', '谢家集区', '138', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1414', '八公山区', '138', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1415', '潘集区', '138', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1416', '凤台区', '138', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1418', '金家庄区', '139', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1419', '花山区', '139', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1420', '雨山区', '139', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1421', '向山区', '139', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1422', '当涂县', '139', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1424', '杜集区', '140', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1425', '相山区', '140', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1426', '烈山区', '140', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1427', '濉溪县', '140', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1429', '铜官山区', '141', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1430', '狮子山区', '141', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1431', '郊区', '141', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1432', '铜陵县', '141', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1434', '迎江区', '142', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1435', '大观区', '142', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1436', '郊区', '142', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1437', '怀宁县', '142', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1438', '枞阳县', '142', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1439', '潜山县', '142', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1440', '太湖县', '142', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1441', '宿松县', '142', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1442', '望江县', '142', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1443', '岳西县', '142', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1444', '桐城市', '142', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1446', '屯溪区', '143', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1447', '黄山区', '143', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1448', '徽州区', '143', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1449', '歙县', '143', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1450', '休宁县', '143', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1451', '黟县', '143', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1452', '祁门县', '143', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1454', '琅琊区', '144', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1455', '南谯区', '144', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1456', '来安县', '144', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1457', '全椒县', '144', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1458', '定远县', '144', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1459', '凤阳县', '144', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1460', '天长市', '144', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1461', '明光市', '144', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1463', '颖州区', '145', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1464', '颖东区', '145', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1465', '颖泉区', '145', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1466', '临泉县', '145', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1467', '太和县', '145', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1468', '涡阳县', '145', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1469', '蒙城县', '145', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1470', '阜南县', '145', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1471', '颖上县', '145', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1472', '利辛县', '145', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1473', '亳州市', '145', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1474', '界首市', '145', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1476', '墉桥区', '146', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1477', '砀山县', '146', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1478', '萧县', '146', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1479', '灵璧县', '146', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1480', '泗县', '146', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1481', '六安市', '147', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1482', '寿县', '147', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1483', '霍邱县', '147', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1484', '舒城县', '147', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1485', '金寨县', '147', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1486', '霍山县', '147', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1487', '宣州市', '148', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1488', '宁国市', '148', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1489', '郎溪县', '148', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1490', '广德县', '148', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1491', '泾县', '148', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1492', '旌德县', '148', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1493', '绩溪县', '148', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1494', '巢湖市', '149', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1495', '庐江县', '149', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1496', '无为县', '149', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1497', '含山县', '149', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1498', '和县', '149', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1499', '贵池市', '150', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1500', '东至县', '150', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1501', '石台县', '150', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1502', '青阳县', '150', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1504', '鼓楼区', '151', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1505', '台江区', '151', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1506', '仓山区', '151', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1507', '马尾区', '151', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1508', '晋安区', '151', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1509', '闽侯县', '151', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1510', '连江县', '151', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1511', '罗源县', '151', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1512', '闽清县', '151', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1513', '永泰县', '151', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1514', '平潭县', '151', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1515', '福清市', '151', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1516', '长乐市', '151', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1518', '鼓浪屿区', '152', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1519', '思明区', '152', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1520', '开元区', '152', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1521', '杏林区', '152', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1522', '湖里区', '152', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1523', '集美区', '152', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1524', '同安区', '152', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1526', '城厢区', '153', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1527', '涵江区', '153', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1528', '莆田县', '153', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1529', '仙游县', '153', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1531', '梅列区', '154', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1532', '三元区', '154', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1533', '明溪县', '154', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1534', '清流县', '154', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1535', '宁化县', '154', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1536', '大田县', '154', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1537', '尤溪县', '154', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1538', '沙县', '154', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1539', '将乐县', '154', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1540', '泰宁县', '154', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1541', '建宁县', '154', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1542', '永安市', '154', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1544', '鲤城区', '155', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1545', '丰泽区', '155', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1546', '洛江区', '155', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1547', '惠安县', '155', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1548', '安溪县', '155', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1549', '永春县', '155', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1550', '德化县', '155', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1551', '金门县', '155', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1552', '石狮市', '155', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1553', '晋江市', '155', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1554', '南安市', '155', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1556', '芗城区', '156', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1557', '龙文区', '156', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1558', '云霄县', '156', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1559', '漳浦县', '156', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1560', '诏安县', '156', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1561', '长泰县', '156', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1562', '东山县', '156', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1563', '南靖县', '156', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1564', '平和县', '156', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1565', '华安县', '156', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1566', '龙海市', '156', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1568', '延平区', '157', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1569', '顺昌县', '157', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1570', '浦城县', '157', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1571', '光泽县', '157', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1572', '松溪县', '157', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1573', '政和县', '157', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1574', '邵武市', '157', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1575', '武夷山市', '157', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1576', '建瓯市', '157', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1577', '建阳市', '157', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1579', '新罗区', '158', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1580', '长汀县', '158', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1581', '永定县', '158', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1582', '上杭县', '158', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1583', '武平县', '158', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1584', '连城县', '158', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1585', '漳平市', '158', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1586', '宁德市', '159', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1587', '福安市', '159', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1588', '福鼎市', '159', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1589', '霞浦县', '159', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1590', '古田县', '159', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1591', '屏南县', '159', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1592', '寿宁县', '159', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1593', '周宁县', '159', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1594', '柘荣县', '159', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1596', '东湖区', '160', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1597', '西湖区', '160', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1598', '青云谱区', '160', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1599', '湾里区', '160', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1600', '郊区', '160', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1601', '南昌县', '160', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1602', '新建县', '160', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1603', '安义县', '160', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1604', '进贤县', '160', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1606', '昌江区', '161', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1607', '珠山区', '161', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1608', '浮梁县', '161', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1609', '乐平市', '161', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1611', '安源区', '162', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1612', '湘东区', '162', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1613', '莲花县', '162', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1614', '上栗县', '162', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1615', '芦溪县', '162', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1617', '庐山区', '163', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1618', '浔阳区', '163', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1619', '九江县', '163', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1620', '武宁县', '163', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1621', '修水县', '163', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1622', '永修县', '163', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1623', '德安县', '163', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1624', '星子县', '163', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1625', '都昌县', '163', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1626', '湖口县', '163', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1627', '彭泽县', '163', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1628', '瑞昌市', '163', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1630', '渝水区', '164', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1631', '分宜县', '164', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1633', '章贡区', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1634', '赣县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1635', '信丰县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1636', '大余县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1637', '上犹县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1638', '崇义县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1639', '安远县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1640', '龙南县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1641', '定南县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1642', '全南县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1643', '宁都县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1644', '于都县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1645', '兴国县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1646', '会昌县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1647', '寻乌县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1648', '石城县', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1649', '瑞金市', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1650', '南康市', '165', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1651', '宜春市', '166', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1652', '丰城市', '166', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1653', '樟树市', '166', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1654', '高安市', '166', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1655', '奉新县', '166', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1656', '万载县', '166', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1657', '上高县', '166', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1658', '宜丰县', '166', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1659', '靖安县', '166', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1660', '铜鼓县', '166', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1661', '上饶市', '167', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1662', '德兴市', '167', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1663', '上饶县', '167', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1664', '广丰县', '167', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1665', '玉山县', '167', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1666', '铅山县', '167', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1667', '横峰县', '167', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1668', '弋阳县', '167', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1669', '余干县', '167', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1670', '波阳县', '167', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1671', '万年县', '167', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1672', '婺源县', '167', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1673', '吉安市', '168', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1674', '井冈山市', '168', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1675', '吉安县', '168', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1676', '吉水县', '168', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1677', '峡江县', '168', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1678', '新干县', '168', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1679', '永丰县', '168', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1680', '泰和县', '168', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1681', '遂川县', '168', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1682', '万安县', '168', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1683', '安福县', '168', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1684', '永新县', '168', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1685', '宁冈县', '168', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1686', '临川市', '169', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1687', '南城县', '169', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1688', '黎川县', '169', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1689', '南丰县', '169', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1690', '崇仁县', '169', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1691', '乐安县', '169', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1692', '宜黄县', '169', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1693', '金溪县', '169', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1694', '资溪县', '169', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1695', '东乡县', '169', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1696', '广昌县', '169', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1698', '历下区', '170', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1699', '市中区', '170', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1700', '槐荫区', '170', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1701', '天桥区', '170', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1702', '历城区', '170', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1703', '长清县', '170', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1704', '平阴县', '170', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1705', '济阳县', '170', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1706', '商河县', '170', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1707', '章丘市', '170', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1709', '市南区', '171', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1710', '市北区', '171', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1711', '四方区', '171', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1712', '黄岛区', '171', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1713', '崂山区', '171', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1714', '李沧区', '171', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1715', '城阳区', '171', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1716', '胶州市', '171', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1717', '即墨市', '171', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1718', '平度市', '171', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1719', '胶南市', '171', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1720', '莱西市', '171', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1722', '淄川区', '172', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1723', '张店区', '172', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1724', '博山区', '172', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1725', '临淄区', '172', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1726', '周村区', '172', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1727', '桓台县', '172', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1728', '高青县', '172', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1729', '沂源县', '172', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1731', '市中区', '173', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1732', '薛城区', '173', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1733', '峄城区', '173', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1734', '台儿庄区', '173', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1735', '山亭区', '173', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1736', '滕州市', '173', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1738', '东营区', '174', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1739', '河口区', '174', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1740', '垦利县', '174', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1741', '利津县', '174', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1742', '广饶县', '174', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1744', '芝罘区', '175', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1745', '福山区', '175', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1746', '牟平区', '175', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1747', '莱山区', '175', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1748', '长岛县', '175', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1749', '龙口市', '175', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1750', '莱阳市', '175', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1751', '莱州市', '175', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1752', '蓬莱市', '175', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1753', '招远市', '175', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1754', '栖霞市', '175', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1755', '海阳市', '175', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1757', '潍城区', '176', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1758', '寒亭区', '176', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1759', '坊子区', '176', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1760', '奎文区', '176', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1761', '临朐县', '176', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1762', '昌乐县', '176', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1763', '青州市', '176', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1764', '诸城市', '176', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1765', '寿光市', '176', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1766', '安丘市', '176', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1767', '高密市', '176', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1768', '昌邑市', '176', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1770', '市中区', '177', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1771', '任城区', '177', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1772', '微山县', '177', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1773', '鱼台县', '177', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1774', '金乡县', '177', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1775', '嘉祥县', '177', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1776', '汶上县', '177', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1777', '泗水县', '177', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1778', '梁山县', '177', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1779', '曲阜市', '177', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1780', '兖州市', '177', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1781', '邹城市', '177', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1783', '泰山区', '178', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1784', '郊区', '178', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1785', '宁阳县', '178', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1786', '东平县', '178', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1787', '新泰市', '178', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1788', '肥城市', '178', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1790', '环翠区', '179', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1791', '文登市', '179', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1792', '荣城市', '179', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1793', '乳山市', '179', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1795', '东港区', '180', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1796', '五莲县', '180', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1797', '莒县', '180', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1799', '莱城区', '181', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1800', '钢城区', '181', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1802', '兰山区', '182', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1803', '罗庄区', '182', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1804', '河东区', '182', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1805', '沂南县', '182', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1806', '郯城县', '182', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1807', '沂水县', '182', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1808', '苍山县', '182', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1809', '费县', '182', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1810', '平邑县', '182', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1811', '莒南县', '182', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1812', '蒙阴县', '182', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1813', '临沭县', '182', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1815', '德城区', '183', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1816', '陵县', '183', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1817', '宁津县', '183', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1818', '庆云县', '183', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1819', '临邑县', '183', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1820', '齐河县', '183', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1821', '平原县', '183', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1822', '夏津县', '183', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1823', '武城县', '183', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1824', '乐陵市', '183', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1825', '禹城市', '183', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1827', '东昌府区', '184', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1828', '阳谷县', '184', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1829', '莘县', '184', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1830', '茌平县', '184', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1831', '东阿县', '184', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1832', '冠县', '184', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1833', '高唐县', '184', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1834', '临清市', '184', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1835', '滨州市', '185', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1836', '惠民县', '185', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1837', '阳信县', '185', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1838', '无棣县', '185', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1839', '沾化县', '185', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1840', '博兴县', '185', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1841', '邹平县', '185', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1842', '菏泽市', '186', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1843', '曹县', '186', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1844', '定陶县', '186', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1845', '成武县', '186', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1846', '单县', '186', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1847', '巨野县', '186', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1848', '郓城县', '186', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1849', '鄄城县', '186', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1850', '东明县', '186', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1852', '中原区', '187', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1853', '二七区', '187', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1854', '管城回族区', '187', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1855', '金水区', '187', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1856', '上街区', '187', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1857', '邙山区', '187', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1858', '中牟县', '187', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1859', '巩义市', '187', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1860', '荥阳市', '187', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1861', '新密市', '187', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1862', '新郑市', '187', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1863', '登丰市', '187', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1865', '龙亭区', '188', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1866', '顺河回族区', '188', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1867', '鼓楼区', '188', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1868', '南关区', '188', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1869', '郊区', '188', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1870', '杞县', '188', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1871', '通许县', '188', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1872', '尉氏县', '188', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1873', '开封县', '188', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1874', '兰考县', '188', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1876', '老城区', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1877', '西工区', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1878', '壥河回族区', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1879', '涧西区', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1880', '吉利区', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1881', '郊区', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1882', '孟津县', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1883', '新安县', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1884', '栾川县', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1885', '嵩县', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1886', '汝阳县', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1887', '宜阳县', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1888', '洛宁县', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1889', '伊川县', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1890', '偃师市', '189', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1892', '新华区', '190', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1893', '卫东区', '190', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1894', '石龙区', '190', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1895', '湛河区', '190', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1896', '宝丰县', '190', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1897', '叶县', '190', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1898', '鲁山县', '190', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1899', '郏县', '190', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1900', '舞钢市', '190', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1901', '汝州市', '190', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1903', '文峰区', '191', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1904', '北关区', '191', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1905', '铁西区', '191', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1906', '郊区', '191', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1907', '安阳县', '191', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1908', '汤阴县', '191', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1909', '滑县', '191', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1910', '内黄县', '191', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1911', '林州市', '191', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1913', '鹤山区', '192', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1914', '山城区', '192', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1915', '郊区', '192', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1916', '浚县', '192', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1917', '淇县', '192', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1919', '红旗区', '193', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1920', '新华区', '193', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1921', '北站区', '193', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1922', '郊区', '193', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1923', '新乡县', '193', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1924', '获嘉县', '193', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1925', '原阳县', '193', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1926', '延津县', '193', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1927', '封丘县', '193', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1928', '长垣县', '193', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1929', '卫辉市', '193', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1930', '辉县市', '193', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1932', '解放区', '194', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1933', '中站区', '194', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1934', '马村区', '194', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1935', '山阳区', '194', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1936', '修武县', '194', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1937', '博爱县', '194', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1938', '武陟县', '194', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1939', '温县', '194', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1940', '济源市', '194', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1941', '沁阳市', '194', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1942', '孟州市', '194', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1944', '市区', '195', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1945', '清丰县', '195', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1946', '南乐县', '195', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1947', '范县', '195', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1948', '台前县', '195', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1949', '濮阳县', '195', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1951', '魏都区', '196', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1952', '许昌县', '196', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1953', '鄢陵县', '196', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1954', '襄城县', '196', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1955', '禹州市', '196', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1956', '长葛市', '196', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1958', '源汇区', '197', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1959', '舞阳县', '197', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1960', '临颍县', '197', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1961', '郾城县', '197', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1963', '湖滨区', '198', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1964', '渑池县', '198', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1965', '陕县', '198', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1966', '卢氏县', '198', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1967', '义马市', '198', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1968', '灵宝市', '198', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1970', '宛城区', '199', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1971', '卧龙区', '199', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1972', '南召县', '199', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1973', '方城县', '199', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1974', '西峡县', '199', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1975', '镇平县', '199', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1976', '内乡县', '199', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1977', '淅川县', '199', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1978', '社旗县', '199', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1979', '唐河县', '199', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1980', '新野县', '199', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1981', '桐柏县', '199', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1982', '邓州市', '199', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1984', '梁园区', '200', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1985', '睢阳区', '200', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1986', '民权县', '200', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1987', '睢县', '200', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1988', '宁陵县', '200', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1989', '柘城县', '200', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1990', '虞城县', '200', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1991', '夏邑县', '200', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1992', '永城市', '200', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1994', '浉河区', '201', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1995', '平桥区', '201', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1996', '罗山县', '201', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1997', '光山县', '201', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1998', '新县', '201', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('1999', '商城县', '201', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2000', '固始县', '201', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2001', '潢川县', '201', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2002', '淮滨县', '201', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2003', '息县', '201', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2004', '周口市', '202', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2005', '项城市', '202', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2006', '扶沟县', '202', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2007', '西华县', '202', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2008', '商水县', '202', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2009', '太康县', '202', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2010', '鹿邑县', '202', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2011', '郸城县', '202', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2012', '淮阳县', '202', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2013', '沈丘县', '202', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2014', '驻马店市', '203', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2015', '确山县', '203', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2016', '泌阳县', '203', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2017', '遂平县', '203', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2018', '西平县', '203', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2019', '上蔡县', '203', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2020', '汝南县', '203', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2021', '平舆县', '203', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2022', '新蔡县', '203', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2023', '正阳县', '203', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2025', '江岸区', '204', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2026', '江汉区', '204', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2027', '硚口区', '204', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2028', '汉阳区', '204', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2029', '武昌区', '204', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2030', '青山区', '204', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2031', '洪山区', '204', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2032', '东西湖区', '204', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2033', '汉南区', '204', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2034', '蔡甸区', '204', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2035', '江夏区', '204', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2036', '黄陂区', '204', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2037', '新洲区', '204', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2039', '黄石港区', '205', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2040', '石灰窑区', '205', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2041', '下陆区', '205', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2042', '铁山区', '205', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2043', '阳新县', '205', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2044', '大冶市', '205', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2046', '茅箭区', '206', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2047', '张湾区', '206', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2048', '郧县', '206', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2049', '郧西县', '206', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2050', '竹山县', '206', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2051', '竹溪县', '206', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2052', '房县', '206', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2053', '丹江口市', '206', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2055', '西陵区', '207', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2056', '伍家岗区', '207', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2057', '点军区', '207', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2058', '猇亭区', '207', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2059', '宜昌县', '207', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2060', '远安县', '207', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2061', '兴山县', '207', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2062', '秭归县', '207', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2063', '长阳土家族自治县', '207', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2064', '五峰土家族自治县', '207', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2065', '宜都市', '207', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2066', '当阳市', '207', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2067', '枝江市', '207', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2069', '襄城区', '208', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2070', '樊城区', '208', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2071', '襄阳县', '208', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2072', '南漳县', '208', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2073', '谷城县', '208', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2074', '保康县', '208', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2075', '老河口市', '208', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2076', '枣阳市', '208', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2077', '宜城市', '208', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2079', '梁子湖区', '209', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2080', '华容区', '209', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2081', '鄂城区', '209', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2083', '东宝区', '210', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2084', '京山县', '210', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2085', '沙洋县', '210', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2086', '钟祥县', '210', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2088', '孝南区', '211', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2089', '孝昌县', '211', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2090', '大悟县', '211', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2091', '云梦县', '211', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2092', '应城市', '211', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2093', '安陆市', '211', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2094', '广水市', '211', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2095', '汉川市', '211', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2097', '沙市区', '212', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2098', '荆州区', '212', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2099', '公安县', '212', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2100', '监利县', '212', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2101', '江陵县', '212', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2102', '石首市', '212', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2103', '洪湖市', '212', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2104', '松滋市', '212', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2106', '黄州区', '213', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2107', '团风县', '213', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2108', '红安县', '213', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2109', '罗田县', '213', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2110', '英山县', '213', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2111', '浠水县', '213', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2112', '蕲春县', '213', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2113', '黄梅县', '213', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2114', '麻城市', '213', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2115', '武穴市', '213', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2117', '咸安区', '214', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2118', '嘉鱼县', '214', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2119', '通城县', '214', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2120', '崇阳县', '214', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2121', '通山县', '214', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2122', '赤壁市', '214', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2123', '恩施市', '215', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2124', '利川市', '215', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2125', '建始县', '215', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2126', '巴东县', '215', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2127', '宣恩县', '215', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2128', '咸丰县', '215', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2129', '来凤县', '215', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2130', '鹤峰县', '215', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2131', '随州市', '216', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2132', '仙桃市', '216', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2133', '潜江市', '216', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2134', '天门市', '216', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2135', '神农架林区', '216', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2137', '芙蓉区', '217', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2138', '天心区', '217', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2139', '岳麓区', '217', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2140', '开福区', '217', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2141', '雨花区', '217', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2142', '长沙县', '217', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2143', '望城县', '217', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2144', '宁乡县', '217', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2145', '浏阳市', '217', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2147', '荷塘区', '218', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2148', '芦淞区', '218', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2149', '石峰区', '218', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2150', '天元区', '218', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2151', '株洲县', '218', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2152', '攸县', '218', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2153', '茶陵县', '218', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2154', '炎陵县', '218', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2155', '醴陵市', '218', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2157', '雨湖区', '219', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2158', '岳塘区', '219', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2159', '湘潭县', '219', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2160', '湘乡市', '219', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2161', '韶山市', '219', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2163', '江东区', '220', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2164', '城南区', '220', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2165', '城北区', '220', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2166', '郊区', '220', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2167', '南岳区', '220', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2168', '衡阳县', '220', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2169', '衡南县', '220', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2170', '衡山县', '220', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2171', '衡东县', '220', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2172', '祁东县', '220', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2173', '耒阳市', '220', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2174', '常宁市', '220', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2176', '双清区', '221', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2177', '大祥区', '221', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2178', '北塔区', '221', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2179', '邵东县', '221', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2180', '新邵县', '221', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2181', '邵阳县', '221', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2182', '隆回县', '221', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2183', '洞口县', '221', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2184', '绥宁县', '221', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2185', '新宁县', '221', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2186', '城步苗族自治县', '221', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2187', '武冈市', '221', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2189', '岳阳楼区', '222', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2190', '云溪区', '222', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2191', '君山区', '222', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2192', '岳阳县', '222', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2193', '华容县', '222', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2194', '湘阴县', '222', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2195', '平江县', '222', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2196', '汨罗市', '222', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2197', '临湘市', '222', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2199', '武陵区', '223', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2200', '鼎城区', '223', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2201', '安乡县', '223', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2202', '汉寿县', '223', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2203', '澧县', '223', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2204', '临澧县', '223', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2205', '桃源县', '223', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2206', '石门县', '223', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2207', '津市市', '223', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2209', '永定区', '224', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2210', '武陵源区', '224', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2211', '慈利县', '224', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2212', '桑植县', '224', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2214', '资阳区', '225', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2215', '赫山区', '225', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2216', '南县', '225', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2217', '桃江县', '225', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2218', '安化县', '225', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2219', '沅江市', '225', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2221', '北湖区', '226', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2222', '桂阳县', '226', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2223', '宜章县', '226', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2224', '永兴县', '226', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2225', '嘉禾县', '226', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2226', '临武县', '226', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2227', '汝城县', '226', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2228', '桂东县', '226', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2229', '安仁县', '226', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2230', '资兴市', '226', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2232', '芝山区', '227', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2233', '冷水滩区', '227', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2234', '祁阳县', '227', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2235', '东安县', '227', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2236', '双牌县', '227', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2237', '道县', '227', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2238', '江永县', '227', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2239', '宁远县', '227', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2240', '蓝山县', '227', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2241', '新田县', '227', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2242', '江华瑶族自治县', '227', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2244', '鹤城区', '228', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2245', '中方县', '228', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2246', '沅陵县', '228', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2247', '辰溪县', '228', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2248', '溆浦县', '228', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2249', '会同县', '228', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2250', '麻阳苗族自治县', '228', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2251', '新晃侗族自治县', '228', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2252', '芷江侗族自治县', '228', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2253', '靖州苗族侗族自治县', '228', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2254', '通道侗族自治县', '228', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2255', '洪江市', '228', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2256', '娄底市', '229', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2257', '冷水江市', '229', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2258', '涟源市', '229', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2259', '双峰县', '229', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2260', '新化县', '229', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2261', '吉首市', '230', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2262', '泸溪县', '230', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2263', '凤凰县', '230', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2264', '花垣县', '230', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2265', '保靖县', '230', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2266', '古丈县', '230', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2267', '永顺县', '230', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2268', '龙山县', '230', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2270', '东山区', '231', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2271', '荔湾区', '231', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2272', '越秀区', '231', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2273', '海珠区', '231', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2274', '天河区', '231', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2275', '芳村区', '231', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2276', '白云区', '231', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2277', '黄埔区', '231', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2278', '番禺区', '231', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2279', '花都区', '231', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2280', '增城市', '231', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2281', '从化市', '231', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2283', '北江区', '232', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2284', '武江区', '232', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2285', '浈江区', '232', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2286', '曲江县', '232', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2287', '始兴县', '232', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2288', '仁化县', '232', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2289', '翁源县', '232', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2290', '乳源瑶族自治县', '232', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2291', '新丰县', '232', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2292', '乐昌市', '232', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2293', '南雄市', '232', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2295', '罗湖区', '233', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2296', '福田区', '233', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2297', '南山区', '233', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2298', '宝安区', '233', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2299', '龙岗区', '233', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2300', '盐田区', '233', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2301', '金湾区', '234', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2303', '香洲区', '234', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2304', '斗门区', '234', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2306', '潮南区', '235', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2307', '龙湖区', '235', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2308', '金平区', '235', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2309', '南澳县', '235', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2310', '潮阳区', '235', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2311', '澄海区', '235', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2312', '濠江区', '235', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2314', '禅城区', '236', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2315', '顺德区', '236', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2316', '南海区', '236', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2317', '三水区', '236', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2318', '高明区', '236', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2320', '蓬江区', '237', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2321', '江海区', '237', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2322', '台山市', '237', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2323', '新会区', '237', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2324', '开平市', '237', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2325', '鹤山市', '237', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2326', '恩平市', '237', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2328', '赤坎区', '238', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2329', '霞山区', '238', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2330', '坡头区', '238', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2331', '麻章区', '238', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2332', '遂溪县', '238', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2333', '徐闻县', '238', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2334', '廉江市', '238', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2335', '雷州市', '238', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2336', '吴川市', '238', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2337', '茂港区', '239', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2339', '茂南区', '239', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2340', '电白县', '239', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2341', '高州市', '239', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2342', '化州市', '239', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2343', '信宜市', '239', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2345', '端州区', '240', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2346', '鼎湖区', '240', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2347', '广宁县', '240', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2348', '怀集县', '240', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2349', '封开县', '240', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2350', '德庆县', '240', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2351', '高要市', '240', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2352', '四会市', '240', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2354', '惠城区', '241', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2355', '博罗县', '241', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2356', '惠东县', '241', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2357', '龙门县', '241', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2358', '惠阳区', '241', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2360', '梅江区', '242', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2361', '梅县', '242', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2362', '大埔县', '242', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2363', '丰顺县', '242', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2364', '五华县', '242', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2365', '平远县', '242', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2366', '蕉岭县', '242', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2367', '兴宁市', '242', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2369', '城区', '243', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2370', '海丰县', '243', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2371', '陆河县', '243', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2372', '陆丰市', '243', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2374', '源城区', '244', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2375', '紫金县', '244', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2376', '龙川县', '244', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2377', '连平县', '244', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2378', '和平县', '244', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2379', '东源县', '244', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2381', '江城区', '245', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2382', '阳西县', '245', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2383', '阳东县', '245', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2384', '阳春市', '245', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2386', '清城区', '246', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2387', '佛冈县', '246', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2388', '阳山县', '246', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2389', '连山壮族瑶族自治县', '246', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2390', '连山瑶族自治县', '246', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2391', '清新县', '246', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2392', '英德市', '246', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2393', '连州市', '246', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2395', '湘桥区', '249', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2396', '潮安县', '249', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2397', '饶平县', '249', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2399', '榕城区', '250', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2400', '揭东县', '250', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2401', '揭西县', '250', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2402', '惠来县', '250', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2403', '普宁市', '250', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2405', '云城区', '251', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2406', '新兴县', '251', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2407', '郁南县', '251', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2408', '云安县', '251', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2409', '罗定市', '251', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2411', '兴宁区', '252', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2412', '新城区', '252', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2413', '城北区', '252', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2414', '江南区', '252', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2415', '永新区', '252', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2416', '市郊区', '252', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2417', '邕宁县', '252', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2418', '武鸣县', '252', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2420', '城中区', '253', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2421', '鱼峰区', '253', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2422', '柳南区', '253', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2423', '柳北区', '253', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2424', '市郊区', '253', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2425', '柳江县', '253', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2426', '柳城县', '253', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2428', '秀峰区', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2429', '叠彩区', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2430', '象山区', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2431', '七星区', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2432', '雁山区', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2433', '阳朔县', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2434', '临桂县', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2435', '灵川县', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2436', '全州县', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2437', '兴安县', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2438', '永福县', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2439', '灌阳县', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2440', '龙胜各族自治县', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2441', '资源县', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2442', '平乐县', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2443', '荔浦县', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2444', '恭城瑶族自治县', '254', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2446', '万秀区', '255', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2447', '蝶山区', '255', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2448', '市郊区', '255', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2449', '苍梧县', '255', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2450', '腾县', '255', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2451', '蒙山县', '255', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2452', '岑溪市', '255', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2454', '海城区', '256', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2455', '银海区', '256', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2456', '铁山港区', '256', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2457', '合浦县', '256', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2459', '港口区', '257', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2460', '防城区', '257', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2461', '上思县', '257', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2462', '东兴市', '257', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2464', '钦南区', '258', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2465', '钦北区', '258', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2466', '灵山县', '258', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2467', '浦北县', '258', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2469', '港北区', '259', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2470', '港南区', '259', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2471', '平南县', '259', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2472', '桂平市', '259', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2474', '玉州区', '260', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2475', '容县', '260', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2476', '陆川县', '260', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2477', '博白县', '260', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2478', '兴业县', '260', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2479', '北流市', '260', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2480', '凭祥市', '261', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2481', '横县', '261', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2482', '宾阳县', '261', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2483', '上林县', '261', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2484', '隆安县', '261', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2485', '马山县', '261', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2486', '扶绥县', '261', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2487', '崇左县', '261', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2488', '大新县', '261', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2489', '天等县', '261', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2490', '宁明县', '261', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2491', '龙州县', '261', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2492', '合山市', '262', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2493', '鹿寨县', '262', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2494', '象州县', '262', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2495', '武宣县', '262', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2496', '来宾县', '262', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2497', '融安县', '262', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2498', '三江侗族自治县', '262', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2499', '融水苗族自治县', '262', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2500', '金秀瑶族自治县', '262', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2501', '忻城县', '262', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2502', '贺州市', '263', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2503', '昭平县', '263', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2504', '钟山县', '263', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2505', '富川瑶族自治县', '263', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2506', '百色市', '264', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2507', '田阳县', '264', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2508', '田东县', '264', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2509', '平果县', '264', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2510', '德保县', '264', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2511', '靖西县', '264', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2512', '那坡县', '264', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2513', '凌云县', '264', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2514', '乐业县', '264', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2515', '田林县', '264', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2516', '隆林各族自治县', '264', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2517', '西林县', '264', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2518', '河池市', '265', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2519', '宜州市', '265', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2520', '罗城仫佬族自治县', '265', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2521', '环江毛南族自治县', '265', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2522', '南丹县', '265', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2523', '天峨县', '265', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2524', '凤山县', '265', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2525', '东兰县', '265', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2526', '巴马瑶族自治县', '265', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2527', '都安瑶族自治县', '265', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2528', '大化瑶族自治县', '265', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2529', '琼山区', '266', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2530', '美兰区', '266', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2532', '龙华区', '266', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2533', '秀英区', '266', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2535', '万州区', '268', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2536', '涪陵区', '268', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2537', '渝中区', '268', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2538', '大渡口区', '268', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2539', '江北区', '268', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2540', '沙坪坝区', '268', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2541', '九龙坡区', '268', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2542', '南岸区', '268', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2543', '北碚区', '268', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2544', '万盛区', '268', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2545', '双桥区', '268', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2546', '渝北区', '268', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2547', '巴南区', '268', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2548', '长寿县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2549', '綦江县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2550', '潼南县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2551', '铜梁县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2552', '大足县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2553', '荣昌县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2554', '璧山县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2555', '梁平县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2556', '城口县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2557', '丰都县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2558', '垫江县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2559', '武隆县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2560', '忠县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2561', '开县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2562', '云阳县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2563', '奉节县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2564', '巫山县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2565', '巫溪县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2566', '黔江土家族苗族自治县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2567', '石柱土家族自治县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2568', '秀山土家族苗族自治县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2569', '酉阳土家族苗族自治县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2570', '彭水苗族土家族自治县', '269', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2571', '江津市', '270', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2572', '合川市', '270', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2573', '永川市', '270', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2574', '南川市', '270', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2576', '锦江区', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2577', '青羊区', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2578', '金牛区', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2579', '武侯区', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2580', '成华区', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2581', '龙泉驿区', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2582', '青白江区', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2583', '金堂县', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2584', '双流县', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2585', '温江县', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2586', '郫县', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2587', '新都县', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2588', '大邑县', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2589', '蒲江县', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2590', '新津县', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2591', '都江堰市', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2592', '彭州市', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2593', '邛崃市', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2594', '崇州市', '271', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2596', '自流井区', '272', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2597', '恭井区', '272', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2598', '大安区', '272', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2599', '沿滩区', '272', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2600', '荣县', '272', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2601', '富顺县', '272', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2603', '东区', '273', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2604', '西区', '273', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2605', '仁和区', '273', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2606', '米易县', '273', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2607', '盐边县', '273', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2609', '江阳区', '274', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2610', '纳溪区', '274', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2611', '龙马潭区', '274', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2612', '泸县', '274', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2613', '合江县', '274', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2614', '叙永县', '274', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2615', '古蔺县', '274', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2617', '旌阳区', '275', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2618', '中江县', '275', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2619', '罗江县', '275', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2620', '广汉市', '275', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2621', '什邡市', '275', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2622', '绵竹市', '275', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2624', '涪城区', '276', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2625', '游仙区', '276', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2626', '三台县', '276', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2627', '盐亭县', '276', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2628', '安县', '276', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2629', '梓潼县', '276', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2630', '北川县', '276', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2631', '平武县', '276', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2632', '江油市', '276', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2634', '市中区', '277', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2635', '元坝区', '277', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2636', '朝天区', '277', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2637', '旺苍县', '277', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2638', '青川县', '277', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2639', '剑阁县', '277', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2640', '苍溪县', '277', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2642', '市中区', '278', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2643', '蓬溪县', '278', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2644', '射洪县', '278', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2645', '大英县', '278', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2647', '市中区', '279', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2648', '东兴区', '279', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2649', '威远县', '279', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2650', '资中县', '279', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2651', '隆昌县', '279', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2653', '市中区', '280', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2654', '沙湾区', '280', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2655', '五通桥区', '280', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2656', '金口河区', '280', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2657', '犍为县', '280', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2658', '井研县', '280', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2659', '夹江县', '280', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2660', '沐川县', '280', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2661', '峨边彝族自治县', '280', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2662', '马边彝族自治县', '280', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2663', '峨眉山市', '280', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2665', '顺庆区', '281', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2666', '高坪区', '281', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2667', '嘉陵区', '281', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2668', '南部县', '281', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2669', '营山县', '281', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2670', '蓬安县', '281', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2671', '仪陇县', '281', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2672', '西充县', '281', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2673', '阆中市', '281', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2675', '翠屏区', '282', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2676', '宜宾县', '282', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2677', '南溪县', '282', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2678', '江安县', '282', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2679', '长宁县', '282', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2680', '高县', '282', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2681', '珙县', '282', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2682', '筠连县', '282', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2683', '兴文县', '282', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2684', '屏山县', '282', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2686', '广安区', '283', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2687', '岳池县', '283', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2688', '武胜县', '283', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2689', '邻水县', '283', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2690', '华蓥市', '283', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2691', '达川市', '284', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2692', '万源市', '284', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2693', '达县', '284', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2694', '宣汉县', '284', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2695', '开江县', '284', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2696', '大竹县', '284', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2697', '渠县', '284', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2698', '雅安市', '285', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2699', '名山县', '285', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2700', '荥经县', '285', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2701', '汉源县', '285', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2702', '石棉县', '285', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2703', '天全县', '285', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2704', '芦山县', '285', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2705', '宝兴县', '285', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2706', '汶川县', '286', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2707', '理县', '286', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2708', '茂县', '286', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2709', '松潘县', '286', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2710', '九寨沟县', '286', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2711', '金川县', '286', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2712', '小金县', '286', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2713', '黑水县', '286', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2714', '马尔康县', '286', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2715', '壤塘县', '286', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2716', '阿坝县', '286', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2717', '若尔盖县', '286', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2718', '红原县', '286', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2719', '康定县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2720', '泸定县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2721', '丹巴县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2722', '九龙县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2723', '雅江县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2724', '道孚县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2725', '炉霍县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2726', '甘孜县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2727', '新龙县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2728', '德格县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2729', '白玉县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2730', '石渠县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2731', '色达县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2732', '理塘县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2733', '巴塘县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2734', '乡城县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2735', '稻城县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2736', '得荣县', '287', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2737', '西昌市', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2738', '木里藏族自治县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2739', '盐源县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2740', '德昌县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2741', '会理县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2742', '会东县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2743', '宁南县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2744', '普格县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2745', '布拖县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2746', '金阳县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2747', '昭觉县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2748', '喜德县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2749', '冕宁县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2750', '越西县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2751', '甘洛县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2752', '美姑县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2753', '雷波县', '288', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2754', '巴中市', '289', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2755', '通江县', '289', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2756', '南江县', '289', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2757', '平昌县', '289', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2758', '眉山县', '290', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2759', '仁寿县', '290', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2760', '彭山县', '290', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2761', '洪雅县', '290', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2762', '丹棱县', '290', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2763', '青神县', '290', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2764', '资阳市', '291', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2765', '简阳市', '291', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2766', '安岳县', '291', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2767', '乐至县', '291', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2769', '南明区', '292', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2770', '云岩区', '292', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2771', '花溪区', '292', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2772', '乌当区', '292', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2773', '白云区', '292', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2774', '开阳县', '292', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2775', '息烽县', '292', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2776', '修文县', '292', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2777', '清镇市', '292', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2778', '钟山区', '293', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2779', '盘县特区', '293', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2780', '六枝特区', '293', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2781', '水城县', '293', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2783', '红花岗区', '294', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2784', '遵义县', '294', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2785', '桐梓县', '294', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2786', '绥阳县', '294', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2787', '正阳县', '294', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2788', '道真仡佬族苗族自治县', '294', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2789', '务川仡佬族苗族自治县', '294', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2790', '凤冈县', '294', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2791', '湄潭县', '294', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2792', '余庆县', '294', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2793', '习水县', '294', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2794', '赤水市', '294', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2795', '仁怀市', '294', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2796', '铜仁市', '295', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2797', '江口县', '295', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2798', '玉屏侗族自治县', '295', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2799', '石阡县', '295', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2800', '思南县', '295', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2801', '印江土家族苗族自治县', '295', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2802', '德江县', '295', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2803', '沿河土家族自治县', '295', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2804', '松桃苗族自治县', '295', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2805', '万山特区', '295', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2806', '兴义市', '296', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2807', '兴仁县', '296', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2808', '普安县', '296', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2809', '晴隆县', '296', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2810', '贞丰县', '296', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2811', '望谟县', '296', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2812', '册亨县', '296', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2813', '安龙县', '296', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2814', '毕节市', '297', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2815', '大方县', '297', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2816', '黔西县', '297', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2817', '金沙县', '297', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2818', '织金县', '297', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2819', '纳雍县', '297', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2820', '威宁彝族回族苗族自治县', '297', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2821', '赫章县', '297', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2822', '安顺市', '298', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2823', '平坝县', '298', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2824', '普定县', '298', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2825', '关岭布依族苗族自治县', '298', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2826', '镇宁布依族苗族自治县', '298', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2827', '紫云苗族布依族自治县', '298', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2828', '凯里市', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2829', '黄平县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2830', '施秉县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2831', '三穗县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2832', '镇远县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2833', '岑巩县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2834', '天柱县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2835', '锦屏县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2836', '剑河县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2837', '台江县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2838', '黎平县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2839', '榕江县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2840', '从江县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2841', '雷山县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2842', '麻江县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2843', '丹寨县', '299', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2844', '都匀市', '300', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2845', '福泉市', '300', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2846', '荔波县', '300', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2847', '贵定县', '300', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2848', '瓮安县', '300', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2849', '独山县', '300', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2850', '平塘县', '300', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2851', '罗甸县', '300', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2852', '长顺县', '300', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2853', '龙里县', '300', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2854', '惠水县', '300', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2855', '三都水族自治县', '300', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2857', '五华区', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2858', '盘龙区', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2859', '官渡区', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2860', '西山区', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2861', '东川区', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2862', '呈贡县', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2863', '晋宁县', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2864', '富民县', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2865', '宜良县', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2866', '石林彝族自治县', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2867', '嵩明县', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2868', '禄劝彝族苗族自治县', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2869', '寻甸回族彝族自治县', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2870', '安宁市', '301', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2872', '麒麟区', '302', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2873', '马龙县', '302', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2874', '陆良县', '302', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2875', '师宗县', '302', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2876', '罗平县', '302', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2877', '富源县', '302', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2878', '会泽县', '302', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2879', '沾益县', '302', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2880', '宣威市', '302', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2882', '红塔区', '303', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2883', '江川县', '303', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2884', '澄江县', '303', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2885', '通海县', '303', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2886', '华宁县', '303', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2887', '易门县', '303', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2888', '峨山彝族自治县', '303', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2889', '新平彝族傣族自治县', '303', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2890', '元江哈尼族彝族傣族自治县', '303', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2891', '昭通市', '304', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2892', '鲁甸县', '304', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2893', '巧家县', '304', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2894', '盐津县', '304', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2895', '大关县', '304', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2896', '永善县', '304', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2897', '绥江县', '304', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2898', '镇雄县', '304', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2899', '彝良县', '304', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2900', '威信县', '304', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2901', '水富县', '304', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2902', '楚雄市', '305', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2903', '双柏县', '305', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2904', '牟定县', '305', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2905', '南华县', '305', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2906', '姚安县', '305', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2907', '大姚县', '305', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2908', '永仁县', '305', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2909', '元谋县', '305', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2910', '武定县', '305', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2911', '禄丰县', '305', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2912', '个旧市', '306', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2913', '开远市', '306', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2914', '蒙自县', '306', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2915', '屏边苗族自治县', '306', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2916', '建水县', '306', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2917', '石屏县', '306', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2918', '弥勒县', '306', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2919', '泸西县', '306', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2920', '元阳县', '306', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2921', '红河县', '306', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2922', '金平苗族瑶族傣族自治县', '306', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2923', '绿春县', '306', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2924', '河口瑶族自治县', '306', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2925', '文山县', '307', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2926', '砚山县', '307', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2927', '西畴县', '307', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2928', '麻栗坡县', '307', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2929', '马关县', '307', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2930', '丘北县', '307', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2931', '广南县', '307', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2932', '富宁县', '307', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2933', '思茅市', '308', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2934', '普洱哈尼族彝族自治县', '308', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2935', '墨江哈尼族自治县', '308', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2936', '景东彝族自治县', '308', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2937', '景谷傣族彝族自治县', '308', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2938', '镇沅彝族哈尼族拉祜族自治县', '308', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2939', '江城哈尼族彝族自治县', '308', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2940', '孟连傣族拉祜族佤族自治县', '308', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2941', '澜沧拉祜族自治县', '308', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2942', '西盟佤族自治县', '308', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2943', '景洪市', '309', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2944', '勐海县', '309', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2945', '勐腊县', '309', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2946', '大理市', '310', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2947', '漾濞彝族自治县', '310', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2948', '祥云县', '310', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2949', '宾川县', '310', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2950', '弥渡县', '310', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2951', '南涧彝族自治县', '310', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2952', '巍山彝族回族自治县', '310', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2953', '永平县', '310', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2954', '云龙县', '310', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2955', '洱源县', '310', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2956', '剑川县', '310', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2957', '鹤庆县', '310', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2958', '保山市', '311', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2959', '施甸县', '311', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2960', '腾冲县', '311', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2961', '龙陵县', '311', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2962', '昌宁县', '311', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2963', '畹町市', '312', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2964', '瑞丽市', '312', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2965', '潞西市', '312', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2966', '梁河县', '312', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2967', '盈江县', '312', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2968', '陇川县', '312', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2969', '丽江纳西族自治县', '313', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2970', '永胜县', '313', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2971', '华坪县', '313', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2972', '宁蒗彝族自治县', '313', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2973', '泸水县', '314', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2974', '福贡县', '314', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2975', '贡山独龙族怒族自治县', '314', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2976', '兰坪白族普米族自治县', '314', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2977', '中甸县', '315', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2978', '德钦县', '315', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2979', '维西傈僳族自治县', '315', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2980', '临沧县', '316', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2981', '凤庆县', '316', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2982', '云县', '316', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2983', '永德县', '316', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2984', '镇康县', '316', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2985', '双江拉祜族佤族布朗族傣族自治县', '316', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2986', '耿马傣族佤族自治县', '316', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2987', '沧源佤族自治县', '316', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2989', '城关区', '317', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2990', '林周县', '317', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2991', '当雄县', '317', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2992', '尼木县', '317', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2993', '曲水县', '317', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2994', '堆龙德庆县', '317', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2995', '达孜县', '317', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2996', '墨竹工卡县', '317', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2997', '昌都县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2998', '江达县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('2999', '贡觉县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3000', '类乌齐县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3001', '丁青县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3002', '察雅县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3003', '八宿县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3004', '左贡县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3005', '芒康县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3006', '洛隆县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3007', '边坝县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3008', '盐井县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3009', '碧土县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3010', '妥坝县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3011', '生达县', '318', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3012', '乃东县', '319', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3013', '扎囊县', '319', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3014', '贡嘎县', '319', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3015', '桑日县', '319', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3016', '琼结县', '319', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3017', '曲松县', '319', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3018', '措美县', '319', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3019', '洛扎县', '319', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3020', '加查县', '319', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3021', '隆子县', '319', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3022', '错那县', '319', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3023', '浪卡子县', '319', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3024', '日喀则市', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3025', '南木林县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3026', '江孜县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3027', '定日县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3028', '萨迦县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3029', '拉孜县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3030', '昂仁县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3031', '谢通门县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3032', '白朗县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3033', '仁布县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3034', '康马县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3035', '定结县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3036', '仲巴县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3037', '亚东县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3038', '吉隆县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3039', '聂拉木县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3040', '萨嘎县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3041', '岗巴县', '320', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3042', '那曲县', '321', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3043', '嘉黎县', '321', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3044', '比如县', '321', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3045', '聂荣县', '321', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3046', '安多县', '321', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3047', '申扎县', '321', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3048', '索县', '321', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3049', '班戈县', '321', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3050', '巴青县', '321', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3051', '尼玛县', '321', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3052', '普兰县', '322', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3053', '札达县', '322', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3054', '噶尔县', '322', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3055', '日土县', '322', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3056', '革吉县', '322', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3057', '改则县', '322', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3058', '措勤县', '322', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3059', '隆格尔县', '322', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3060', '林芝县', '323', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3061', '工布江达县', '323', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3062', '米林县', '323', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3063', '墨脱县', '323', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3064', '波密县', '323', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3065', '察隅县', '323', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3066', '朗县', '323', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3068', '新城区', '324', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3069', '碑林区', '324', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3070', '莲湖区', '324', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3071', '灞桥区', '324', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3072', '未央区', '324', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3073', '雁塔区', '324', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3074', '阎良区', '324', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3075', '临潼区', '324', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3076', '长安县', '324', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3077', '蓝田县', '324', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3078', '周至县', '324', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3079', '户县', '324', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3080', '高陵县', '324', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3082', '城区', '325', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3083', '郊区', '325', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3084', '耀县', '325', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3085', '宜君县', '325', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3087', '渭滨区', '326', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3088', '金台区', '326', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3089', '宝鸡县', '326', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3090', '凤翔县', '326', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3091', '岐山县', '326', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3092', '扶风县', '326', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3093', '眉县', '326', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3094', '陇县', '326', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3095', '千阳县', '326', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3096', '麟游县', '326', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3097', '凤县', '326', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3098', '太白县', '326', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3100', '秦都区', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3101', '杨陵区', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3102', '渭城区', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3103', '三原县', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3104', '泾阳县', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3105', '乾县', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3106', '礼泉县', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3107', '永寿县', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3108', '彬县', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3109', '长武县', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3110', '旬邑县', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3111', '淳化县', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3112', '武功县', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3113', '兴平市', '327', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3115', '临渭区', '328', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3116', '华县', '328', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3117', '潼关县', '328', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3118', '大荔县', '328', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3119', '合阳县', '328', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3120', '澄城县', '328', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3121', '蒲城县', '328', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3122', '白水县', '328', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3123', '富平县', '328', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3124', '韩城市', '328', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3125', '华阴市', '328', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3127', '宝塔区', '329', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3128', '延长县', '329', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3129', '延川县', '329', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3130', '子长县', '329', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3131', '安塞县', '329', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3132', '志丹县', '329', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3133', '吴旗县', '329', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3134', '甘泉县', '329', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3135', '富县', '329', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3136', '洛川县', '329', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3137', '宜川县', '329', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3138', '黄龙县', '329', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3139', '黄陵县', '329', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3141', '汉台区', '330', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3142', '南郑县', '330', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3143', '城固县', '330', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3144', '洋县', '330', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3145', '西乡县', '330', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3146', '勉县', '330', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3147', '宁强县', '330', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3148', '略阳县', '330', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3149', '镇巴县', '330', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3150', '留坝县', '330', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3151', '佛坪县', '330', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3152', '安康市', '331', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3153', '汉阴县', '331', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3154', '石泉县', '331', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3155', '宁陕县', '331', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3156', '紫阳县', '331', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3157', '岚皋县', '331', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3158', '平利县', '331', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3159', '镇坪县', '331', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3160', '旬阳县', '331', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3161', '白河县', '331', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3162', '商州市', '332', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3163', '洛南县', '332', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3164', '丹凤县', '332', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3165', '商南县', '332', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3166', '山阳县', '332', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3167', '镇安县', '332', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3168', '柞水县', '332', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3169', '榆林市', '333', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3170', '神木县', '333', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3171', '府谷县', '333', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3172', '横山县', '333', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3173', '靖边县', '333', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3174', '定边县', '333', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3175', '绥德县', '333', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3176', '米脂县', '333', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3177', '佳县', '333', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3178', '吴堡县', '333', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3179', '清涧县', '333', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3180', '子洲县', '333', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3182', '城关区', '334', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3183', '七里河区', '334', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3184', '西固区', '334', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3185', '安宁区', '334', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3186', '红古区', '334', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3187', '永登县', '334', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3188', '皋兰县', '334', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3189', '榆中县', '334', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3192', '金川区', '336', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3193', '永昌县', '336', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3195', '白银区', '337', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3196', '平川区', '337', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3197', '靖远县', '337', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3198', '会宁县', '337', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3199', '景泰县', '337', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3201', '秦城区', '338', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3202', '北道区', '338', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3203', '清水县', '338', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3204', '秦安县', '338', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3205', '甘谷县', '338', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3206', '武山县', '338', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3207', '张家川回族自治县', '338', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3208', '玉门市', '339', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3209', '酒泉市', '339', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3210', '敦煌市', '339', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3211', '金塔县', '339', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3212', '肃北蒙古族自治县', '339', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3213', '阿克塞哈萨克族自治县', '339', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3214', '安西县', '339', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3215', '张掖市', '340', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3216', '肃南裕固族自治县', '340', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3217', '民乐县', '340', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3218', '临泽县', '340', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3219', '高台县', '340', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3220', '山丹县', '340', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3221', '武威市', '341', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3222', '民勤县', '341', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3223', '古浪县', '341', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3224', '天祝藏族自治县', '341', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3225', '定西县', '342', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3226', '通渭县', '342', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3227', '陇西县', '342', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3228', '渭源县', '342', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3229', '临洮县', '342', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3230', '漳县', '342', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3231', '岷县', '342', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3232', '武都县', '343', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3233', '宕昌县', '343', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3234', '成县', '343', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3235', '康县', '343', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3236', '文县', '343', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3237', '西和县', '343', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3238', '礼县', '343', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3239', '两当县', '343', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3240', '徽县', '343', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3241', '平凉市', '344', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3242', '泾川县', '344', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3243', '灵台县', '344', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3244', '崇信县', '344', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3245', '华亭县', '344', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3246', '庄浪县', '344', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3247', '静宁县', '344', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3248', '西峰市', '345', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3249', '庆阳市', '345', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3250', '环县', '345', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3251', '华池县', '345', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3252', '合水县', '345', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3253', '正宁县', '345', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3254', '宁县', '345', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3255', '镇原县', '345', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3256', '临夏市', '346', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3257', '临夏县', '346', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3258', '康乐县', '346', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3259', '永靖县', '346', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3260', '广河县', '346', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3261', '和政县', '346', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3262', '东乡族自治县', '346', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3263', '积石山保安族东乡族撒拉族自治县', '346', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3264', '合作市', '347', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3265', '临潭县', '347', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3266', '卓尼县', '347', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3267', '舟曲县', '347', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3268', '迭部县', '347', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3269', '玛曲县', '347', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3270', '碌曲县', '347', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3271', '夏河县', '347', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3273', '城东区', '348', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3274', '城中区', '348', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3275', '城西区', '348', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3276', '城北区', '348', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3277', '大通回族土族自治县', '348', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3278', '平安县', '349', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3279', '民和回族土族自治县', '349', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3280', '乐都县', '349', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3281', '湟中县', '349', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3282', '湟源县', '349', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3283', '互助土族自治县', '349', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3284', '化隆回族自治县', '349', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3285', '循化撒拉族自治县', '349', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3286', '门源回族自治县', '350', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3287', '祁连县', '350', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3288', '海晏县', '350', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3289', '刚察县', '350', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3290', '同仁县', '351', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3291', '尖扎县', '351', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3292', '泽库县', '351', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3293', '河南蒙古族自治县', '351', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3294', '共和县', '352', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3295', '同德县', '352', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3296', '贵德县', '352', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3297', '兴海县', '352', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3298', '贵南县', '352', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3299', '玛沁县', '353', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3300', '班玛县', '353', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3301', '甘德县', '353', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3302', '达日县', '353', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3303', '久治县', '353', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3304', '玛多县', '353', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3305', '玉树县', '354', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3306', '杂多县', '354', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3307', '称多县', '354', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3308', '治多县', '354', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3309', '囊谦县', '354', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3310', '曲麻莱县', '354', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3311', '格尔木市', '355', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3312', '德令哈市', '355', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3313', '乌兰县', '355', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3314', '都兰县', '355', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3315', '天峻县', '355', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3317', '城区', '356', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3318', '新城区', '356', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3319', '郊区', '356', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3320', '永宁县', '356', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3321', '贺兰县', '356', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3323', '大武口区', '357', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3324', '石嘴山区', '357', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3325', '石炭井区', '357', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3326', '平罗县', '357', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3327', '陶乐县', '357', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3328', '惠农县', '357', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3330', '利通区', '358', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3331', '中卫县', '358', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3332', '中宁县', '358', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3333', '盐池县', '358', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3334', '同心县', '358', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3335', '青铜峡市', '358', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3336', '灵武市', '358', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3337', '固原县', '359', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3338', '海原县', '359', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3339', '西吉县', '359', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3340', '隆德县', '359', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3341', '泾源县', '359', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3342', '彭阳县', '359', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3344', '天山区', '360', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3345', '沙依巴克区', '360', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3346', '新市区', '360', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3347', '水磨沟区', '360', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3348', '头屯河区', '360', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3349', '南山矿区', '360', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3350', '东山区', '360', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3351', '乌鲁木齐县', '360', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3353', '独山子区', '361', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3354', '克拉玛依区', '361', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3355', '白碱滩区', '361', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3356', '乌尔禾区', '361', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3357', '吐鲁番市', '362', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3358', '鄯善县', '362', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3359', '托克逊县', '362', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3360', '哈密市', '363', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3361', '巴里坤哈萨克自治县', '363', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3362', '伊吾县', '363', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3363', '昌吉市', '364', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3364', '阜康市', '364', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3365', '米泉市', '364', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3366', '呼图壁县', '364', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3367', '玛纳斯县', '364', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3368', '奇台县', '364', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3369', '吉木萨尔县', '364', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3370', '木垒哈萨克自治县', '364', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3371', '博乐市', '365', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3372', '精河县', '365', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3373', '温泉县', '365', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3374', '库尔勒市', '366', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3375', '轮台县', '366', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3376', '尉犁县', '366', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3377', '若羌县', '366', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3378', '且末县', '366', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3379', '焉耆回族自治县', '366', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3380', '和静县', '366', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3381', '和硕县', '366', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3382', '博湖县', '366', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3383', '阿克苏市', '367', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3384', '温宿县', '367', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3385', '库车县', '367', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3386', '沙雅县', '367', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3387', '新和县', '367', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3388', '拜城县', '367', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3389', '乌什县', '367', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3390', '阿瓦提县', '367', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3391', '柯坪县', '367', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3392', '阿图什市', '368', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3393', '阿克陶县', '368', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3394', '阿合奇县', '368', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3395', '乌恰县', '368', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3396', '喀什市', '369', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3397', '疏附县', '369', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3398', '疏勒县', '369', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3399', '英吉沙县', '369', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3400', '泽普县', '369', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3401', '莎车县', '369', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3402', '叶城县', '369', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3403', '麦盖提县', '369', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3404', '岳普湖县', '369', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3405', '伽师县', '369', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3406', '巴楚县', '369', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3407', '塔什库尔干塔吉克自治县', '369', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3408', '和田市', '370', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3409', '和田县', '370', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3410', '墨玉县', '370', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3411', '皮山县', '370', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3412', '洛浦县', '370', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3413', '策勒县', '370', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3414', '于田县', '370', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3415', '民丰县', '370', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3416', '奎屯市', '371', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3417', '伊宁市', '372', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3418', '伊宁县', '372', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3419', '察布查尔锡伯自治县', '372', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3420', '霍城县', '372', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3421', '巩留县', '372', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3422', '新源县', '372', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3423', '昭苏县', '372', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3424', '特克斯县', '372', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3425', '尼勒克县', '372', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3426', '塔城市', '373', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3427', '乌苏市', '373', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3428', '额敏县', '373', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3429', '沙湾县', '373', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3430', '托里县', '373', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3431', '裕民县', '373', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3432', '和布克塞尔蒙古自治县', '373', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3433', '阿勒泰市', '374', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3434', '布尔津县', '374', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3435', '富蕴县', '374', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3436', '福海县', '374', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3437', '哈巴河县', '374', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3438', '青河县', '374', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3439', '吉木乃县', '374', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3440', '石河子市', '375', '100', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3441', '下关区', '310', '0', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3442', '文殊区', '335', '0', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3443', '乌兰浩特市老城区', '66', '0', '4', '0', '0', '0');
INSERT INTO `admin_cg_group` VALUES ('3444', '乌兰浩特市新城区', '66', '0', '4', '0', '0', '0');

-- ----------------------------
-- Table structure for lkt_admin
-- ----------------------------
DROP TABLE IF EXISTS `lkt_admin`;
CREATE TABLE `lkt_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '账号',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `admin_type` int(11) DEFAULT NULL COMMENT '管理类型',
  `permission` text COMMENT '许可',
  `role` tinyint(3) DEFAULT NULL COMMENT '角色',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';



-- ----------------------------
-- Table structure for lkt_article
-- ----------------------------
DROP TABLE IF EXISTS `lkt_article`;
CREATE TABLE `lkt_article` (
  `Article_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `Article_title` varchar(100) NOT NULL DEFAULT '' COMMENT '文章标题',
  `Article_prompt` varchar(100) NOT NULL DEFAULT '' COMMENT '文章提示',
  `Article_imgurl` varchar(200) NOT NULL DEFAULT '' COMMENT '文章图片',
  `content` text NOT NULL COMMENT '文章内容',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `share_num` int(11) NOT NULL DEFAULT '0' COMMENT '分享次数',
  `total_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '红包总金额',
  `total_num` int(11) NOT NULL DEFAULT '0' COMMENT '红包个数',
  `wishing` varchar(100) NOT NULL DEFAULT '' COMMENT '祝福语',
  PRIMARY KEY (`Article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='单篇文章表';

-- ----------------------------
-- Records of lkt_article
-- ----------------------------
INSERT INTO `lkt_article` VALUES ('1', '关于我们', '', '1536672020589.jpeg', '<p><img src=\"/ueditor/php/upload/image/20180911/1536672045401615.png\" title=\"1536672045401615.png\" alt=\"15306155488.png\"/><img src=\"/ueditor/php/upload/image/20180911/1536672032279491.jpg\" title=\"1536672032279491.jpg\" alt=\"152265914016.jpg\"/></p>', '100', '2018-02-06 23:58:06', '22', '0.00', '0', '');

-- ----------------------------
-- Table structure for lkt_background_color
-- ----------------------------
DROP TABLE IF EXISTS `lkt_background_color`;
CREATE TABLE `lkt_background_color` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `color_name` char(10) DEFAULT NULL COMMENT '颜色名称',
  `color` varchar(30) DEFAULT NULL COMMENT '颜色',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0：未启用 1：启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='背景颜色表';

-- ----------------------------
-- Records of lkt_background_color
-- ----------------------------
INSERT INTO `lkt_background_color` VALUES ('3', '绿色', '#00ff00', '1', '0');
INSERT INTO `lkt_background_color` VALUES ('4', '红色', '#000000', '1', '0');
INSERT INTO `lkt_background_color` VALUES ('5', '红色', '#DC143C', '1', '0');
INSERT INTO `lkt_background_color` VALUES ('6', '橘红', '#FF6347', '1', '0');
INSERT INTO `lkt_background_color` VALUES ('7', '白色', '#ffffff', '1', '1');

-- ----------------------------
-- Table structure for lkt_banner
-- ----------------------------
DROP TABLE IF EXISTS `lkt_banner`;
CREATE TABLE `lkt_banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `image` varchar(200) NOT NULL DEFAULT '' COMMENT '图片',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图表';

-- ----------------------------
-- Records of lkt_banner
-- ----------------------------
INSERT INTO `lkt_banner` VALUES ('20', '1536673273141.jpeg', '../product/detail?productId=79', '11', '2018-09-11 21:41:22');

-- ----------------------------
-- Table structure for lkt_bargain_config
-- ----------------------------
DROP TABLE IF EXISTS `lkt_bargain_config`;
CREATE TABLE `lkt_bargain_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `plug_ins_id` int(11) NOT NULL DEFAULT '0' COMMENT '插件id',
  `can_num` int(11) DEFAULT NULL COMMENT '能砍的次数',
  `help_num` int(11) DEFAULT NULL COMMENT '每天最多帮别人砍的次数',
  `parameter` char(11) DEFAULT NULL COMMENT '每次砍价的参数',
  `invalid_time` int(11) DEFAULT NULL COMMENT '逾期失效时间',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='砍价免单设置表';

-- ----------------------------
-- Records of lkt_bargain_config
-- ----------------------------
INSERT INTO `lkt_bargain_config` VALUES ('1', '7', '7', '3', '0.3', '7', '2018-05-08 17:57:24');

-- ----------------------------
-- Table structure for lkt_bargain_record
-- ----------------------------
DROP TABLE IF EXISTS `lkt_bargain_record`;
CREATE TABLE `lkt_bargain_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `s_id` int(11) NOT NULL DEFAULT '0' COMMENT '属性id',
  `user_id` varchar(15) NOT NULL COMMENT '用户ID',
  `money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `event` varchar(200) DEFAULT NULL COMMENT '事件',
  `name` varchar(15) NOT NULL COMMENT '收货人',
  `tel` char(15) NOT NULL COMMENT '联系方式',
  `sheng` int(11) NOT NULL DEFAULT '0' COMMENT '省',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '市',
  `quyu` int(11) NOT NULL DEFAULT '0' COMMENT '县',
  `address` varchar(255) NOT NULL COMMENT '收货地址（不加省市区）',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0:砍价中 1:砍价成功 2:逾期失效 3:生成订单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='砍价免单记录表';

-- ----------------------------
-- Records of lkt_bargain_record
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_brand_class
-- ----------------------------
DROP TABLE IF EXISTS `lkt_brand_class`;
CREATE TABLE `lkt_brand_class` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `brand_pic` varchar(255) DEFAULT NULL COMMENT '品牌图片',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `brand_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='产品品牌表';

-- ----------------------------
-- Records of lkt_brand_class
-- ----------------------------
INSERT INTO `lkt_brand_class` VALUES ('8', '', '自主品牌', '2018-05-15 11:01:31');
INSERT INTO `lkt_brand_class` VALUES ('9', '', '来客定制', '2018-06-28 10:33:35');

-- ----------------------------
-- Table structure for lkt_cart
-- ----------------------------
DROP TABLE IF EXISTS `lkt_cart`;
CREATE TABLE `lkt_cart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(20) NOT NULL COMMENT '用户id',
  `Uid` varchar(32) DEFAULT NULL COMMENT '用户id',
  `Goods_id` int(11) DEFAULT NULL COMMENT '产品id',
  `Goods_num` int(11) DEFAULT NULL COMMENT '数量',
  `Create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `Size_id` char(15) NOT NULL DEFAULT '' COMMENT '商品属性id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='购物车';

-- ----------------------------
-- Records of lkt_cart
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_combined_pay
-- ----------------------------
DROP TABLE IF EXISTS `lkt_combined_pay`;
CREATE TABLE `lkt_combined_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `weixin_pay` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '微信支付金额',
  `balance_pay` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '余额支付',
  `total` decimal(11,2) NOT NULL COMMENT '总金额',
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单号',
  `add_time` datetime NOT NULL COMMENT '创建时间',
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lkt_combined_pay
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_comments
-- ----------------------------
DROP TABLE IF EXISTS `lkt_comments`;
CREATE TABLE `lkt_comments` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `oid` varchar(32) NOT NULL COMMENT '订单ID',
  `uid` varchar(32) NOT NULL COMMENT '用户id',
  `pid` varchar(32) NOT NULL COMMENT '商品id',
  `attribute_id` int(11) NOT NULL COMMENT '属性id',
  `size` char(50) NOT NULL DEFAULT '默认' COMMENT '商品规格',
  `content` text NOT NULL COMMENT '评价内容',
  `CommentType` char(11) NOT NULL COMMENT '评价类型',
  `add_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lkt_comments
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_comments_img
-- ----------------------------
DROP TABLE IF EXISTS `lkt_comments_img`;
CREATE TABLE `lkt_comments_img` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `comments_url` varchar(100) NOT NULL COMMENT '评论图片',
  `comments_id` int(11) NOT NULL COMMENT '评论id',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论图片表';

-- ----------------------------
-- Records of lkt_comments_img
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_config
-- ----------------------------
DROP TABLE IF EXISTS `lkt_config`;
CREATE TABLE `lkt_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `logo` varchar(100) DEFAULT NULL COMMENT '公司logo',
  `company` varchar(100) NOT NULL DEFAULT '' COMMENT '公司名称',
  `appid` char(18) NOT NULL DEFAULT '' COMMENT '小程序id',
  `appsecret` char(32) NOT NULL DEFAULT '' COMMENT '小程序密钥',
  `domain` varchar(100) NOT NULL DEFAULT '' COMMENT '小程序域名',
  `mch_id` int(11) DEFAULT NULL COMMENT '商户id',
  `ip` varchar(25) DEFAULT NULL COMMENT 'ip地址',
  `uploadImg_domain` varchar(100) NOT NULL DEFAULT '' COMMENT '图片上传域名',
  `uploadImg` varchar(100) NOT NULL DEFAULT '' COMMENT '图片上传位置',
  `upload_file` varchar(100) NOT NULL DEFAULT '' COMMENT '文件上传位置',
  `modify_date` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `mch_key` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '微信支付key',
  `mch_cert` varchar(100) NOT NULL COMMENT '支付证书文件地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置表';

-- ----------------------------
-- Records of lkt_config
-- ----------------------------
INSERT INTO `lkt_config` VALUES ('1', '1526283363624.png', '来客电商开源版', '', '', 'http://test.com/LKT/index.php?module=api', null, '120.70.189.153', 'http://test.com', '../LKT/images/', '../LKT/zip', '2018-09-11 21:44:13', '', '');

-- ----------------------------
-- Table structure for lkt_configure
-- ----------------------------
DROP TABLE IF EXISTS `lkt_configure`;
CREATE TABLE `lkt_configure` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配置id',
  `name` varchar(100) DEFAULT NULL COMMENT '配置名称',
  `color` char(15) DEFAULT NULL COMMENT '颜色',
  `size` varchar(100) DEFAULT '0' COMMENT '尺码',
  `costprice` decimal(12,2) NOT NULL COMMENT '成本价',
  `price` decimal(12,2) NOT NULL COMMENT '出售价格',
  `yprice` decimal(12,2) NOT NULL COMMENT '原价格',
  `img` varchar(255) NOT NULL COMMENT '图片',
  `pid` int(11) NOT NULL COMMENT '商品id',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `unit` varchar(20) NOT NULL COMMENT '单位',
  `bargain_price` decimal(12,2) DEFAULT NULL COMMENT '砍价开始价格',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0:未开启砍价 1:开启砍价 2 上架 3 缺货 4下架',
  `attribute` text NOT NULL COMMENT '属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品配置表';

-- ----------------------------
-- Records of lkt_configure
-- ----------------------------
INSERT INTO `lkt_configure` VALUES ('125', '1', '1', '1', '398.00', '398.00', '398.00', '1535091313506.jpeg', '56', '298', '件', null, '0', 'a:1:{s:6:\"套餐\";s:3:\"398\";}');
INSERT INTO `lkt_configure` VALUES ('135', null, null, '0', '18888.00', '18888.00', '18888.00', '1535465015468.jpeg', '58', '9916', '件', null, '0', 'a:1:{s:6:\"套餐\";s:17:\"代理商18888元\";}');
INSERT INTO `lkt_configure` VALUES ('136', null, null, '0', '3888.00', '3888.00', '3888.00', '1535465096843.jpeg', '57', '3792', '件', null, '0', 'a:1:{s:6:\"套餐\";s:16:\"VIP会员3888元\";}');
INSERT INTO `lkt_configure` VALUES ('138', null, null, '0', '1.00', '1.00', '1.00', '1535685972308.jpeg', '59', '0', '件', null, '0', 'a:1:{s:6:\"尺码\";s:2:\"36\";}');
INSERT INTO `lkt_configure` VALUES ('139', null, null, '0', '500.00', '500.00', '500.00', '1535686781297.jpeg', '60', '981', '套', null, '0', 'a:1:{s:6:\"茶具\";s:6:\"一套\";}');
INSERT INTO `lkt_configure` VALUES ('141', null, null, '0', '333.00', '333.00', '333.00', '1535687359498.jpeg', '62', '324', '套', null, '0', 'a:1:{s:6:\"茶具\";s:6:\"一套\";}');
INSERT INTO `lkt_configure` VALUES ('319', null, null, '0', '110.00', '220.00', '300.00', '1536631953338.jpeg', '61', '100', '套', null, '0', 'a:1:{s:9:\"功夫茶\";s:6:\"一件\";}');
INSERT INTO `lkt_configure` VALUES ('329', null, null, '0', '104.00', '499.00', '520.00', '1536647420450.jpeg', '74', '100', '件', null, '0', 'a:1:{s:6:\"型号\";s:10:\"CFB-X30E02\";}');
INSERT INTO `lkt_configure` VALUES ('330', null, null, '0', '176.00', '528.00', '568.00', '1536647913652.jpeg', '75', '100', '件', null, '0', 'a:1:{s:6:\"型号\";s:11:\"CFB-F30E03S\";}');
INSERT INTO `lkt_configure` VALUES ('331', null, null, '0', '219.00', '485.00', '525.00', '1536651852123.jpeg', '76', '100', '台', null, '0', 'a:1:{s:6:\"型号\";s:13:\"\"CYL-50E02S \"\";}');
INSERT INTO `lkt_configure` VALUES ('332', null, null, '0', '180.00', '380.00', '418.00', '1536652868785.jpeg', '77', '100', '盒', null, '0', 'a:1:{s:6:\"型号\";s:7:\"DP-0201\";}');
INSERT INTO `lkt_configure` VALUES ('333', null, null, '0', '1.00', '1.00', '1.00', '1536672744615.png', '-1', '1', '盒', null, '0', 'a:1:{s:6:\"测试\";s:6:\"测试\";}');
INSERT INTO `lkt_configure` VALUES ('334', null, null, '0', '1.00', '1.00', '1.00', '1536673149581.png', '79', '1', '箱', null, '0', 'a:1:{s:6:\"测试\";s:6:\"测试\";}');

-- ----------------------------
-- Table structure for lkt_coupon
-- ----------------------------
DROP TABLE IF EXISTS `lkt_coupon`;
CREATE TABLE `lkt_coupon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `software_id` varchar(60) NOT NULL DEFAULT '' COMMENT '软件id',
  `user_id` varchar(15) NOT NULL COMMENT '用户ID',
  `money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '优惠券金额',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '领取时间',
  `expiry_time` timestamp NULL DEFAULT NULL COMMENT '到期时间',
  `hid` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0:未使用 1:使用中 2:已使用 3:已过期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='优惠券表';

-- ----------------------------
-- Records of lkt_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_coupon_activity
-- ----------------------------
DROP TABLE IF EXISTS `lkt_coupon_activity`;
CREATE TABLE `lkt_coupon_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(25) NOT NULL COMMENT '活动名称',
  `software_id` varchar(60) NOT NULL DEFAULT '' COMMENT '软件id',
  `activity_type` int(11) NOT NULL DEFAULT '0' COMMENT '活动类型 1:注册 2：节日/活动 3：满减',
  `product_class_id` varchar(20) NOT NULL DEFAULT '0' COMMENT '活动指定商品类型id',
  `product_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动指定商品id',
  `image` varchar(255) NOT NULL COMMENT '活动图片',
  `content` text COMMENT '活动介绍',
  `money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '金额/减',
  `z_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '总金额/满减',
  `num` varchar(11) DEFAULT NULL COMMENT '数量',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0：未启用 1：启用 2:禁用 3：已结束',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='优惠劵活动表';

-- ----------------------------
-- Records of lkt_coupon_activity
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_coupon_config
-- ----------------------------
DROP TABLE IF EXISTS `lkt_coupon_config`;
CREATE TABLE `lkt_coupon_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `plug_ins_id` int(11) NOT NULL DEFAULT '0' COMMENT '插件id',
  `software_id` varchar(60) NOT NULL DEFAULT '' COMMENT '软件id',
  `activity_overdue` int(11) NOT NULL DEFAULT '0' COMMENT '活动过期删除时间',
  `coupon_validity` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券有效期',
  `coupon_overdue` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券过期删除时间',
  `Customer_id` varchar(15) NOT NULL COMMENT '客户id',
  `modify_date` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='优惠券配置表';

-- ----------------------------
-- Records of lkt_coupon_config
-- ----------------------------
INSERT INTO `lkt_coupon_config` VALUES ('1', '0', '', '2', '7', '2', '', '2018-06-25 19:39:58');
INSERT INTO `lkt_coupon_config` VALUES ('2', '7', '4', '3', '7', '3', '', '2018-06-25 19:40:09');
INSERT INTO `lkt_coupon_config` VALUES ('3', '1', '3', '3', '7', '5', '', '2018-07-06 09:32:19');

-- ----------------------------
-- Table structure for lkt_customer
-- ----------------------------
DROP TABLE IF EXISTS `lkt_customer`;
CREATE TABLE `lkt_customer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` char(15) NOT NULL DEFAULT '' COMMENT '客户id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `company` varchar(50) NOT NULL DEFAULT '' COMMENT '公司名称',
  `function` text NOT NULL COMMENT '功能',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `end_date` timestamp NULL DEFAULT NULL COMMENT '到期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 0:启用 1:到期',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='客户表';

-- ----------------------------
-- Records of lkt_customer
-- ----------------------------
INSERT INTO `lkt_customer` VALUES ('1', 'laiketui', 'admin', '15581612334', '9999.00', '来客电商', '3', '2018-07-11 17:58:56', '2020-12-31 23:59:59', '0', 'admin@laiketui.com');
INSERT INTO `lkt_customer` VALUES ('2', 'test', 'test', '15581612334', '1200.00', 'test', '2', '2018-07-20 10:38:31', '2020-07-31 00:00:00', '0', 'test@laiketui.com');
INSERT INTO `lkt_customer` VALUES ('3', 'tanxian', '谭仙', '17742570101', '1200.00', '益阳市都享健康产业发展有限公司', '2', '2018-07-20 16:07:00', '2019-07-31 23:59:59', '0', '1551750448@qq.com');
INSERT INTO `lkt_customer` VALUES ('4', 'sht', '湖南商海通', '15581612334', '1200.00', '湖南商海通跨境直购科技发展有限公司', '2', '2018-08-10 11:02:28', '2020-08-31 00:00:00', '0', '2472467594@qq.com');
INSERT INTO `lkt_customer` VALUES ('5', 'ykm', '唯可美', '15581612334', '1200.00', '广州宏缇发化妆品有限公司', '2', '2018-08-14 09:38:51', '2020-08-31 23:59:59', '0', '13728503928@139.com');

-- ----------------------------
-- Table structure for lkt_draw
-- ----------------------------
DROP TABLE IF EXISTS `lkt_draw`;
CREATE TABLE `lkt_draw` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '活动名称',
  `draw_brandid` int(11) NOT NULL COMMENT '该抽奖所参与商品ID',
  `found_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `num` int(11) DEFAULT NULL COMMENT '每个团所需人数',
  `spelling_number` int(11) DEFAULT NULL COMMENT '可抽中奖次数（默认为1）',
  `collage_number` int(11) DEFAULT NULL COMMENT '最少开奖团数（默认为1）',
  `state` int(11) DEFAULT '0' COMMENT '该团的状态（默认为0：未开始 ，1：进行中 ， 2：已结束）',
  `price` decimal(10,2) DEFAULT NULL COMMENT '抽奖金额',
  `cishu` int(11) DEFAULT NULL COMMENT '次数 ',
  `type` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一分钱抽奖';

-- ----------------------------
-- Records of lkt_draw
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_draw_user
-- ----------------------------
DROP TABLE IF EXISTS `lkt_draw_user`;
CREATE TABLE `lkt_draw_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `draw_id` int(11) DEFAULT NULL COMMENT '拼团ID',
  `user_id` varchar(30) DEFAULT NULL COMMENT '用户ID',
  `time` timestamp NULL DEFAULT NULL COMMENT '用户参团时间',
  `role` varchar(30) DEFAULT '0' COMMENT '用户角色（默认 0：团长  userid:该用户分享进来的用户）',
  `lottery_status` int(11) DEFAULT '0' COMMENT '抽奖状态（0.参团中 1.待抽奖 2.参团失败 3.抽奖失败 4.抽奖成功）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='抽奖与用户关联表';

-- ----------------------------
-- Records of lkt_draw_user
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_draw_user_fromid
-- ----------------------------
DROP TABLE IF EXISTS `lkt_draw_user_fromid`;
CREATE TABLE `lkt_draw_user_fromid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open_id` char(40) NOT NULL DEFAULT '' COMMENT '用户openid',
  `fromid` char(50) NOT NULL DEFAULT '' COMMENT '用户fromid',
  `lifetime` datetime DEFAULT NULL COMMENT '生命周期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='抽奖用户fromid记录表';

-- ----------------------------
-- Records of lkt_draw_user_fromid
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_edition
-- ----------------------------
DROP TABLE IF EXISTS `lkt_edition`;
CREATE TABLE `lkt_edition` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 0:后台 1:小程序 2:app',
  `software_version` varchar(50) NOT NULL COMMENT '软件版本：0：开源版本 1:运营版本 2:商业版本',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `version` varchar(20) NOT NULL COMMENT '版本号',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '上一版本id',
  `old_version` varchar(20) NOT NULL COMMENT '老版本号',
  `download_url` varchar(100) NOT NULL COMMENT '下载网址',
  `version_abstract` varchar(500) DEFAULT '' COMMENT '版本简介',
  `release_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='检查版本';

-- ----------------------------
-- Records of lkt_edition
-- ----------------------------
INSERT INTO `lkt_edition` VALUES ('1', '2', '2', '后台1.04', '1.04', '9', '1.03', 'https://open.laiketui.com/a15a744a5ca77d41baa9d4f272f45dfd/LKT/zip/lkt_update_1.04.zip', '测试更新1.04版本', '2018-07-26 19:40:33');

-- ----------------------------
-- Table structure for lkt_experience
-- ----------------------------
DROP TABLE IF EXISTS `lkt_experience`;
CREATE TABLE `lkt_experience` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` char(15) NOT NULL DEFAULT '' COMMENT '用户id',
  `seller_id` char(15) NOT NULL DEFAULT '' COMMENT '商家id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `address` varchar(300) DEFAULT NULL COMMENT '地址',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `content` text NOT NULL COMMENT '内容',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 0:申请预约 1:已预约 2:取消预约 3:完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='预约表';

-- ----------------------------
-- Records of lkt_experience
-- ----------------------------
INSERT INTO `lkt_experience` VALUES ('1', 'user7', '', 'friendship', '15886551130', 'asdfghjkl', '1', '撒大大阿达打司法岛啊啊大的', '2018-02-06 10:55:03', '1');
INSERT INTO `lkt_experience` VALUES ('2', 'user7', '', 'friendship', '15886551130', 'asdfghjkl', '1', '撒大大阿达打司法岛啊啊大的', '2018-03-06 10:55:11', '1');
INSERT INTO `lkt_experience` VALUES ('3', 'user7', '', 'friendship', '15886551130', 'asdfghjkl', '1', '撒大大阿达打司法岛啊啊大的', '2018-03-06 10:55:19', '2');

-- ----------------------------
-- Table structure for lkt_express
-- ----------------------------
DROP TABLE IF EXISTS `lkt_express`;
CREATE TABLE `lkt_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kuaidi_name` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `type` varchar(255) DEFAULT NULL COMMENT '简称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='快递公司';

-- ----------------------------
-- Records of lkt_express
-- ----------------------------
INSERT INTO `lkt_express` VALUES ('1', 'aae全球专递', 'aae');
INSERT INTO `lkt_express` VALUES ('2', '安捷快递', 'anjie');
INSERT INTO `lkt_express` VALUES ('3', '安信达快递', 'anxindakuaixi');
INSERT INTO `lkt_express` VALUES ('4', '彪记快递', 'biaojikuaidi');
INSERT INTO `lkt_express` VALUES ('5', 'bht', 'bht');
INSERT INTO `lkt_express` VALUES ('6', '百福东方国际物流', 'baifudongfang');
INSERT INTO `lkt_express` VALUES ('7', '中国东方（COE）', 'coe');
INSERT INTO `lkt_express` VALUES ('8', '长宇物流', 'changyuwuliu');
INSERT INTO `lkt_express` VALUES ('9', '大田物流', 'datianwuliu');
INSERT INTO `lkt_express` VALUES ('10', '德邦物流', 'debangwuliu');
INSERT INTO `lkt_express` VALUES ('11', 'dhl', 'dhl');
INSERT INTO `lkt_express` VALUES ('12', 'dpex', 'dpex');
INSERT INTO `lkt_express` VALUES ('13', 'd速快递', 'dsukuaidi');
INSERT INTO `lkt_express` VALUES ('14', '递四方', 'disifang');
INSERT INTO `lkt_express` VALUES ('15', 'ems快递', 'ems');
INSERT INTO `lkt_express` VALUES ('16', 'fedex（国外）', 'fedex');
INSERT INTO `lkt_express` VALUES ('17', '飞康达物流', 'feikangda');
INSERT INTO `lkt_express` VALUES ('18', '凤凰快递', 'fenghuangkuaidi');
INSERT INTO `lkt_express` VALUES ('19', '飞快达', 'feikuaida');
INSERT INTO `lkt_express` VALUES ('20', '国通快递', 'guotongkuaidi');
INSERT INTO `lkt_express` VALUES ('21', '港中能达物流', 'ganzhongnengda');
INSERT INTO `lkt_express` VALUES ('22', '广东邮政物流', 'guangdongyouzhengwuliu');
INSERT INTO `lkt_express` VALUES ('23', '共速达', 'gongsuda');
INSERT INTO `lkt_express` VALUES ('24', '百世汇通', 'huitongkuaidi');
INSERT INTO `lkt_express` VALUES ('25', '恒路物流', 'hengluwuliu');
INSERT INTO `lkt_express` VALUES ('26', '华夏龙物流', 'huaxialongwuliu');
INSERT INTO `lkt_express` VALUES ('27', '海红', 'haihongwangsong');
INSERT INTO `lkt_express` VALUES ('28', '海外环球', 'haiwaihuanqiu');
INSERT INTO `lkt_express` VALUES ('29', '佳怡物流', 'jiayiwuliu');
INSERT INTO `lkt_express` VALUES ('30', '京广速递', 'jinguangsudikuaijian');
INSERT INTO `lkt_express` VALUES ('31', '急先达', 'jixianda');
INSERT INTO `lkt_express` VALUES ('32', '佳吉物流', 'jjwl');
INSERT INTO `lkt_express` VALUES ('33', '加运美物流', 'jymwl');
INSERT INTO `lkt_express` VALUES ('34', '金大物流', 'jindawuliu');
INSERT INTO `lkt_express` VALUES ('35', '嘉里大通', 'jialidatong');
INSERT INTO `lkt_express` VALUES ('36', '晋越快递', 'jykd');
INSERT INTO `lkt_express` VALUES ('37', '快捷速递', 'kuaijiesudi');
INSERT INTO `lkt_express` VALUES ('38', '联邦快递（国内）', 'lianb');
INSERT INTO `lkt_express` VALUES ('39', '联昊通物流', 'lianhaowuliu');
INSERT INTO `lkt_express` VALUES ('40', '龙邦物流', 'longbanwuliu');
INSERT INTO `lkt_express` VALUES ('41', '立即送', 'lijisong');
INSERT INTO `lkt_express` VALUES ('42', '乐捷递', 'lejiedi');
INSERT INTO `lkt_express` VALUES ('43', '民航快递', 'minghangkuaidi');
INSERT INTO `lkt_express` VALUES ('44', '美国快递', 'meiguokuaidi');
INSERT INTO `lkt_express` VALUES ('45', '门对门', 'menduimen');
INSERT INTO `lkt_express` VALUES ('46', 'OCS', 'ocs');
INSERT INTO `lkt_express` VALUES ('47', '配思货运', 'peisihuoyunkuaidi');
INSERT INTO `lkt_express` VALUES ('48', '全晨快递', 'quanchenkuaidi');
INSERT INTO `lkt_express` VALUES ('49', '全峰快递', 'quanfengkuaidi');
INSERT INTO `lkt_express` VALUES ('50', '全际通物流', 'quanjitong');
INSERT INTO `lkt_express` VALUES ('51', '全日通快递', 'quanritongkuaidi');
INSERT INTO `lkt_express` VALUES ('52', '全一快递', 'quanyikuaidi');
INSERT INTO `lkt_express` VALUES ('53', '如风达', 'rufengda');
INSERT INTO `lkt_express` VALUES ('54', '三态速递', 'santaisudi');
INSERT INTO `lkt_express` VALUES ('55', '盛辉物流', 'shenghuiwuliu');
INSERT INTO `lkt_express` VALUES ('56', '申通', 'shentong');
INSERT INTO `lkt_express` VALUES ('57', '顺丰', 'shunfeng');
INSERT INTO `lkt_express` VALUES ('58', '速尔物流', 'sue');
INSERT INTO `lkt_express` VALUES ('59', '盛丰物流', 'shengfeng');
INSERT INTO `lkt_express` VALUES ('60', '赛澳递', 'saiaodi');
INSERT INTO `lkt_express` VALUES ('61', '天地华宇', 'tiandihuayu');
INSERT INTO `lkt_express` VALUES ('62', '天天快递', 'tiantian');
INSERT INTO `lkt_express` VALUES ('63', 'tnt', 'tnt');
INSERT INTO `lkt_express` VALUES ('64', 'ups', 'ups');
INSERT INTO `lkt_express` VALUES ('65', '万家物流', 'wanjiawuliu');
INSERT INTO `lkt_express` VALUES ('66', '文捷航空速递', 'wenjiesudi');
INSERT INTO `lkt_express` VALUES ('67', '伍圆', 'wuyuan');
INSERT INTO `lkt_express` VALUES ('68', '万象物流', 'wxwl');
INSERT INTO `lkt_express` VALUES ('69', '新邦物流', 'xinbangwuliu');
INSERT INTO `lkt_express` VALUES ('70', '信丰物流', 'xinfengwuliu');
INSERT INTO `lkt_express` VALUES ('71', '亚风速递', 'yafengsudi');
INSERT INTO `lkt_express` VALUES ('72', '一邦速递', 'yibangwuliu');
INSERT INTO `lkt_express` VALUES ('73', '优速物流', 'youshuwuliu');
INSERT INTO `lkt_express` VALUES ('74', '邮政包裹挂号信', 'youzhengguonei');
INSERT INTO `lkt_express` VALUES ('75', '邮政国际包裹挂号信', 'youzhengguoji');
INSERT INTO `lkt_express` VALUES ('76', '远成物流', 'yuanchengwuliu');
INSERT INTO `lkt_express` VALUES ('77', '圆通速递', 'yuantong');
INSERT INTO `lkt_express` VALUES ('78', '源伟丰快递', 'yuanweifeng');
INSERT INTO `lkt_express` VALUES ('79', '元智捷诚快递', 'yuanzhijiecheng');
INSERT INTO `lkt_express` VALUES ('80', '韵达快运', 'yunda');
INSERT INTO `lkt_express` VALUES ('81', '运通快递', 'yuntongkuaidi');
INSERT INTO `lkt_express` VALUES ('82', '越丰物流', 'yuefengwuliu');
INSERT INTO `lkt_express` VALUES ('83', '源安达', 'yad');
INSERT INTO `lkt_express` VALUES ('84', '银捷速递', 'yinjiesudi');
INSERT INTO `lkt_express` VALUES ('85', '宅急送', 'zhaijisong');
INSERT INTO `lkt_express` VALUES ('86', '中铁快运', 'zhongtiekuaiyun');
INSERT INTO `lkt_express` VALUES ('87', '中通速递', 'zhongtong');
INSERT INTO `lkt_express` VALUES ('88', '中邮物流', 'zhongyouwuliu');
INSERT INTO `lkt_express` VALUES ('89', '忠信达', 'zhongxinda');
INSERT INTO `lkt_express` VALUES ('90', '芝麻开门', 'zhimakaimen');

-- ----------------------------
-- Table structure for lkt_extension
-- ----------------------------
DROP TABLE IF EXISTS `lkt_extension`;
CREATE TABLE `lkt_extension` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `image` varchar(50) NOT NULL COMMENT '图片路径',
  `sort` char(5) NOT NULL DEFAULT '100' COMMENT '排序号',
  `x` char(5) NOT NULL DEFAULT '0' COMMENT 'x坐标',
  `y` char(5) NOT NULL DEFAULT '0' COMMENT 'y坐标',
  `add_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `kuan` int(5) NOT NULL DEFAULT '150' COMMENT '二维码宽度',
  `type` int(2) NOT NULL COMMENT '海报类型',
  `keyword` varchar(100) NOT NULL COMMENT '关键词',
  `isdefault` int(2) DEFAULT '0' COMMENT '是否默认',
  `bg` varchar(200) DEFAULT NULL COMMENT '背景图片',
  `color` varchar(10) DEFAULT NULL COMMENT '颜色',
  `waittext` varchar(200) DEFAULT NULL COMMENT '等待语',
  `data` text COMMENT '排序的数据',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='推广图片表';

-- ----------------------------
-- Records of lkt_extension
-- ----------------------------
INSERT INTO `lkt_extension` VALUES ('14', '文章分享', '', '100', '0', '0', '2018-07-17 15:20:54', '150', '1', '文章分享', '1', '1531811958173.jpeg', '', '文章分享', '[{\"left\":\"95px\",\"top\":\"167px\",\"type\":\"qr\",\"width\":\"145px\",\"height\":\"145px\"}]');
INSERT INTO `lkt_extension` VALUES ('15', '发红包', '', '100', '0', '0', '2018-08-08 10:10:48', '150', '2', '红包', '1', '1532489740299.jpeg', '#000', '你的专属海报', '[{\"left\":\"122px\",\"top\":\"33px\",\"type\":\"head\",\"width\":\"80px\",\"height\":\"80px\"},{\"left\":\"53px\",\"top\":\"139px\",\"type\":\"nickname\",\"width\":\"223px\",\"height\":\"23px\",\"size\":\"10px\",\"color\":\"#000\"},{\"left\":\"101px\",\"top\":\"165px\",\"type\":\"qr\",\"width\":\"123px\",\"height\":\"123px\",\"size\":\"\"}]');
INSERT INTO `lkt_extension` VALUES ('16', '分销图片', '', '100', '0', '0', '2018-09-11 14:24:54', '150', '4', '分销图片', '1', '15363827815.jpeg', '', '您的专属海报正在拼命生成中，请等待片刻...', '[{\"left\":\"86px\",\"top\":\"399px\",\"type\":\"qr\",\"width\":\"55px\",\"height\":\"55px\",\"size\":\"\"},{\"left\":\"166px\",\"top\":\"398px\",\"type\":\"head\",\"width\":\"57px\",\"height\":\"57px\"}]');
INSERT INTO `lkt_extension` VALUES ('17', '商品', '', '100', '0', '0', '2018-09-08 13:51:35', '150', '3', '商品', '1', '1536385862517.jpeg', '', '商品', '[{\"left\":\"165px\",\"top\":\"393px\",\"type\":\"head\",\"width\":\"64px\",\"height\":\"64px\"},{\"left\":\"84px\",\"top\":\"395px\",\"type\":\"qr\",\"width\":\"60px\",\"height\":\"60px\"}]');

-- ----------------------------
-- Table structure for lkt_finance_config
-- ----------------------------
DROP TABLE IF EXISTS `lkt_finance_config`;
CREATE TABLE `lkt_finance_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `plug_ins_id` int(11) NOT NULL DEFAULT '0' COMMENT '插件id',
  `min_cz` int(11) DEFAULT NULL COMMENT '最小充值金额',
  `min_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '最少提现金额',
  `max_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '最大提现金额',
  `service_charge` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  `unit` varchar(50) NOT NULL DEFAULT '元' COMMENT '小程序钱包单位',
  `modify_date` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='钱包配置表';

-- ----------------------------
-- Records of lkt_finance_config
-- ----------------------------
INSERT INTO `lkt_finance_config` VALUES ('1', '2', '50', '50.00', '20000.00', '0.05', '元', '2018-05-08 15:35:23');

-- ----------------------------
-- Table structure for lkt_freight
-- ----------------------------
DROP TABLE IF EXISTS `lkt_freight`;
CREATE TABLE `lkt_freight` (
  `id` int(11) unsigned NOT NULL COMMENT 'id',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '名称',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 0:件 1:重量',
  `freight` text COMMENT '运费',
  `is_default` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 0:不默认 1:默认',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '添加时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='运费表';

-- ----------------------------
-- Records of lkt_freight
-- ----------------------------
INSERT INTO `lkt_freight` VALUES ('0', '偏远20运费/件模板', '0', 'a:1:{i:0;a:5:{s:3:\"one\";s:1:\"1\";s:3:\"two\";s:2:\"20\";s:5:\"three\";s:1:\"1\";s:4:\"four\";s:2:\"20\";s:4:\"name\";s:106:\"内蒙古自治区,西藏自治区,甘肃省,青海省,宁夏市,新疆省,台湾省,香港特别行政区\";}}', '0', '2018-09-11 17:08:34');

-- ----------------------------
-- Table structure for lkt_group_buy
-- ----------------------------
DROP TABLE IF EXISTS `lkt_group_buy`;
CREATE TABLE `lkt_group_buy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `groupname` varchar(100) NOT NULL DEFAULT '' COMMENT '拼团活动名称',
  `man_num` int(2) unsigned DEFAULT NULL COMMENT '拼团人数',
  `time_over` char(10) NOT NULL DEFAULT '' COMMENT '活动时限',
  `starttime` char(15) NOT NULL DEFAULT '' COMMENT '活动开始时间',
  `endtime` char(15) NOT NULL DEFAULT '' COMMENT '活动结束时间',
  `groupnum` int(2) unsigned DEFAULT NULL COMMENT '可同时进行的参团数',
  `productnum` int(2) unsigned DEFAULT NULL COMMENT '用户参团可购买产品数',
  `status` char(6) NOT NULL DEFAULT '' COMMENT '活动编号',
  `is_show` smallint(6) DEFAULT '0' COMMENT '是否正在执行? 0:未执行,1:执行',
  `overtype` char(2) DEFAULT NULL COMMENT '结束时间radio:1,长期 2,定期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='关于拼团活动设置';

-- ----------------------------
-- Records of lkt_group_buy
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_group_config
-- ----------------------------
DROP TABLE IF EXISTS `lkt_group_config`;
CREATE TABLE `lkt_group_config` (
  `refunmoney` smallint(6) NOT NULL COMMENT '退款方式: 1,自动 2,手动'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼团参数配置表';

-- ----------------------------
-- Records of lkt_group_config
-- ----------------------------
INSERT INTO `lkt_group_config` VALUES ('2');

-- ----------------------------
-- Table structure for lkt_group_open
-- ----------------------------
DROP TABLE IF EXISTS `lkt_group_open`;
CREATE TABLE `lkt_group_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` char(40) NOT NULL DEFAULT '' COMMENT '用户id',
  `ptgoods_id` int(11) DEFAULT NULL COMMENT '拼团商品id',
  `ptcode` varchar(50) DEFAULT NULL COMMENT '拼团编号',
  `ptnumber` int(11) DEFAULT NULL COMMENT '拼团人数',
  `addtime` datetime DEFAULT NULL COMMENT '创建日期',
  `endtime` datetime DEFAULT NULL COMMENT '结束时间',
  `ptstatus` tinyint(1) DEFAULT '0' COMMENT '0:未付款 1:拼团中，2:拼团成功, 3：拼团失败, ',
  `group_id` char(10) NOT NULL COMMENT '所属拼团',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户拼团表';

-- ----------------------------
-- Records of lkt_group_open
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_group_product
-- ----------------------------
DROP TABLE IF EXISTS `lkt_group_product`;
CREATE TABLE `lkt_group_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `attr_id` int(11) NOT NULL COMMENT '规格id',
  `group_id` int(11) DEFAULT NULL COMMENT '所属拼团',
  `product_id` int(11) unsigned DEFAULT NULL COMMENT '产品id',
  `group_price` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '拼团价格',
  `member_price` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '团长价',
  `classname` char(30) NOT NULL DEFAULT '' COMMENT '产品类名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='拼团产品';

-- ----------------------------
-- Records of lkt_group_product
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_guide
-- ----------------------------
DROP TABLE IF EXISTS `lkt_guide`;
CREATE TABLE `lkt_guide` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `image` varchar(200) NOT NULL DEFAULT '' COMMENT '图片',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='引导图表';

-- ----------------------------
-- Records of lkt_guide
-- ----------------------------
INSERT INTO `lkt_guide` VALUES ('1', '1529049789338.jpeg', '0', '1', '2018-06-15 16:03:11');
INSERT INTO `lkt_guide` VALUES ('2', '1529049817545.jpeg', '1', '100', '2018-06-15 16:03:38');

-- ----------------------------
-- Table structure for lkt_hotkeywords
-- ----------------------------
DROP TABLE IF EXISTS `lkt_hotkeywords`;
CREATE TABLE `lkt_hotkeywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lkt_hotkeywords
-- ----------------------------
INSERT INTO `lkt_hotkeywords` VALUES ('1', '男装');
INSERT INTO `lkt_hotkeywords` VALUES ('2', '手机');
INSERT INTO `lkt_hotkeywords` VALUES ('3', '智能手机');
INSERT INTO `lkt_hotkeywords` VALUES ('4', '一分钱');
INSERT INTO `lkt_hotkeywords` VALUES ('5', '华为手机');
INSERT INTO `lkt_hotkeywords` VALUES ('7', '小程序插件');

-- ----------------------------
-- Table structure for lkt_index_page
-- ----------------------------
DROP TABLE IF EXISTS `lkt_index_page`;
CREATE TABLE `lkt_index_page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `image` varchar(200) NOT NULL DEFAULT '' COMMENT '图片',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='首页模块表';

-- ----------------------------
-- Records of lkt_index_page
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_lottery_parameters
-- ----------------------------
DROP TABLE IF EXISTS `lkt_lottery_parameters`;
CREATE TABLE `lkt_lottery_parameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id ',
  `parameters` varchar(255) NOT NULL COMMENT '参数值',
  `user_id` varchar(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='抽奖参数表';

-- ----------------------------
-- Records of lkt_lottery_parameters
-- ----------------------------
INSERT INTO `lkt_lottery_parameters` VALUES ('5', '33', '1');

-- ----------------------------
-- Table structure for lkt_menu
-- ----------------------------
DROP TABLE IF EXISTS `lkt_menu`;
CREATE TABLE `lkt_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` char(15) NOT NULL DEFAULT '' COMMENT '客户id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `url` varchar(100) DEFAULT NULL COMMENT '路径',
  `image` varchar(200) DEFAULT NULL COMMENT '没选中图片',
  `selected_image` varchar(200) DEFAULT NULL COMMENT '选中图片',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='底部菜单表';

-- ----------------------------
-- Records of lkt_menu
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_money_point
-- ----------------------------
DROP TABLE IF EXISTS `lkt_money_point`;
CREATE TABLE `lkt_money_point` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(15) NOT NULL COMMENT '用户ID',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '奖金类型',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '应发金额',
  `s_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '实发金额',
  `fx_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '手续费一',
  `tax_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '手续费二',
  `o_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '手续费三',
  `si_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '手续费四',
  `w_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '手续费五',
  `isf` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否延迟发放',
  `f_time` time NOT NULL COMMENT '发放时间',
  `from_ordersn` varchar(15) NOT NULL COMMENT '订单编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖金收益表';

-- ----------------------------
-- Records of lkt_money_point
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_news_class
-- ----------------------------
DROP TABLE IF EXISTS `lkt_news_class`;
CREATE TABLE `lkt_news_class` (
  `cat_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '新闻分类id',
  `cat_name` char(15) DEFAULT NULL COMMENT '分类名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻分类';

-- ----------------------------
-- Records of lkt_news_class
-- ----------------------------
INSERT INTO `lkt_news_class` VALUES ('1', '财富时报', '2', '2018-02-04 09:16:03');
INSERT INTO `lkt_news_class` VALUES ('4', '金融世界', '3', '2018-02-05 02:27:22');

-- ----------------------------
-- Table structure for lkt_news_list
-- ----------------------------
DROP TABLE IF EXISTS `lkt_news_list`;
CREATE TABLE `lkt_news_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '新闻id',
  `news_title` varchar(100) NOT NULL DEFAULT '' COMMENT '新闻标题',
  `news_class` int(11) NOT NULL COMMENT '新闻类别',
  `imgurl` varchar(200) NOT NULL DEFAULT '' COMMENT '新闻图片',
  `content` text NOT NULL COMMENT '新闻内容',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `author` varchar(100) NOT NULL COMMENT '作者',
  `clicking_num` int(11) NOT NULL DEFAULT '0' COMMENT '点击率',
  `share_num` int(11) NOT NULL DEFAULT '0' COMMENT '分享次数',
  `total_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '红包总金额',
  `total_num` int(11) NOT NULL DEFAULT '0' COMMENT '红包个数',
  `wishing` varchar(100) NOT NULL DEFAULT '' COMMENT '祝福语',
  `t_link` varchar(255) DEFAULT NULL COMMENT '推广二维码图片链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻表';

-- ----------------------------
-- Records of lkt_news_list
-- ----------------------------
INSERT INTO `lkt_news_list` VALUES ('1', '周杰伦', '4', '152265267288.jpg', '<p><span style=\"color: #a31515;\">不支持HTML、没有 Dom。网页用的 JS、CSS 基本要全部重写，WXML 的语法和 HTML 差异还挺大，基本是一个个照着手册的属性去改。CSS 选择器不支持级联。不支持HTML、没有 Dom。网页用的 JS、CSS 基本要全部重写，WXML 的语法和 HTML 差异还挺大，基本是一个个照着手册的属性去改。CSS 选择器不支持级联。不支持HTML、没有 Dom。网页用的 JS、CSS 基本要全部重写，WXML 的语法和 HTML 差异还挺大，基本是一个个照着手册的属性去改。CSS 选择器不支持级联。</span></p><p><br/></p>', '100', '2018-02-05 01:47:13', '周杰伦', '0', '39', '0.00', '0', '', '');
INSERT INTO `lkt_news_list` VALUES ('3', '阿银', '1', '', '<p><span style=\"color: #a31515;\">&nbsp;&nbsp;&nbsp;&nbsp;银针</span></p><p><br/></p>', '100', '2018-02-05 01:52:31', '', '0', '13', '0.00', '-1', '', null);
INSERT INTO `lkt_news_list` VALUES ('4', '白晶晶', '1', '', '<p><span style=\"color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">1、对接公司的合同资料收集，录入登记和审核；</span><br style=\"outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">2、每月的业绩结算及相关文案编辑，有PS兴趣最好；</span><br style=\"outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">3、基本的部门行政管理；</span><br style=\"outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">4、平时团队工作和总监交代的临时性工作等；</span><br style=\"outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">5、公司提供住宿。</span><br style=\"outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">任职要求：</span><br style=\"outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">1、正规大专或本科学历，20-30岁；</span><br style=\"outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">2、性格具有亲和力，工作有耐心，学习力强，具有较强的团队意识和较好的协调能力，有责任心，熟悉EXCEL等基本操作表格，能有一定的财务知识更佳。</span><br style=\"outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(46, 52, 59); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">地址：长沙市岳麓区绿地中央广场5栋3408房</span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180306/1520338077416397.png\" title=\"1520338077416397.png\" alt=\"xcx.png\"/></p>', '2', '2018-02-05 01:53:24', '白晶晶', '0', '110', '68.30', '52', '恭喜发财', '');
INSERT INTO `lkt_news_list` VALUES ('5', '彭于晏', '1', '', '<p><span style=\"color: #a31515;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦帅哦</span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20180307/1520389697211502.gif\" title=\"1520389697211502.gif\" alt=\"123.gif\"/></p>', '3', '2018-02-05 01:57:12', '123', '0', '219', '76.11', '55', '恭喜发财', '');
INSERT INTO `lkt_news_list` VALUES ('6', '红包测试', '4', 'a4ee9de023578bea07da2a73c1f90d61.jpg', '<p>红包测试红包测试红包测试</p>', '100', '2018-03-07 10:16:02', '红包测试', '0', '12', '178.32', '41', '恭喜发财哈', 'timg.jpg');
INSERT INTO `lkt_news_list` VALUES ('7', '1111', '4', '152274143771.gif', '<p>222</p>', '100', '2018-04-03 15:43:57', '22', '0', '0', '0.00', '0', '', '152274143715.gif');

-- ----------------------------
-- Table structure for lkt_notice
-- ----------------------------
DROP TABLE IF EXISTS `lkt_notice`;
CREATE TABLE `lkt_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配置id',
  `pay_success` varchar(100) DEFAULT NULL COMMENT '购买成功通知',
  `order_delivery` varchar(100) DEFAULT NULL COMMENT '订单发货提醒',
  `order_success` varchar(100) DEFAULT NULL COMMENT '订单支付成功通知',
  `group_pay_success` varchar(100) DEFAULT NULL COMMENT '开团成功提醒',
  `group_pending` varchar(100) DEFAULT NULL COMMENT '拼团待成团提醒',
  `group_success` varchar(100) DEFAULT NULL COMMENT '拼团成功通知',
  `group_fail` varchar(100) DEFAULT NULL COMMENT '拼团失败通知',
  `lottery_res` varchar(100) DEFAULT NULL COMMENT '抽奖结果通知',
  `refund_success` varchar(100) DEFAULT NULL COMMENT '退款成功通知',
  `refund_res` varchar(100) DEFAULT NULL COMMENT '退款通知',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='模板消息表';

-- ----------------------------
-- Records of lkt_notice
-- ----------------------------
INSERT INTO `lkt_notice` VALUES ('1', 'Lff-mMcsn1Guz7k7tULw4iCyCXFuTNSCCXrA7z8mfwA', 'tBAPAOk-JB7Bd2oiNgSST7EKnloXjSDO1Ni_6F9D9lw', '52l_Ehm0234_htgNLHwESLFgskOk0oh4_KZ1xwTACwc', 'rdlXlqI8j1hedHVRmGrrUg-TkkhPIuuITAoctCLpDeE', 'n-kS0p__QG2oO07D1PDFTP33fz6sXursizOgyPeezGU', '6rWrxmEi6xzPKqAJIIvWXPujcVHsYIEukjJJPoGwgyk', '8_f3kLrvqG5PS4wNFHa3q1Hy6yUD4AjPc_YYMmIyFHE', 'q9U74dDivGbX12yIMR3R7S06LpJB_0IYuSTLpreV_Jc', '4UjfL_KSxQbrBZVJjlvR0LvyNKInAS_vnwJaxwXU80o', 'dVmS2GnMb9_sGOjJRsyi4NbwbqigPX_-KJddjwEQBCY');

-- ----------------------------
-- Table structure for lkt_order
-- ----------------------------
DROP TABLE IF EXISTS `lkt_order`;
CREATE TABLE `lkt_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` char(15) NOT NULL COMMENT '用户id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(20) NOT NULL COMMENT '联系电话',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `z_price` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '总价',
  `sNo` varchar(255) NOT NULL COMMENT '订单号',
  `sheng` int(11) DEFAULT NULL COMMENT '省',
  `shi` int(11) DEFAULT NULL COMMENT '市',
  `xian` int(11) DEFAULT NULL COMMENT '县',
  `address` text COMMENT '详细地址',
  `remark` varchar(32) NOT NULL COMMENT '用户备注',
  `pay` char(15) NOT NULL COMMENT '支付方式',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `arrive_time` timestamp NULL DEFAULT NULL COMMENT '到货时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0：未付款 1：未发货 2：待收货 3：待评论 4：退货 5:已完成 6 订单关闭 9拼团中 10 拼团失败-未退款 11 拼团失败-已退款 ',
  `coupon_id` int(11) DEFAULT '0' COMMENT '优惠券id',
  `consumer_money` int(11) NOT NULL DEFAULT '0' COMMENT '消费金',
  `coupon_activity_name` varchar(50) DEFAULT '0' COMMENT '满减活动名称',
  `drawid` int(11) NOT NULL DEFAULT '0' COMMENT '活动ID',
  `otype` char(30) NOT NULL DEFAULT '' COMMENT '订单类型',
  `ptcode` char(15) NOT NULL DEFAULT '' COMMENT '拼团编号',
  `pid` char(10) NOT NULL DEFAULT '' COMMENT '所属团号',
  `ptstatus` smallint(6) DEFAULT NULL COMMENT '拼团状态:0,未付款 1,拼团中 2,拼团成功 3,拼团失败',
  `refundsNo` char(30) NOT NULL DEFAULT '' COMMENT '拼团退款单号',
  `trade_no` char(20) NOT NULL DEFAULT '' COMMENT '微信支付单号',
  `is_anonymous` int(1) NOT NULL DEFAULT '0' COMMENT '是否匿名(0,否  1.是',
  `logistics_service` int(1) DEFAULT NULL COMMENT '物流服务',
  `overall_evaluation` int(1) DEFAULT NULL COMMENT '总体评价',
  `spz_price` decimal(10,2) DEFAULT '0.00' COMMENT '商品总价',
  `reduce_price` decimal(10,2) DEFAULT '0.00' COMMENT '查询出的满减金额',
  `coupon_price` decimal(10,2) DEFAULT '0.00' COMMENT '查询出的优惠券金额',
  `red_packet` varchar(255) DEFAULT '0' COMMENT '红包金额',
  `allow` int(8) DEFAULT '0' COMMENT '积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单列表';

-- ----------------------------
-- Records of lkt_order
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_order_config
-- ----------------------------
DROP TABLE IF EXISTS `lkt_order_config`;
CREATE TABLE `lkt_order_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `days` int(11) DEFAULT NULL COMMENT '承若天数',
  `content` varchar(30) DEFAULT NULL COMMENT '承若内容',
  `back` int(11) NOT NULL DEFAULT '2' COMMENT '退货时间',
  `order_overdue` int(11) NOT NULL DEFAULT '2' COMMENT '订单过期删除时间',
  `unit` varchar(50) NOT NULL DEFAULT '天' COMMENT '单位',
  `modify_date` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单设置';

-- ----------------------------
-- Records of lkt_order_config
-- ----------------------------
INSERT INTO `lkt_order_config` VALUES ('1', '0', '', '1', '1', '天', '2018-09-11 17:11:04');

-- ----------------------------
-- Table structure for lkt_order_details
-- ----------------------------
DROP TABLE IF EXISTS `lkt_order_details`;
CREATE TABLE `lkt_order_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` char(15) DEFAULT NULL COMMENT '用户id',
  `p_id` int(11) DEFAULT NULL COMMENT '产品id',
  `p_name` varchar(50) DEFAULT NULL COMMENT '产品名称',
  `p_price` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '产品价格',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `unit` varchar(50) DEFAULT NULL COMMENT '单位',
  `r_sNo` varchar(255) DEFAULT NULL COMMENT '订单号',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `deliver_time` timestamp NULL DEFAULT NULL COMMENT '发货时间',
  `arrive_time` timestamp NULL DEFAULT NULL COMMENT '到货时间',
  `r_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT ' ''状态 0：未付款 1：未发货 2：待收货 3：待评论 4：退货 5:已完成 6 订单关闭 9拼团中 10 拼团失败-未退款 11 拼团失败-已退款''',
  `content` text COMMENT '退货原因',
  `reason` char(60) DEFAULT NULL COMMENT 'app退款原因',
  `re_money` float(12,2) DEFAULT NULL COMMENT '退款金额',
  `re_time` datetime DEFAULT NULL COMMENT '申请退款时间',
  `re_photo` char(20) DEFAULT '' COMMENT '上传凭证',
  `r_content` text COMMENT '拒绝原因',
  `r_type` tinyint(4) DEFAULT '0' COMMENT '类型 0:审核中 1:同意并发货 2:拒绝 3:用户已快递 4:同意并退款 5：拒绝并退回商品',
  `express_id` int(255) DEFAULT NULL COMMENT '快递公司id',
  `courier_num` varchar(40) DEFAULT NULL COMMENT '快递单号',
  `freight` int(4) DEFAULT '12' COMMENT '运费',
  `size` varchar(100) NOT NULL COMMENT '配置名称',
  `sid` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单详情列表';

-- ----------------------------
-- Records of lkt_order_details
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_plug_ins
-- ----------------------------
DROP TABLE IF EXISTS `lkt_plug_ins`;
CREATE TABLE `lkt_plug_ins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `software_id` varchar(60) NOT NULL DEFAULT '' COMMENT '软件id',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '首页插件名称',
  `subtitle_name` varchar(60) NOT NULL DEFAULT '' COMMENT '个人中心插件名称',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 0：小程序 1：app',
  `image` varchar(255) NOT NULL COMMENT '首页插件图片',
  `subtitle_image` varchar(255) NOT NULL COMMENT '个人中心插件图片',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '首页链接',
  `subtitle_url` varchar(100) NOT NULL DEFAULT '' COMMENT '个人中心链接',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0：未启用 1：启用',
  `Customer_id` varchar(15) NOT NULL COMMENT '客户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='插件表';

-- ----------------------------
-- Records of lkt_plug_ins
-- ----------------------------
INSERT INTO `lkt_plug_ins` VALUES ('1', '3', '优惠劵', '我的优惠劵', '0', '1536672153816.png', '1536672174206.png', '../coupon/index?currentTab=0&type=receive', '../coupon/index?currentTab=1', '2018-09-11 21:22:56', '2', '1', '');
INSERT INTO `lkt_plug_ins` VALUES ('2', '3', '钱包', '我的钱包', '0', '152947012151.png', '1536672213410.png', '../user/wallet', '../user/wallet', '2018-09-11 21:23:34', '1', '1', '');
INSERT INTO `lkt_plug_ins` VALUES ('3', '3', '签到', '我的积分', '0', '1536672237251.png', '153667225864.png', '../sign_in/sign_in', '../user/score', '2018-09-11 21:24:19', '4', '1', '');
INSERT INTO `lkt_plug_ins` VALUES ('4', '3', '抽奖', '我的抽奖', '0', '153667229722.png', '1536672313479.png', '../draw/draw', '../order/order?currentTab=0&otype=pay5', '2018-09-11 21:25:14', '3', '1', '');
INSERT INTO `lkt_plug_ins` VALUES ('5', '3', '拼团', '我的拼团', '0', '153667233179.png', '1536672343773.png', '../group_buy/group', '../order/order?currentTab=0&otype=pay6', '2018-09-11 21:25:44', '5', '1', '');

-- ----------------------------
-- Table structure for lkt_product_class
-- ----------------------------
DROP TABLE IF EXISTS `lkt_product_class`;
CREATE TABLE `lkt_product_class` (
  `cid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `sid` int(11) DEFAULT NULL COMMENT '上级id',
  `pname` char(15) DEFAULT NULL COMMENT '分类名称',
  `img` varchar(200) NOT NULL DEFAULT '' COMMENT '分类图片',
  `bg` varchar(255) DEFAULT NULL COMMENT '背景图片',
  `seller_id` char(15) DEFAULT NULL COMMENT '商家id',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='产品分类';

-- ----------------------------
-- Records of lkt_product_class
-- ----------------------------
INSERT INTO `lkt_product_class` VALUES ('46', '0', '测试', '', '', null, '100', '2018-09-11 21:31:24');

-- ----------------------------
-- Table structure for lkt_product_config
-- ----------------------------
DROP TABLE IF EXISTS `lkt_product_config`;
CREATE TABLE `lkt_product_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `config` text COMMENT '配置',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='产品配置表';

-- ----------------------------
-- Records of lkt_product_config
-- ----------------------------
INSERT INTO `lkt_product_config` VALUES ('1', 'a:1:{s:13:\"min_inventory\";s:2:\"10\";}', '2018-09-11 16:02:41');

-- ----------------------------
-- Table structure for lkt_product_img
-- ----------------------------
DROP TABLE IF EXISTS `lkt_product_img`;
CREATE TABLE `lkt_product_img` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `product_url` varchar(100) NOT NULL COMMENT '产品图片',
  `product_id` int(11) NOT NULL COMMENT '所属产品id',
  `seller_id` char(15) NOT NULL DEFAULT '' COMMENT '用户id',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='图片表';

-- ----------------------------
-- Records of lkt_product_img
-- ----------------------------
INSERT INTO `lkt_product_img` VALUES ('203', '15366727673.jpg', '-1', '', '2018-09-11 21:32:47');
INSERT INTO `lkt_product_img` VALUES ('204', '153667319498.jpg', '79', '', '2018-09-11 21:39:54');

-- ----------------------------
-- Table structure for lkt_product_list
-- ----------------------------
DROP TABLE IF EXISTS `lkt_product_list`;
CREATE TABLE `lkt_product_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `product_title` varchar(100) NOT NULL DEFAULT '' COMMENT '产品名字',
  `subtitle` varchar(100) NOT NULL COMMENT '小标题',
  `product_class` varchar(32) NOT NULL COMMENT '产品类别',
  `imgurl` varchar(200) NOT NULL DEFAULT '' COMMENT '产品图片',
  `content` text NOT NULL COMMENT '产品内容',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `volume` int(12) NOT NULL DEFAULT '0' COMMENT '销量',
  `s_type` varchar(20) NOT NULL COMMENT '产品值属性 1：新品,2：热销，3：推荐',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `status` tinyint(3) DEFAULT '0' COMMENT '状态 0:上架 1:下架',
  `seller_id` char(15) NOT NULL DEFAULT '' COMMENT '用户id',
  `brand_id` int(11) NOT NULL DEFAULT '0' COMMENT '品牌ID',
  `is_distribution` int(2) NOT NULL DEFAULT '0' COMMENT '是否为分销商品',
  `is_default_ratio` int(2) NOT NULL DEFAULT '0' COMMENT '是否默认比例',
  `keyword` varchar(100) NOT NULL COMMENT '关键词',
  `distributor_id` int(5) DEFAULT '0' COMMENT '分销等级id 购买就升级',
  `freight` text NOT NULL COMMENT '运费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='产品表';

-- ----------------------------
-- Records of lkt_product_list
-- ----------------------------
INSERT INTO `lkt_product_list` VALUES ('79', '测试商品请勿购买', '测试商品请勿购买', '-46-', '1536673159845.png', '<p><img src=\"/ueditor/php/upload/image/20180911/1536673239873717.jpg\" title=\"1536673239873717.jpg\" alt=\"152265914016.jpg\"/></p>', '100', '2018-09-11 21:39:54', '0', '1,2,3', '1', '0', '', '9', '0', '0', '测试商品请勿购买', '0', '0');

-- ----------------------------
-- Table structure for lkt_record
-- ----------------------------
DROP TABLE IF EXISTS `lkt_record`;
CREATE TABLE `lkt_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` char(15) DEFAULT NULL COMMENT '用户id',
  `money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '操作金额',
  `oldmoney` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '原有金额',
  `add_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `event` varchar(255) DEFAULT NULL COMMENT '事件',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 0:登录/退出 1:充值 2:提现 3:分享4:余额消费 5:退款 6红包提现 7佣金 8管理佣金 9 待定 10 消费金 11 系统扣款 12给好友转账  13 转账给好友',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='操作记录表';

-- ----------------------------
-- Records of lkt_record
-- ----------------------------
INSERT INTO `lkt_record` VALUES ('1', '35', '0.00', '0.00', '2018-09-11 10:10:11', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('2', '6', '0.00', '0.00', '2018-09-11 10:10:12', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('3', '2', '0.00', '0.00', '2018-09-11 10:10:30', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('4', '2', '0.00', '0.00', '2018-09-11 10:10:32', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('5', '35', '0.00', '0.00', '2018-09-11 10:12:04', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('6', '2', '0.00', '0.00', '2018-09-11 10:12:16', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('7', '2', '0.00', '0.00', '2018-09-11 10:12:18', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('8', '22', '0.00', '0.00', '2018-09-11 10:12:22', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('9', '22', '0.00', '0.00', '2018-09-11 10:12:25', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('10', '2', '18888.00', '96202.00', '2018-09-11 10:12:29', '2使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('11', '2', '0.00', '0.00', '2018-09-11 10:12:51', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('12', '2', '0.00', '0.00', '2018-09-11 10:12:53', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('13', '11', '0.00', '0.00', '2018-09-11 10:12:57', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('14', '6', '0.00', '0.00', '2018-09-11 10:13:05', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('15', '6', '0.00', '0.00', '2018-09-11 10:13:09', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('16', '11', '18888.00', '85955.00', '2018-09-11 10:13:31', '11使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('17', '2', '1888.00', '1888.00', '2018-09-11 10:13:31', '2获得了1888元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('18', '0', '888.00', '888.00', '2018-09-11 10:13:31', '0获得了888元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('19', '22', '0.00', '0.00', '2018-09-11 10:13:48', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('20', '22', '0.00', '0.00', '2018-09-11 10:13:49', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('21', '11', '0.00', '0.00', '2018-09-11 10:14:14', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('22', '32', '0.00', '0.00', '2018-09-11 10:14:22', '会员32登录', '0');
INSERT INTO `lkt_record` VALUES ('23', '32', '398.00', '76826.00', '2018-09-11 10:15:01', '32使用了398元余额', '4');
INSERT INTO `lkt_record` VALUES ('24', '11', '89.00', '89.00', '2018-09-11 10:15:02', '11获得了89元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('25', '2', '10.00', '10.00', '2018-09-11 10:15:02', '2获得了10元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('26', '2', '0.00', '0.00', '2018-09-11 10:16:05', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('27', '2', '0.00', '0.00', '2018-09-11 10:16:07', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('28', 'admin', '0.00', '0.00', '2018-09-11 10:16:31', '登录成功', '0');
INSERT INTO `lkt_record` VALUES ('29', '32', '0.00', '0.00', '2018-09-11 10:16:54', '会员32登录', '0');
INSERT INTO `lkt_record` VALUES ('30', '35', '0.00', '0.00', '2018-09-11 10:16:57', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('31', '6', '0.00', '0.00', '2018-09-11 10:17:02', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('32', '35', '0.00', '0.00', '2018-09-11 10:17:03', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('33', '35', '0.00', '0.00', '2018-09-11 10:17:05', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('34', '4', '0.00', '0.00', '2018-09-11 10:19:56', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('35', '4', '0.00', '0.00', '2018-09-11 10:19:57', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('36', 'admin', '0.00', '0.00', '2018-09-11 10:20:36', '登录成功', '0');
INSERT INTO `lkt_record` VALUES ('37', '4', '0.00', '0.00', '2018-09-11 10:21:23', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('38', '11', '0.00', '0.00', '2018-09-11 10:21:57', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('39', '11', '0.00', '0.00', '2018-09-11 10:22:00', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('40', '35', '50000.00', '50000.00', '2018-09-11 10:22:04', '35系统充值50000余额', '1');
INSERT INTO `lkt_record` VALUES ('41', '11', '0.00', '0.00', '2018-09-11 10:24:58', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('42', '4', '0.00', '0.00', '2018-09-11 10:26:23', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('43', '35', '0.00', '0.00', '2018-09-11 10:27:10', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('44', '35', '18888.00', '53558.00', '2018-09-11 10:27:16', '35使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('45', '11', '888.00', '888.00', '2018-09-11 10:27:16', '11获得了888元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('46', '11', '0.00', '0.00', '2018-09-11 10:28:47', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('47', '2', '0.00', '0.00', '2018-09-11 10:29:02', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('48', '35', '0.00', '0.00', '2018-09-11 10:32:27', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('49', '35', '0.00', '0.00', '2018-09-11 10:32:38', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('50', '35', '0.00', '0.00', '2018-09-11 10:32:47', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('51', '25', '0.00', '0.00', '2018-09-11 10:33:14', '会员25登录', '0');
INSERT INTO `lkt_record` VALUES ('52', '25', '0.00', '0.00', '2018-09-11 10:33:15', '会员25登录', '0');
INSERT INTO `lkt_record` VALUES ('53', '25', '0.00', '0.00', '2018-09-11 10:33:50', '会员25登录', '0');
INSERT INTO `lkt_record` VALUES ('54', '11', '0.00', '0.00', '2018-09-11 10:33:53', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('55', '25', '18888.00', '98498.38', '2018-09-11 10:34:25', '25使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('56', '35', '1888.00', '1888.00', '2018-09-11 10:34:25', '35获得了1888元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('57', '32', '10.00', '10.00', '2018-09-11 10:34:25', '32获得了10元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('58', '35', '0.00', '0.00', '2018-09-11 10:36:11', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('59', '32', '0.00', '0.00', '2018-09-11 10:36:50', '会员32登录', '0');
INSERT INTO `lkt_record` VALUES ('60', '36', '0.00', '0.00', '2018-09-11 10:37:08', '会员36登录', '0');
INSERT INTO `lkt_record` VALUES ('61', '36', '0.00', '0.00', '2018-09-11 10:37:10', '会员36登录', '0');
INSERT INTO `lkt_record` VALUES ('62', '35', '18888.00', '42446.00', '2018-09-11 10:37:35', '35使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('63', '11', '888.00', '888.00', '2018-09-11 10:37:35', '11获得了888元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('64', '36', '0.00', '0.00', '2018-09-11 10:37:37', '会员36登录', '0');
INSERT INTO `lkt_record` VALUES ('65', '6', '0.00', '0.00', '2018-09-11 10:39:33', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('66', '6', '0.00', '0.00', '2018-09-11 10:39:35', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('67', '22', '0.00', '0.00', '2018-09-11 10:39:35', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('68', '22', '0.00', '0.00', '2018-09-11 10:39:37', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('69', '4', '0.00', '0.00', '2018-09-11 10:43:17', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('70', '4', '0.00', '0.00', '2018-09-11 10:43:18', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('71', '36', '0.00', '0.00', '2018-09-11 10:43:46', '会员36登录', '0');
INSERT INTO `lkt_record` VALUES ('72', '36', '0.00', '0.00', '2018-09-11 10:43:48', '会员36登录', '0');
INSERT INTO `lkt_record` VALUES ('73', '6', '0.00', '0.00', '2018-09-11 10:49:02', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('74', '2', '0.00', '0.00', '2018-09-11 10:55:01', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('75', '6', '0.00', '0.00', '2018-09-11 10:55:01', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('76', '6', '0.00', '0.00', '2018-09-11 10:55:03', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('77', '35', '0.00', '0.00', '2018-09-11 10:55:40', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('78', '35', '0.00', '0.00', '2018-09-11 10:56:07', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('79', '11', '0.00', '0.00', '2018-09-11 10:58:07', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('80', '11', '0.00', '0.00', '2018-09-11 10:58:08', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('81', '26', '0.00', '0.00', '2018-09-11 10:58:17', '会员26登录', '0');
INSERT INTO `lkt_record` VALUES ('82', '26', '0.00', '0.00', '2018-09-11 10:58:18', '会员26登录', '0');
INSERT INTO `lkt_record` VALUES ('83', '26', '398.00', '85979.00', '2018-09-11 10:58:34', '26使用了398元余额', '4');
INSERT INTO `lkt_record` VALUES ('84', '35', '89.00', '89.00', '2018-09-11 10:58:35', '35获得了89元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('85', '32', '10.00', '10.00', '2018-09-11 10:58:35', '32获得了10元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('86', '35', '0.00', '0.00', '2018-09-11 10:58:46', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('87', '11', '0.00', '0.00', '2018-09-11 10:59:40', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('88', '2', '0.00', '0.00', '2018-09-11 11:00:09', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('89', '35', '0.00', '0.00', '2018-09-11 11:02:33', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('90', '35', '0.00', '0.00', '2018-09-11 11:02:50', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('91', '35', '0.00', '0.00', '2018-09-11 11:02:52', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('92', '32', '0.00', '0.00', '2018-09-11 11:03:23', '会员32登录', '0');
INSERT INTO `lkt_record` VALUES ('93', '26', '18888.00', '85581.00', '2018-09-11 11:04:25', '26使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('94', '32', '888.00', '888.00', '2018-09-11 11:04:25', '32获得了888元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('95', '11', '0.00', '0.00', '2018-09-11 11:05:43', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('96', '4', '0.00', '0.00', '2018-09-11 11:06:18', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('97', '4', '0.00', '0.00', '2018-09-11 11:06:19', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('98', '26', '0.00', '0.00', '2018-09-11 11:07:11', '会员26登录', '0');
INSERT INTO `lkt_record` VALUES ('99', '4', '0.00', '0.00', '2018-09-11 11:07:42', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('100', '11', '0.00', '0.00', '2018-09-11 11:07:49', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('101', '4', '0.00', '0.00', '2018-09-11 11:08:02', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('102', '4', '0.00', '0.00', '2018-09-11 11:08:36', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('103', '11', '0.00', '0.00', '2018-09-11 11:10:50', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('104', '6', '0.00', '0.00', '2018-09-11 11:14:11', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('105', '4', '0.00', '0.00', '2018-09-11 11:14:48', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('106', '6', '0.00', '0.00', '2018-09-11 11:16:05', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('107', '26', '0.00', '0.00', '2018-09-11 11:16:27', '会员26登录', '0');
INSERT INTO `lkt_record` VALUES ('108', '26', '0.00', '0.00', '2018-09-11 11:16:28', '会员26登录', '0');
INSERT INTO `lkt_record` VALUES ('109', '26', '0.00', '0.00', '2018-09-11 11:17:47', '会员26登录', '0');
INSERT INTO `lkt_record` VALUES ('110', '26', '398.00', '66693.00', '2018-09-11 11:17:57', '26使用了398元余额', '4');
INSERT INTO `lkt_record` VALUES ('111', '35', '89.00', '89.00', '2018-09-11 11:17:57', '35获得了89元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('112', '32', '10.00', '10.00', '2018-09-11 11:17:57', '32获得了10元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('113', '4', '0.00', '0.00', '2018-09-11 11:18:08', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('114', '4', '0.00', '0.00', '2018-09-11 11:18:10', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('115', '6', '0.00', '0.00', '2018-09-11 11:18:12', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('116', '26', '3888.00', '66295.00', '2018-09-11 11:18:43', '26使用了3888元余额', '4');
INSERT INTO `lkt_record` VALUES ('117', '32', '100.00', '100.00', '2018-09-11 11:18:43', '32获得了100元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('118', '22', '0.00', '0.00', '2018-09-11 11:19:44', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('119', '22', '0.00', '0.00', '2018-09-11 11:19:46', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('120', '6', '0.00', '0.00', '2018-09-11 11:21:26', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('121', '6', '0.00', '0.00', '2018-09-11 11:22:57', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('122', '35', '0.00', '0.00', '2018-09-11 11:25:41', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('123', '32', '0.00', '0.00', '2018-09-11 11:25:55', '会员32登录', '0');
INSERT INTO `lkt_record` VALUES ('124', '32', '0.00', '0.00', '2018-09-11 11:25:56', '会员32登录', '0');
INSERT INTO `lkt_record` VALUES ('125', '35', '0.00', '0.00', '2018-09-11 11:26:37', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('126', '35', '0.00', '0.00', '2018-09-11 11:26:39', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('127', '35', '0.00', '0.00', '2018-09-11 11:28:53', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('128', '26', '0.00', '0.00', '2018-09-11 11:29:10', '会员26登录', '0');
INSERT INTO `lkt_record` VALUES ('129', '35', '0.00', '0.00', '2018-09-11 11:31:46', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('130', '35', '0.00', '0.00', '2018-09-11 11:31:48', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('131', '35', '0.00', '0.00', '2018-09-11 11:33:34', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('132', '35', '0.00', '0.00', '2018-09-11 11:33:35', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('133', '26', '0.00', '0.00', '2018-09-11 11:33:57', '会员26登录', '0');
INSERT INTO `lkt_record` VALUES ('134', '4', '0.00', '0.00', '2018-09-11 11:34:40', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('135', '4', '0.00', '0.00', '2018-09-11 11:34:41', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('136', '4', '0.00', '0.00', '2018-09-11 11:35:27', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('137', '2', '0.00', '0.00', '2018-09-11 11:35:47', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('138', '35', '0.00', '0.00', '2018-09-11 11:35:50', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('139', '35', '0.00', '0.00', '2018-09-11 11:35:50', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('140', '6', '0.00', '0.00', '2018-09-11 11:35:57', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('141', '6', '0.00', '0.00', '2018-09-11 11:35:58', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('142', '4', '0.00', '0.00', '2018-09-11 11:35:58', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('143', '4', '0.00', '0.00', '2018-09-11 11:36:00', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('144', '35', '398.00', '23914.00', '2018-09-11 11:36:05', '35使用了398元余额', '4');
INSERT INTO `lkt_record` VALUES ('145', '26', '89.00', '89.00', '2018-09-11 11:36:05', '26获得了89元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('146', '32', '10.00', '10.00', '2018-09-11 11:36:05', '32获得了10元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('147', '35', '3888.00', '23516.00', '2018-09-11 11:37:24', '35使用了3888元余额', '4');
INSERT INTO `lkt_record` VALUES ('148', '32', '100.00', '100.00', '2018-09-11 11:37:24', '32获得了100元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('149', '6', '0.00', '0.00', '2018-09-11 11:37:36', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('150', '4', '0.00', '0.00', '2018-09-11 11:38:12', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('151', '4', '0.00', '0.00', '2018-09-11 11:39:06', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('152', '35', '0.00', '0.00', '2018-09-11 11:40:04', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('153', '35', '0.00', '0.00', '2018-09-11 11:40:05', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('154', '35', '0.00', '0.00', '2018-09-11 11:40:07', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('155', '35', '398.00', '19628.00', '2018-09-11 11:41:14', '35使用了398元余额', '4');
INSERT INTO `lkt_record` VALUES ('156', '26', '89.00', '89.00', '2018-09-11 11:41:14', '26获得了89元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('157', '32', '10.00', '10.00', '2018-09-11 11:41:14', '32获得了10元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('158', '4', '0.00', '0.00', '2018-09-11 11:42:26', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('159', '4', '0.00', '0.00', '2018-09-11 11:42:26', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('160', '35', '0.00', '0.00', '2018-09-11 11:42:35', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('161', '35', '0.00', '0.00', '2018-09-11 11:42:37', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('162', '35', '398.00', '19230.00', '2018-09-11 11:43:16', '35使用了398元余额', '4');
INSERT INTO `lkt_record` VALUES ('163', '26', '89.00', '89.00', '2018-09-11 11:43:17', '26获得了89元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('164', '32', '10.00', '10.00', '2018-09-11 11:43:17', '32获得了10元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('165', '6', '0.00', '0.00', '2018-09-11 11:44:10', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('166', '35', '3888.00', '18832.00', '2018-09-11 11:45:08', '35使用了3888元余额', '4');
INSERT INTO `lkt_record` VALUES ('167', '32', '100.00', '100.00', '2018-09-11 11:45:08', '32获得了100元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('168', '35', '500000.00', '500000.00', '2018-09-11 11:45:54', '35系统充值500000余额', '1');
INSERT INTO `lkt_record` VALUES ('169', '35', '18888.00', '514944.00', '2018-09-11 11:46:10', '35使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('170', '32', '888.00', '888.00', '2018-09-11 11:46:10', '32获得了888元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('171', '6', '0.00', '0.00', '2018-09-11 11:47:52', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('172', '35', '0.00', '0.00', '2018-09-11 11:48:46', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('173', '35', '0.00', '0.00', '2018-09-11 11:48:47', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('174', '6', '0.00', '0.00', '2018-09-11 11:50:26', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('175', '35', '0.00', '0.00', '2018-09-11 11:50:57', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('176', '35', '0.00', '0.00', '2018-09-11 11:50:58', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('177', '35', '18888.00', '496056.00', '2018-09-11 11:52:34', '35使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('178', '26', '1888.00', '1888.00', '2018-09-11 11:52:34', '26获得了1888元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('179', '32', '888.00', '888.00', '2018-09-11 11:52:34', '32获得了888元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('180', '35', '0.00', '0.00', '2018-09-11 11:53:45', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('181', '35', '0.00', '0.00', '2018-09-11 11:53:46', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('182', '35', '18888.00', '477168.00', '2018-09-11 11:54:20', '35使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('183', '32', '888.00', '888.00', '2018-09-11 11:54:20', '32获得了888元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('184', '35', '0.00', '0.00', '2018-09-11 12:00:06', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('185', '35', '0.00', '0.00', '2018-09-11 12:00:07', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('186', '35', '0.00', '0.00', '2018-09-11 12:00:34', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('187', '37', '0.00', '0.00', '2018-09-11 12:00:50', '会员37登录', '0');
INSERT INTO `lkt_record` VALUES ('188', '37', '0.00', '0.00', '2018-09-11 12:00:51', '会员37登录', '0');
INSERT INTO `lkt_record` VALUES ('189', '37', '50000.00', '50000.00', '2018-09-11 12:02:00', '37系统充值50000余额', '1');
INSERT INTO `lkt_record` VALUES ('190', '37', '18888.00', '50000.00', '2018-09-11 12:02:44', '37使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('191', '26', '10.00', '10.00', '2018-09-11 12:02:44', '26获得了10元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('192', '35', '0.00', '0.00', '2018-09-11 12:04:29', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('193', '35', '0.00', '0.00', '2018-09-11 12:09:00', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('194', '35', '0.00', '0.00', '2018-09-11 12:09:01', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('195', '35', '0.00', '0.00', '2018-09-11 12:11:56', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('196', 'admin', '0.00', '0.00', '2018-09-11 13:09:49', '登录成功', '0');
INSERT INTO `lkt_record` VALUES ('197', '4', '0.00', '0.00', '2018-09-11 13:24:06', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('198', '24', '0.00', '0.00', '2018-09-11 13:24:06', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('199', '24', '0.00', '0.00', '2018-09-11 13:24:06', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('200', '4', '0.00', '0.00', '2018-09-11 13:24:07', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('201', '4', '18888.00', '91816.18', '2018-09-11 13:24:22', '4使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('202', '24', '0.00', '0.00', '2018-09-11 13:25:00', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('203', '6', '0.00', '0.00', '2018-09-11 13:25:00', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('204', '6', '0.00', '0.00', '2018-09-11 13:25:02', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('205', '4', '0.00', '0.00', '2018-09-11 13:25:06', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('206', '24', '0.00', '0.00', '2018-09-11 13:25:32', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('207', '24', '0.00', '0.00', '2018-09-11 13:25:39', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('208', '24', '0.00', '0.00', '2018-09-11 13:25:48', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('209', '24', '3888.00', '100000.00', '2018-09-11 13:26:11', '24使用了3888元余额', '4');
INSERT INTO `lkt_record` VALUES ('210', '4', '599.00', '599.00', '2018-09-11 13:26:11', '4获得了599元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('211', '0', '100.00', '100.00', '2018-09-11 13:26:11', '0获得了100元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('212', '24', '0.00', '0.00', '2018-09-11 13:26:31', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('213', '4', '0.00', '0.00', '2018-09-11 13:26:50', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('214', '24', '0.00', '0.00', '2018-09-11 13:27:00', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('215', '12', '0.00', '0.00', '2018-09-11 13:27:09', '会员12登录', '0');
INSERT INTO `lkt_record` VALUES ('216', '12', '0.00', '0.00', '2018-09-11 13:27:10', '会员12登录', '0');
INSERT INTO `lkt_record` VALUES ('217', '12', '398.00', '100000.00', '2018-09-11 13:28:08', '12使用了398元余额', '4');
INSERT INTO `lkt_record` VALUES ('218', '24', '89.00', '89.00', '2018-09-11 13:28:08', '24获得了89元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('219', '4', '10.00', '10.00', '2018-09-11 13:28:08', '4获得了10元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('220', '12', '0.00', '0.00', '2018-09-11 13:28:28', '会员12登录', '0');
INSERT INTO `lkt_record` VALUES ('221', '12', '0.00', '0.00', '2018-09-11 13:28:39', '会员12登录', '0');
INSERT INTO `lkt_record` VALUES ('222', '6', '0.00', '0.00', '2018-09-11 13:28:52', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('223', '4', '0.00', '0.00', '2018-09-11 13:29:02', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('224', '12', '0.00', '0.00', '2018-09-11 13:29:11', '会员12登录', '0');
INSERT INTO `lkt_record` VALUES ('225', '24', '0.00', '0.00', '2018-09-11 13:29:13', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('226', '24', '0.00', '0.00', '2018-09-11 13:29:16', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('227', '6', '0.00', '0.00', '2018-09-11 13:29:19', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('228', '6', '18888.00', '80579.00', '2018-09-11 13:29:30', '6使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('229', '24', '100.00', '100.00', '2018-09-11 13:29:30', '24获得了100元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('230', '24', '0.00', '0.00', '2018-09-11 13:29:47', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('231', '24', '0.00', '0.00', '2018-09-11 13:30:18', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('232', '6', '0.00', '0.00', '2018-09-11 13:30:31', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('233', '5', '0.00', '0.00', '2018-09-11 13:30:48', '会员5登录', '0');
INSERT INTO `lkt_record` VALUES ('234', '5', '0.00', '0.00', '2018-09-11 13:30:49', '会员5登录', '0');
INSERT INTO `lkt_record` VALUES ('235', '24', '0.00', '0.00', '2018-09-11 13:30:55', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('236', '5', '398.00', '77224.00', '2018-09-11 13:31:24', '5使用了398元余额', '4');
INSERT INTO `lkt_record` VALUES ('237', '6', '89.00', '89.00', '2018-09-11 13:31:25', '6获得了89元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('238', '12', '10.00', '10.00', '2018-09-11 13:31:25', '12获得了10元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('239', '24', '0.00', '0.00', '2018-09-11 13:31:47', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('240', '5', '0.00', '0.00', '2018-09-11 13:33:08', '会员5登录', '0');
INSERT INTO `lkt_record` VALUES ('241', '11', '0.00', '0.00', '2018-09-11 13:33:25', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('242', '11', '0.00', '0.00', '2018-09-11 13:33:25', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('243', '5', '0.00', '0.00', '2018-09-11 13:33:34', '会员5登录', '0');
INSERT INTO `lkt_record` VALUES ('244', '36', '0.00', '0.00', '2018-09-11 13:33:37', '会员36登录', '0');
INSERT INTO `lkt_record` VALUES ('245', '36', '0.00', '0.00', '2018-09-11 13:33:39', '会员36登录', '0');
INSERT INTO `lkt_record` VALUES ('246', '13', '0.00', '0.00', '2018-09-11 13:33:48', '会员13登录', '0');
INSERT INTO `lkt_record` VALUES ('247', '13', '0.00', '0.00', '2018-09-11 13:33:48', '会员13登录', '0');
INSERT INTO `lkt_record` VALUES ('248', '13', '3888.00', '85866.00', '2018-09-11 13:34:10', '13使用了3888元余额', '4');
INSERT INTO `lkt_record` VALUES ('249', '36', '0.00', '0.00', '2018-09-11 13:34:10', '会员36登录', '0');
INSERT INTO `lkt_record` VALUES ('250', '6', '100.00', '100.00', '2018-09-11 13:34:10', '6获得了100元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('251', '6', '0.00', '0.00', '2018-09-11 13:34:31', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('252', '24', '0.00', '0.00', '2018-09-11 13:34:35', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('253', '5', '0.00', '0.00', '2018-09-11 13:34:49', '会员5登录', '0');
INSERT INTO `lkt_record` VALUES ('254', '5', '0.00', '0.00', '2018-09-11 13:34:50', '会员5登录', '0');
INSERT INTO `lkt_record` VALUES ('255', '12', '0.00', '0.00', '2018-09-11 13:35:06', '会员12登录', '0');
INSERT INTO `lkt_record` VALUES ('256', '36', '0.00', '0.00', '2018-09-11 13:35:48', '会员36登录', '0');
INSERT INTO `lkt_record` VALUES ('257', 'admin', '0.00', '0.00', '2018-09-11 13:36:57', '登录成功', '0');
INSERT INTO `lkt_record` VALUES ('258', '36', '0.00', '0.00', '2018-09-11 13:37:02', '会员36登录', '0');
INSERT INTO `lkt_record` VALUES ('259', '13', '0.00', '0.00', '2018-09-11 13:37:34', '会员13登录', '0');
INSERT INTO `lkt_record` VALUES ('260', '13', '0.00', '0.00', '2018-09-11 13:37:50', '会员13登录', '0');
INSERT INTO `lkt_record` VALUES ('261', '13', '0.00', '0.00', '2018-09-11 13:37:52', '会员13登录', '0');
INSERT INTO `lkt_record` VALUES ('262', '13', '18888.00', '81978.00', '2018-09-11 13:38:09', '13使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('263', '6', '888.00', '888.00', '2018-09-11 13:38:09', '6获得了888元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('264', '12', '0.00', '0.00', '2018-09-11 13:38:31', '会员12登录', '0');
INSERT INTO `lkt_record` VALUES ('265', '4', '0.00', '0.00', '2018-09-11 13:38:37', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('266', '12', '0.00', '0.00', '2018-09-11 13:38:46', '会员12登录', '0');
INSERT INTO `lkt_record` VALUES ('267', '5', '0.00', '0.00', '2018-09-11 13:38:51', '会员5登录', '0');
INSERT INTO `lkt_record` VALUES ('268', '5', '0.00', '0.00', '2018-09-11 13:38:53', '会员5登录', '0');
INSERT INTO `lkt_record` VALUES ('269', '24', '0.00', '0.00', '2018-09-11 13:39:08', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('270', '5', '3888.00', '77004.00', '2018-09-11 13:39:27', '5使用了3888元余额', '4');
INSERT INTO `lkt_record` VALUES ('271', '6', '599.00', '599.00', '2018-09-11 13:39:28', '6获得了599元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('272', '12', '10.00', '10.00', '2018-09-11 13:39:28', '12获得了10元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('273', '4', '0.00', '0.00', '2018-09-11 13:39:39', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('274', '5', '0.00', '0.00', '2018-09-11 13:39:58', '会员5登录', '0');
INSERT INTO `lkt_record` VALUES ('275', '24', '0.00', '0.00', '2018-09-11 13:39:58', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('276', '12', '0.00', '0.00', '2018-09-11 13:40:23', '会员12登录', '0');
INSERT INTO `lkt_record` VALUES ('277', '12', '3888.00', '99711.00', '2018-09-11 13:40:46', '12使用了3888元余额', '4');
INSERT INTO `lkt_record` VALUES ('278', '24', '599.00', '599.00', '2018-09-11 13:40:46', '24获得了599元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('279', '4', '100.00', '100.00', '2018-09-11 13:40:46', '4获得了100元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('280', '24', '18888.00', '97500.00', '2018-09-11 13:42:21', '24使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('281', '4', '1888.00', '1888.00', '2018-09-11 13:42:21', '4获得了1888元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('282', '0', '888.00', '888.00', '2018-09-11 13:42:21', '0获得了888元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('283', '12', '0.00', '0.00', '2018-09-11 13:42:45', '会员12登录', '0');
INSERT INTO `lkt_record` VALUES ('284', '24', '0.00', '0.00', '2018-09-11 13:42:52', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('285', '4', '0.00', '0.00', '2018-09-11 13:43:14', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('286', '4', '0.00', '0.00', '2018-09-11 13:43:18', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('287', '12', '18888.00', '95823.00', '2018-09-11 13:43:38', '12使用了18888元余额', '4');
INSERT INTO `lkt_record` VALUES ('288', '24', '1888.00', '1888.00', '2018-09-11 13:43:38', '24获得了1888元推荐人佣金--- code:1', '7');
INSERT INTO `lkt_record` VALUES ('289', '4', '888.00', '888.00', '2018-09-11 13:43:38', '4获得了888元荐人上级的佣金 code:4', '7');
INSERT INTO `lkt_record` VALUES ('290', '24', '0.00', '0.00', '2018-09-11 13:43:52', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('291', 'admin', '0.00', '0.00', '2018-09-11 13:46:38', '登录成功', '0');
INSERT INTO `lkt_record` VALUES ('292', '12', '0.00', '0.00', '2018-09-11 13:47:02', '会员12登录', '0');
INSERT INTO `lkt_record` VALUES ('293', '24', '0.00', '0.00', '2018-09-11 13:47:53', '会员24登录', '0');
INSERT INTO `lkt_record` VALUES ('294', '4', '0.00', '0.00', '2018-09-11 13:51:46', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('295', '4', '0.00', '0.00', '2018-09-11 13:51:47', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('296', '6', '0.00', '0.00', '2018-09-11 13:52:29', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('297', '27', '0.00', '0.00', '2018-09-11 13:52:46', '会员27登录', '0');
INSERT INTO `lkt_record` VALUES ('298', '27', '0.00', '0.00', '2018-09-11 13:52:47', '会员27登录', '0');
INSERT INTO `lkt_record` VALUES ('299', '4', '0.00', '0.00', '2018-09-11 13:54:05', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('300', '4', '0.00', '0.00', '2018-09-11 13:54:24', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('301', '27', '0.00', '0.00', '2018-09-11 13:54:31', '会员27登录', '0');
INSERT INTO `lkt_record` VALUES ('302', '38', '0.00', '0.00', '2018-09-11 13:56:34', '会员38登录', '0');
INSERT INTO `lkt_record` VALUES ('303', '38', '0.00', '0.00', '2018-09-11 13:56:35', '会员38登录', '0');
INSERT INTO `lkt_record` VALUES ('304', '11', '0.00', '0.00', '2018-09-11 14:00:17', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('305', '35', '0.00', '0.00', '2018-09-11 14:00:58', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('306', '35', '0.00', '0.00', '2018-09-11 14:00:59', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('307', '6', '0.00', '0.00', '2018-09-11 14:02:04', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('308', '6', '0.00', '0.00', '2018-09-11 14:02:06', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('309', '11', '0.00', '0.00', '2018-09-11 14:02:13', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('310', '35', '0.00', '0.00', '2018-09-11 14:02:20', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('311', '35', '0.00', '0.00', '2018-09-11 14:02:26', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('312', '35', '0.00', '0.00', '2018-09-11 14:02:28', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('313', '22', '0.00', '0.00', '2018-09-11 14:02:45', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('314', '22', '0.00', '0.00', '2018-09-11 14:02:46', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('315', '39', '0.00', '0.00', '2018-09-11 14:04:22', '会员39登录', '0');
INSERT INTO `lkt_record` VALUES ('316', '39', '0.00', '0.00', '2018-09-11 14:04:22', '会员39登录', '0');
INSERT INTO `lkt_record` VALUES ('317', 'admin', '0.00', '0.00', '2018-09-11 14:05:08', '登录成功', '0');
INSERT INTO `lkt_record` VALUES ('318', '6', '0.00', '65766.00', '2018-09-11 14:05:17', '6使用了0.00元余额', '4');
INSERT INTO `lkt_record` VALUES ('319', '35', '0.00', '0.00', '2018-09-11 14:05:23', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('320', '11', '0.00', '0.00', '2018-09-11 14:05:42', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('321', '22', '0.00', '0.00', '2018-09-11 14:07:36', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('322', '22', '0.00', '0.00', '2018-09-11 14:07:37', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('323', 'admin', '0.00', '0.00', '2018-09-11 14:08:58', '登录成功', '0');
INSERT INTO `lkt_record` VALUES ('324', '35', '0.00', '0.00', '2018-09-11 14:09:41', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('325', '35', '0.00', '0.00', '2018-09-11 14:09:43', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('326', '35', '0.00', '0.00', '2018-09-11 14:09:58', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('327', '35', '0.00', '0.00', '2018-09-11 14:10:09', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('328', '35', '0.00', '0.00', '2018-09-11 14:10:10', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('329', '35', '0.00', '0.00', '2018-09-11 14:10:24', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('330', '35', '0.00', '0.00', '2018-09-11 14:10:25', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('331', '35', '0.00', '0.00', '2018-09-11 14:10:59', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('332', '35', '0.00', '0.00', '2018-09-11 14:11:00', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('333', 'admin', '0.00', '0.00', '2018-09-11 14:11:49', '登录成功', '0');
INSERT INTO `lkt_record` VALUES ('334', '35', '0.00', '0.00', '2018-09-11 14:12:24', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('335', '35', '0.00', '0.00', '2018-09-11 14:12:25', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('336', '35', '0.00', '0.00', '2018-09-11 14:12:50', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('337', '35', '0.00', '0.00', '2018-09-11 14:12:51', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('338', '35', '0.00', '0.00', '2018-09-11 14:13:37', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('339', '35', '0.00', '0.00', '2018-09-11 14:13:39', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('340', '35', '0.00', '0.00', '2018-09-11 14:14:03', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('341', '35', '0.00', '0.00', '2018-09-11 14:14:19', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('342', '35', '0.00', '0.00', '2018-09-11 14:16:33', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('343', '35', '0.00', '0.00', '2018-09-11 14:16:34', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('344', '22', '0.00', '0.00', '2018-09-11 14:17:37', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('345', '22', '0.00', '0.00', '2018-09-11 14:17:38', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('346', '22', '0.00', '0.00', '2018-09-11 14:18:18', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('347', '22', '0.00', '0.00', '2018-09-11 14:18:20', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('348', '35', '0.00', '0.00', '2018-09-11 14:19:40', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('349', '35', '0.00', '0.00', '2018-09-11 14:19:51', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('350', '35', '0.00', '0.00', '2018-09-11 14:20:47', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('351', '35', '0.00', '0.00', '2018-09-11 14:21:02', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('352', '2', '0.00', '0.00', '2018-09-11 14:21:20', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('353', '2', '0.00', '0.00', '2018-09-11 14:21:27', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('354', '2', '0.00', '0.00', '2018-09-11 14:21:47', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('355', '2', '1.00', '85565.77', '2018-09-11 14:21:57', '2使用了1元余额', '4');
INSERT INTO `lkt_record` VALUES ('356', '2', '0.00', '0.00', '2018-09-11 14:22:06', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('357', '35', '0.00', '0.00', '2018-09-11 14:22:09', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('358', '35', '1.00', '459479.00', '2018-09-11 14:22:31', '35使用了1元余额', '4');
INSERT INTO `lkt_record` VALUES ('359', '35', '0.00', '0.00', '2018-09-11 14:23:23', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('360', '35', '0.00', '0.00', '2018-09-11 14:23:24', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('361', '22', '0.00', '0.00', '2018-09-11 14:24:09', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('362', '22', '0.00', '0.00', '2018-09-11 14:24:10', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('363', '35', '0.00', '0.00', '2018-09-11 14:25:09', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('364', '35', '0.00', '0.00', '2018-09-11 14:25:11', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('365', '22', '0.00', '0.00', '2018-09-11 14:25:42', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('366', '22', '0.00', '0.00', '2018-09-11 14:25:55', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('367', '35', '0.00', '0.00', '2018-09-11 14:26:42', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('368', '35', '0.00', '0.00', '2018-09-11 14:26:43', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('369', '2', '0.00', '0.00', '2018-09-11 14:28:15', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('370', '2', '0.00', '0.00', '2018-09-11 14:28:17', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('371', '22', '0.00', '0.00', '2018-09-11 14:29:40', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('372', '22', '0.00', '0.00', '2018-09-11 14:29:42', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('373', '6', '0.00', '0.00', '2018-09-11 14:31:25', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('374', '4', '0.00', '0.00', '2018-09-11 14:32:56', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('375', '4', '0.00', '0.00', '2018-09-11 14:32:57', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('376', '4', '0.00', '0.00', '2018-09-11 14:36:24', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('377', '4', '0.00', '0.00', '2018-09-11 14:36:24', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('378', '39', '0.00', '0.00', '2018-09-11 14:37:02', '会员39登录', '0');
INSERT INTO `lkt_record` VALUES ('379', '22', '0.00', '0.00', '2018-09-11 14:38:44', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('380', '22', '0.00', '0.00', '2018-09-11 14:38:46', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('381', '4', '0.00', '0.00', '2018-09-11 14:39:17', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('382', '22', '0.00', '0.00', '2018-09-11 14:41:12', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('383', '22', '0.00', '0.00', '2018-09-11 14:41:14', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('384', '6', '0.00', '0.00', '2018-09-11 14:42:15', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('385', '6', '0.00', '0.00', '2018-09-11 14:42:19', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('386', '6', '0.00', '0.00', '2018-09-11 14:44:55', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('387', '4', '0.00', '0.00', '2018-09-11 14:50:06', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('388', 'admin', '0.00', '0.00', '2018-09-11 14:50:36', '登录成功', '0');
INSERT INTO `lkt_record` VALUES ('389', '22', '0.00', '0.00', '2018-09-11 15:07:19', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('390', '22', '0.00', '0.00', '2018-09-11 15:07:21', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('391', '22', '0.00', '0.00', '2018-09-11 15:09:11', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('392', '22', '0.00', '0.00', '2018-09-11 15:09:13', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('393', '4', '0.00', '0.00', '2018-09-11 15:14:31', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('394', '4', '0.00', '0.00', '2018-09-11 15:14:32', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('395', '31', '0.00', '0.00', '2018-09-11 15:16:23', '会员31登录', '0');
INSERT INTO `lkt_record` VALUES ('396', '31', '0.00', '0.00', '2018-09-11 15:16:25', '会员31登录', '0');
INSERT INTO `lkt_record` VALUES ('397', '31', '0.00', '0.00', '2018-09-11 15:25:53', '会员31登录', '0');
INSERT INTO `lkt_record` VALUES ('398', '40', '0.00', '0.00', '2018-09-11 15:27:08', '会员40登录', '0');
INSERT INTO `lkt_record` VALUES ('399', '40', '0.00', '0.00', '2018-09-11 15:27:08', '会员40登录', '0');
INSERT INTO `lkt_record` VALUES ('400', '40', '0.00', '0.00', '2018-09-11 15:28:09', '会员40登录', '0');
INSERT INTO `lkt_record` VALUES ('401', '40', '0.00', '0.00', '2018-09-11 15:28:34', '会员40登录', '0');
INSERT INTO `lkt_record` VALUES ('402', '40', '0.00', '0.00', '2018-09-11 15:29:13', '会员40登录', '0');
INSERT INTO `lkt_record` VALUES ('403', '4', '0.00', '0.00', '2018-09-11 15:30:54', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('404', '6', '0.00', '0.00', '2018-09-11 15:31:06', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('405', '6', '0.00', '0.00', '2018-09-11 15:31:07', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('406', '31', '0.00', '0.00', '2018-09-11 15:31:39', '会员31登录', '0');
INSERT INTO `lkt_record` VALUES ('407', '4', '0.00', '0.00', '2018-09-11 15:32:02', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('408', '40', '0.00', '0.00', '2018-09-11 15:32:37', '会员40登录', '0');
INSERT INTO `lkt_record` VALUES ('409', '4', '0.00', '0.00', '2018-09-11 15:33:10', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('410', '6', '0.00', '0.00', '2018-09-11 15:40:15', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('411', '6', '0.00', '0.00', '2018-09-11 15:45:09', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('412', 'ademin', '0.00', '0.00', '2018-09-11 15:54:09', '登录密码错误', '0');
INSERT INTO `lkt_record` VALUES ('413', 'admin', '0.00', '0.00', '2018-09-11 15:54:37', '登录成功', '0');
INSERT INTO `lkt_record` VALUES ('414', '6', '0.00', '0.00', '2018-09-11 15:57:37', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('415', '6', '0.00', '0.00', '2018-09-11 16:01:19', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('416', '6', '0.00', '0.00', '2018-09-11 16:03:05', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('417', '14', '0.00', '0.00', '2018-09-11 16:08:08', '会员14登录', '0');
INSERT INTO `lkt_record` VALUES ('418', '14', '0.00', '0.00', '2018-09-11 16:08:10', '会员14登录', '0');
INSERT INTO `lkt_record` VALUES ('419', '6', '0.00', '0.00', '2018-09-11 16:11:19', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('420', '6', '0.00', '0.00', '2018-09-11 16:11:19', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('421', '6', '0.00', '0.00', '2018-09-11 16:13:30', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('422', '6', '0.00', '0.00', '2018-09-11 16:13:35', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('423', '40', '0.00', '0.00', '2018-09-11 16:14:42', '会员40登录', '0');
INSERT INTO `lkt_record` VALUES ('424', '40', '0.00', '0.00', '2018-09-11 16:14:44', '会员40登录', '0');
INSERT INTO `lkt_record` VALUES ('425', '6', '0.00', '0.00', '2018-09-11 16:14:56', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('426', '31', '0.00', '0.00', '2018-09-11 16:15:22', '会员31登录', '0');
INSERT INTO `lkt_record` VALUES ('427', '6', '0.00', '0.00', '2018-09-11 16:17:09', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('428', '6', '0.00', '0.00', '2018-09-11 16:18:59', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('429', '6', '0.00', '0.00', '2018-09-11 16:23:04', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('430', '6', '0.00', '0.00', '2018-09-11 16:25:50', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('431', '2', '0.00', '0.00', '2018-09-11 16:27:48', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('432', '11', '0.00', '0.00', '2018-09-11 16:28:26', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('433', '11', '0.00', '0.00', '2018-09-11 16:28:27', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('434', '4', '0.00', '0.00', '2018-09-11 16:32:53', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('435', '4', '0.00', '0.00', '2018-09-11 16:32:54', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('436', '31', '-1000.00', '-1000.00', '2018-09-11 16:35:01', '31系统充值-1000余额', '11');
INSERT INTO `lkt_record` VALUES ('437', '27', '-8000.00', '-8000.00', '2018-09-11 16:35:18', '27系统充值-8000消费金', '11');
INSERT INTO `lkt_record` VALUES ('438', '4', '0.00', '0.00', '2018-09-11 16:35:51', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('439', '4', '0.00', '0.00', '2018-09-11 16:39:37', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('440', '6', '0.00', '0.00', '2018-09-11 16:48:37', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('441', '6', '0.00', '0.00', '2018-09-11 16:48:37', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('442', '4', '0.00', '0.00', '2018-09-11 17:01:06', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('443', '4', '0.00', '0.00', '2018-09-11 17:03:42', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('444', '4', '0.00', '0.00', '2018-09-11 17:03:58', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('445', '6', '0.00', '0.00', '2018-09-11 17:04:00', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('446', '6', '0.00', '0.00', '2018-09-11 17:04:28', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('447', '6', '0.00', '0.00', '2018-09-11 17:04:32', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('448', '4', '2.00', '85236.48', '2018-09-11 17:04:38', '用户 4 使用红包提现了 2元', '6');
INSERT INTO `lkt_record` VALUES ('449', '4', '0.00', '0.00', '2018-09-11 17:05:00', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('450', '6', '0.00', '0.00', '2018-09-11 17:05:01', '会员6登录', '0');
INSERT INTO `lkt_record` VALUES ('451', '4', '0.00', '0.00', '2018-09-11 17:06:58', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('452', '11', '0.00', '0.00', '2018-09-11 17:12:22', '会员11登录', '0');
INSERT INTO `lkt_record` VALUES ('453', '22', '0.00', '0.00', '2018-09-11 17:27:28', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('454', '22', '0.00', '0.00', '2018-09-11 17:27:29', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('455', '35', '0.00', '0.00', '2018-09-11 17:30:32', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('456', '35', '0.00', '0.00', '2018-09-11 17:30:34', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('457', '35', '0.00', '0.00', '2018-09-11 17:31:51', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('458', '35', '0.00', '0.00', '2018-09-11 17:31:53', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('459', '35', '0.00', '0.00', '2018-09-11 17:34:29', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('460', '35', '0.00', '0.00', '2018-09-11 17:34:30', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('461', '35', '0.00', '0.00', '2018-09-11 17:36:27', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('462', '35', '0.00', '0.00', '2018-09-11 17:36:29', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('463', '4', '0.00', '0.00', '2018-09-11 17:47:13', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('464', '4', '0.00', '0.00', '2018-09-11 17:47:15', '会员4登录', '0');
INSERT INTO `lkt_record` VALUES ('465', '22', '0.00', '0.00', '2018-09-11 17:47:23', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('466', '22', '0.00', '0.00', '2018-09-11 17:47:24', '会员22登录', '0');
INSERT INTO `lkt_record` VALUES ('467', '35', '0.00', '0.00', '2018-09-11 17:48:44', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('468', '35', '0.00', '0.00', '2018-09-11 17:48:46', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('469', '35', '0.00', '0.00', '2018-09-11 17:48:57', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('470', '35', '0.00', '0.00', '2018-09-11 17:48:59', '会员35登录', '0');
INSERT INTO `lkt_record` VALUES ('471', 'admin', '0.00', '0.00', '2018-09-11 17:50:17', '登录成功', '0');
INSERT INTO `lkt_record` VALUES ('472', '2', '0.00', '0.00', '2018-09-11 17:50:32', '会员2登录', '0');
INSERT INTO `lkt_record` VALUES ('473', '14', '0.00', '0.00', '2018-09-11 19:36:21', '会员14登录', '0');
INSERT INTO `lkt_record` VALUES ('474', '14', '0.00', '0.00', '2018-09-11 19:36:22', '会员14登录', '0');
INSERT INTO `lkt_record` VALUES ('475', 'admin', '0.00', '0.00', '2018-09-11 20:12:46', '登录成功', '0');
INSERT INTO `lkt_record` VALUES ('476', '41', '0.00', '0.00', '2018-09-11 20:45:13', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('477', '41', '0.00', '0.00', '2018-09-11 20:45:15', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('478', '41', '0.00', '0.00', '2018-09-11 20:45:17', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('479', '41', '0.00', '0.00', '2018-09-11 20:45:19', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('480', '41', '0.00', '0.00', '2018-09-11 20:45:21', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('481', '41', '0.00', '0.00', '2018-09-11 20:45:23', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('482', '41', '0.00', '0.00', '2018-09-11 20:45:25', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('483', '41', '0.00', '0.00', '2018-09-11 20:45:27', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('484', '41', '0.00', '0.00', '2018-09-11 20:45:30', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('485', '41', '0.00', '0.00', '2018-09-11 20:45:32', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('486', '41', '0.00', '0.00', '2018-09-11 20:45:34', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('487', '41', '0.00', '0.00', '2018-09-11 20:45:36', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('488', 'admin', '0.00', '0.00', '2018-09-11 20:45:36', '登录成功', '0');
INSERT INTO `lkt_record` VALUES ('489', '41', '0.00', '0.00', '2018-09-11 20:45:38', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('490', '41', '0.00', '0.00', '2018-09-11 20:45:40', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('491', '41', '0.00', '0.00', '2018-09-11 20:45:42', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('492', '41', '0.00', '0.00', '2018-09-11 20:45:45', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('493', '41', '0.00', '0.00', '2018-09-11 20:45:47', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('494', '41', '0.00', '0.00', '2018-09-11 20:45:49', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('495', '41', '0.00', '0.00', '2018-09-11 20:45:51', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('496', '41', '0.00', '0.00', '2018-09-11 20:45:53', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('497', '41', '0.00', '0.00', '2018-09-11 20:45:55', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('498', '41', '0.00', '0.00', '2018-09-11 20:45:57', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('499', '41', '0.00', '0.00', '2018-09-11 20:45:59', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('500', '41', '0.00', '0.00', '2018-09-11 20:46:01', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('501', '41', '0.00', '0.00', '2018-09-11 20:46:04', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('502', '41', '0.00', '0.00', '2018-09-11 20:46:06', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('503', '41', '0.00', '0.00', '2018-09-11 20:46:08', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('504', '41', '0.00', '0.00', '2018-09-11 20:46:10', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('505', '41', '0.00', '0.00', '2018-09-11 20:46:12', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('506', '41', '0.00', '0.00', '2018-09-11 20:46:14', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('507', '41', '0.00', '0.00', '2018-09-11 20:46:16', '会员41登录', '0');
INSERT INTO `lkt_record` VALUES ('508', '42', '0.00', '0.00', '2018-09-11 20:46:18', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('509', '42', '0.00', '0.00', '2018-09-11 20:46:26', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('510', '42', '0.00', '0.00', '2018-09-11 20:46:27', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('511', '42', '0.00', '0.00', '2018-09-11 20:46:51', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('512', '42', '0.00', '0.00', '2018-09-11 20:46:52', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('513', '42', '0.00', '0.00', '2018-09-11 20:50:11', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('514', '42', '0.00', '0.00', '2018-09-11 20:50:13', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('515', '42', '0.00', '0.00', '2018-09-11 20:51:03', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('516', '42', '0.00', '0.00', '2018-09-11 20:51:05', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('517', '42', '0.00', '0.00', '2018-09-11 20:52:23', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('518', '42', '0.00', '0.00', '2018-09-11 20:52:24', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('519', '42', '0.00', '0.00', '2018-09-11 20:52:42', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('520', '42', '0.00', '0.00', '2018-09-11 20:52:44', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('521', '42', '0.00', '0.00', '2018-09-11 20:53:08', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('522', '42', '0.00', '0.00', '2018-09-11 20:53:09', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('523', '42', '0.00', '0.00', '2018-09-11 20:54:07', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('524', '42', '0.00', '0.00', '2018-09-11 20:54:09', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('525', '42', '0.00', '0.00', '2018-09-11 20:54:28', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('526', '42', '0.00', '0.00', '2018-09-11 20:54:30', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('527', '42', '0.00', '0.00', '2018-09-11 20:55:09', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('528', '42', '0.00', '0.00', '2018-09-11 20:55:11', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('529', '42', '0.00', '0.00', '2018-09-11 20:56:44', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('530', '42', '0.00', '0.00', '2018-09-11 20:56:48', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('531', '42', '0.00', '0.00', '2018-09-11 20:57:35', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('532', '42', '0.00', '0.00', '2018-09-11 20:58:00', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('533', '42', '0.00', '0.00', '2018-09-11 20:58:02', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('534', '42', '0.00', '0.00', '2018-09-11 21:00:28', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('535', '42', '0.00', '0.00', '2018-09-11 21:01:35', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('536', '42', '0.00', '0.00', '2018-09-11 21:01:50', '会员42登录', '0');
INSERT INTO `lkt_record` VALUES ('537', '1', '0.00', '0.00', '2018-09-11 21:21:03', '会员1登录', '0');
INSERT INTO `lkt_record` VALUES ('538', '1', '0.00', '0.00', '2018-09-11 21:21:04', '会员1登录', '0');
INSERT INTO `lkt_record` VALUES ('539', '1', '0.00', '0.00', '2018-09-11 21:40:51', '会员1登录', '0');
INSERT INTO `lkt_record` VALUES ('540', '1', '0.00', '0.00', '2018-09-11 21:40:53', '会员1登录', '0');
INSERT INTO `lkt_record` VALUES ('541', '1', '0.00', '0.00', '2018-09-11 21:42:46', '会员1登录', '0');
INSERT INTO `lkt_record` VALUES ('542', '1', '0.00', '0.00', '2018-09-11 21:42:48', '会员1登录', '0');

-- ----------------------------
-- Table structure for lkt_reply_comments
-- ----------------------------
DROP TABLE IF EXISTS `lkt_reply_comments`;
CREATE TABLE `lkt_reply_comments` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `cid` varchar(32) NOT NULL COMMENT '评论ID',
  `uid` varchar(32) NOT NULL COMMENT '用户id',
  `content` text NOT NULL COMMENT '评价内容',
  `add_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='回复评论表';

-- ----------------------------
-- Records of lkt_reply_comments
-- ----------------------------
INSERT INTO `lkt_reply_comments` VALUES ('1', '45', 'admin', '哈哈哈 还不错 谢谢亲的评价', '2018-07-27 10:45:11');
INSERT INTO `lkt_reply_comments` VALUES ('2', '44', 'admin', '亲，您的肯定就是我们最大的幸福，亲的好评对小店来说就是一盏明灯，时刻指引着小店向更高的标准前进，为了达到更高要求，我们时刻不断的改正、完善自己，这也是对您最大的回报。我们时刻会记得亲的支持，希望亲也记得有一个期待者在时刻期待你的再次光临。', '2018-07-27 10:50:11');
INSERT INTO `lkt_reply_comments` VALUES ('3', '46', 'admin', '亲，您的肯定就是我们最大的幸福，亲的好评对小店来说就是一盏明灯，时刻指引着小店向更高的标准前进，为了达到更高要求，我们时刻不断的改正、完善自己，这也是对您最大的回报。我们时刻会记得亲的支持，希望亲也记得有一个期待者在时刻期待你的再次光临。', '2018-07-27 11:22:38');
INSERT INTO `lkt_reply_comments` VALUES ('4', '47', 'admin', '哈哈哈 谢谢', '2018-07-27 11:28:20');

-- ----------------------------
-- Table structure for lkt_return_goods
-- ----------------------------
DROP TABLE IF EXISTS `lkt_return_goods`;
CREATE TABLE `lkt_return_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '收货人',
  `tel` char(15) NOT NULL COMMENT '联系方式',
  `express` varchar(255) NOT NULL COMMENT '快递名称',
  `express_num` varchar(255) NOT NULL COMMENT '快递单号',
  `uid` varchar(32) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `oid` varchar(32) NOT NULL DEFAULT '0' COMMENT '订单id',
  `add_data` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '填写时间',
  `user_id` char(20) NOT NULL DEFAULT '' COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户退货表';

-- ----------------------------
-- Records of lkt_return_goods
-- ----------------------------
INSERT INTO `lkt_return_goods` VALUES ('1', 'sutao', '15581612334', '百世汇通', '71397609000684', 'oHNXh5PFOSFH22WZ0aBWGVka9v34', '1', '2018-05-25 16:11:36', '');
INSERT INTO `lkt_return_goods` VALUES ('2', '啦咯啦', '11555555555', '飞快达', '11111112224455', 'oHNXh5PFOSFH22WZ0aBWGVka9v34', '1', '2018-05-26 01:11:33', '');
INSERT INTO `lkt_return_goods` VALUES ('3', '我姑姑', '15478569565', '长宇物流', '11111111111111111', 'oHNXh5DLmG2Kh4lE430GzMwoGM9U', '22', '2018-06-06 16:29:16', '');
INSERT INTO `lkt_return_goods` VALUES ('4', '根据', '15581612334', '安信达快递', '45855855555555555', 'oHNXh5PFOSFH22WZ0aBWGVka9v34', '26', '2018-06-13 10:47:18', '');
INSERT INTO `lkt_return_goods` VALUES ('5', '铜模', '15563982356', 'aae全球专递', '5566258888', 'oHNXh5OS3kC_HuylBc1Ut41gC_wI', '151', '2018-06-21 16:54:39', '');
INSERT INTO `lkt_return_goods` VALUES ('6', '余人', '15575123685', '安信达快递', '86668842369', 'oHNXh5OS3kC_HuylBc1Ut41gC_wI', '161', '2018-06-21 17:07:52', '');
INSERT INTO `lkt_return_goods` VALUES ('7', '七七', '15236859585', '龙邦物流', '36565596235', 'oHNXh5KEK0gdc1oWvh3avwESuhPg', '270', '2018-07-06 10:11:05', '');
INSERT INTO `lkt_return_goods` VALUES ('10', '可以', '15284758956', 'aae全球专递', '546578663', 'oHNXh5DLmG2Kh4lE430GzMwoGM9U', '8', '2018-07-19 11:15:29', '');
INSERT INTO `lkt_return_goods` VALUES ('11', '投桃源县', '18474432142', 'aae全球专递', '5466588968688', 'oHNXh5DLmG2Kh4lE430GzMwoGM9U', '13', '2018-07-19 11:19:06', '');
INSERT INTO `lkt_return_goods` VALUES ('12', '你提好的', '17321332003', '百福东方国际物流', '680464646494', 'oHNXh5DLmG2Kh4lE430GzMwoGM9U', '16', '2018-07-19 11:46:27', '');
INSERT INTO `lkt_return_goods` VALUES ('13', '空其实', '15523696325', '安捷快递', '11111111111154846666', 'oHNXh5OS3kC_HuylBc1Ut41gC_wI', '26', '2018-07-20 14:10:26', '');

-- ----------------------------
-- Table structure for lkt_setscore
-- ----------------------------
DROP TABLE IF EXISTS `lkt_setscore`;
CREATE TABLE `lkt_setscore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lever` smallint(6) DEFAULT NULL COMMENT '等级',
  `ordernum` int(11) DEFAULT NULL COMMENT '订单金额',
  `scorenum` int(11) DEFAULT NULL COMMENT '可抵用消费金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lkt_setscore
-- ----------------------------
INSERT INTO `lkt_setscore` VALUES ('15', '-1', '1', null);
INSERT INTO `lkt_setscore` VALUES ('16', '1', '200', '2');

-- ----------------------------
-- Table structure for lkt_set_notice
-- ----------------------------
DROP TABLE IF EXISTS `lkt_set_notice`;
CREATE TABLE `lkt_set_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '公告名称',
  `detail` text,
  `img_url` char(30) NOT NULL DEFAULT '',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `user` varchar(55) NOT NULL COMMENT '发布者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公告列表';

-- ----------------------------
-- Records of lkt_set_notice
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_share
-- ----------------------------
DROP TABLE IF EXISTS `lkt_share`;
CREATE TABLE `lkt_share` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` char(15) DEFAULT NULL COMMENT '用户id',
  `wx_id` varchar(50) DEFAULT NULL COMMENT '微信id',
  `wx_name` varchar(150) DEFAULT NULL COMMENT '微信昵称',
  `sex` int(11) DEFAULT NULL COMMENT '性别 0:未知 1:男 2:女',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类别 0：新闻 1：文章',
  `Article_id` int(11) NOT NULL DEFAULT '0' COMMENT '新闻id',
  `share_add` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '分享时间',
  `coupon` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '礼券',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分享列表';

-- ----------------------------
-- Records of lkt_share
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_sign_activity
-- ----------------------------
DROP TABLE IF EXISTS `lkt_sign_activity`;
CREATE TABLE `lkt_sign_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `image` char(30) NOT NULL DEFAULT '' COMMENT '图片',
  `starttime` char(20) NOT NULL DEFAULT '' COMMENT '签到活动开始时间',
  `endtime` char(20) NOT NULL DEFAULT '' COMMENT '签到活动结束时间',
  `detail` text COMMENT '签到活动详情',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0：未启用 1：启用 2：已结束',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='签到活动';

-- ----------------------------
-- Records of lkt_sign_activity
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_sign_config
-- ----------------------------
DROP TABLE IF EXISTS `lkt_sign_config`;
CREATE TABLE `lkt_sign_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `plug_ins_id` int(11) NOT NULL DEFAULT '0' COMMENT '插件id',
  `imgurl` varchar(200) NOT NULL COMMENT '图片',
  `min_score` int(11) NOT NULL DEFAULT '0' COMMENT '领取的最少积分',
  `max_score` int(11) NOT NULL DEFAULT '0' COMMENT '领取的最大积分',
  `continuity_three` int(11) NOT NULL DEFAULT '0' COMMENT '连续签到7天',
  `continuity_twenty` int(11) NOT NULL DEFAULT '0' COMMENT '连续签到20天',
  `continuity_thirty` int(11) NOT NULL DEFAULT '0' COMMENT '连续签到30天',
  `activity_overdue` int(11) NOT NULL DEFAULT '0' COMMENT '活动过期删除时间',
  `modify_date` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='签到配置表';

-- ----------------------------
-- Records of lkt_sign_config
-- ----------------------------
INSERT INTO `lkt_sign_config` VALUES ('1', '3', '1527817925578.png', '2', '2', '5', '10', '20', '2', '2018-09-11 16:59:46');

-- ----------------------------
-- Table structure for lkt_sign_record
-- ----------------------------
DROP TABLE IF EXISTS `lkt_sign_record`;
CREATE TABLE `lkt_sign_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(15) NOT NULL COMMENT '用户ID',
  `sign_score` int(11) NOT NULL DEFAULT '0' COMMENT '签到积分',
  `record` char(20) DEFAULT NULL COMMENT '事件',
  `sign_time` timestamp NULL DEFAULT NULL COMMENT '签到时间',
  `type` int(4) NOT NULL DEFAULT '0' COMMENT '类型: 0签到 1消费2.首次关注得积分 3.转积分给好友 4 好友转积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='签到记录';

-- ----------------------------
-- Records of lkt_sign_record
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_software
-- ----------------------------
DROP TABLE IF EXISTS `lkt_software`;
CREATE TABLE `lkt_software` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '软件名称',
  `image` varchar(255) NOT NULL COMMENT '软件图标',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 0：小程序 1：app',
  `software_version` varchar(50) DEFAULT NULL COMMENT '软件版本',
  `edition` varchar(60) NOT NULL DEFAULT '' COMMENT '版本号',
  `edition_url` varchar(100) NOT NULL DEFAULT '' COMMENT '版本地址',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `edition_text` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '版本介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='软件表';

-- ----------------------------
-- Records of lkt_software
-- ----------------------------
INSERT INTO `lkt_software` VALUES ('3', '来客电商', '5a93dc975b31b.jpg', '0', '2', '1.0', '包@2x1529555689.1.0.png', '2018-06-21 12:34:49', null);
INSERT INTO `lkt_software` VALUES ('4', '来客电商', '1529564161969.png', '1', '2', '1.0', '形状-19@2x1529564172.1.0.png', '2018-06-21 14:56:12', null);
INSERT INTO `lkt_software` VALUES ('5', '来客推', '5a93dc3c87c50.jpg', '0', '2', '1.0', 'LKT_xiaochengxu1529923298.1.0.zip', '2018-06-25 18:41:38', null);
INSERT INTO `lkt_software` VALUES ('6', '来客电商', '5a93dbad1167e.jpg', '0', '2', '1.1', 'LKT_xiaochengxu1529992858.1.1.zip', '2018-06-26 14:00:58', null);
INSERT INTO `lkt_software` VALUES ('8', '后台1.03', '1532604827848.jpeg', '0', '2', '1.03', 'lkt_update_后台1.03.zip', '2018-07-26 19:46:35', '基础版本');
INSERT INTO `lkt_software` VALUES ('9', '后台1.04', '1532605150351.png', '2', '2', '1.04', 'lkt_update_1.04.zip', '2018-07-26 19:40:33', '测试更新1.04版本');

-- ----------------------------
-- Table structure for lkt_software_jifen
-- ----------------------------
DROP TABLE IF EXISTS `lkt_software_jifen`;
CREATE TABLE `lkt_software_jifen` (
  `id` int(11) NOT NULL,
  `jifennum` int(11) DEFAULT NULL COMMENT '首次关注小程序积分',
  `switch` int(11) NOT NULL DEFAULT '0' COMMENT '是否开启积分转让（0.关闭 1.开启）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='首次关注小程序积分表';

-- ----------------------------
-- Records of lkt_software_jifen
-- ----------------------------
INSERT INTO `lkt_software_jifen` VALUES ('1', '20', '1');

-- ----------------------------
-- Table structure for lkt_system_message
-- ----------------------------
DROP TABLE IF EXISTS `lkt_system_message`;
CREATE TABLE `lkt_system_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `senderid` varchar(30) NOT NULL COMMENT '发送人ID',
  `recipientid` varchar(30) NOT NULL COMMENT '接收人ID',
  `title` text COMMENT '标题',
  `content` text COMMENT '内容',
  `time` datetime DEFAULT NULL COMMENT '时间',
  `type` int(2) NOT NULL DEFAULT '1' COMMENT '1未读  2 已读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统消息表';

-- ----------------------------
-- Records of lkt_system_message
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_user
-- ----------------------------
DROP TABLE IF EXISTS `lkt_user`;
CREATE TABLE `lkt_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` char(15) DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户昵称',
  `access_id` varchar(30) DEFAULT NULL COMMENT '授权id',
  `access_key` varchar(32) DEFAULT NULL COMMENT '授权密钥',
  `wx_id` varchar(50) DEFAULT NULL COMMENT '微信id',
  `wx_name` varchar(150) DEFAULT NULL COMMENT '微信昵称',
  `sex` int(11) DEFAULT NULL COMMENT '性别 0:未知 1:男 2:女',
  `headimgurl` mediumtext COMMENT '微信头像',
  `province` int(11) NOT NULL DEFAULT '0' COMMENT '省',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '市',
  `county` int(11) NOT NULL DEFAULT '0' COMMENT '县',
  `detailed_address` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `password` char(32) DEFAULT NULL COMMENT '支付密码',
  `Register_data` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `e_mail` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `address` varchar(300) DEFAULT NULL COMMENT '地址',
  `Bank_name` varchar(30) DEFAULT NULL COMMENT '银行名称',
  `Cardholder` varchar(30) DEFAULT NULL COMMENT '持卡人',
  `Bank_card_number` varchar(30) DEFAULT NULL COMMENT '银行卡号',
  `share_num` int(11) NOT NULL DEFAULT '0' COMMENT '分享次数',
  `Referee` char(15) DEFAULT NULL COMMENT '推荐人',
  `access_token` varchar(32) DEFAULT '' COMMENT '访问令牌',
  `consumer_money` decimal(12,2) DEFAULT '0.00' COMMENT '消费金',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='会员列表';

-- ----------------------------
-- Records of lkt_user
-- ----------------------------
INSERT INTO `lkt_user` VALUES ('43', '1', '简单的奇迹', null, null, 'oHNXh5PFOSFH22WZ0aBWGVka9v34', '简单的奇迹', '0', 'https://lg-8tgp2f4w-1252524862.cos.ap-shanghai.myqcloud.com/moren.png', '0', '0', '0', null, '0.00', '20', null, '2018-09-11 21:21:03', null, null, null, null, null, null, '0', '', '8z9cK0YqfZYnO3m4CwhUBDqen3wNcka4', '0.00');

-- ----------------------------
-- Table structure for lkt_users_commission
-- ----------------------------
DROP TABLE IF EXISTS `lkt_users_commission`;
CREATE TABLE `lkt_users_commission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `money` decimal(12,2) NOT NULL COMMENT '佣金',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  `type` int(2) NOT NULL DEFAULT '1' COMMENT '发放佣金类型 1:普通 2:区域提成',
  `sNo` varchar(32) DEFAULT NULL COMMENT '关联订单',
  `ddmoney` decimal(12,2) DEFAULT NULL COMMENT '订单金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='分销佣金表';

-- ----------------------------
-- Records of lkt_users_commission
-- ----------------------------
INSERT INTO `lkt_users_commission` VALUES ('4', 'user0', '14.80', '2018-08-29 17:25:41', '1', '20180829153553474125', '147.96');
INSERT INTO `lkt_users_commission` VALUES ('5', 'user33', '147.96', '2018-08-29 17:25:41', '0', '20180829153553474125', '1233.00');
INSERT INTO `lkt_users_commission` VALUES ('6', 'user77', '73.98', '2018-08-29 17:25:41', '0', '20180829153553474125', '1233.00');
INSERT INTO `lkt_users_commission` VALUES ('7', 'user0', '36.99', '2018-08-29 17:25:41', '0', '20180829153553474125', '1233.00');
INSERT INTO `lkt_users_commission` VALUES ('8', 'user6', '24.42', '2018-09-05 22:50:13', '0', '20180905153615901372', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('9', 'user0', '15.54', '2018-09-05 22:50:13', '0', '20180905153615901372', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('10', 'user6', '24.42', '2018-09-05 22:57:39', '0', '20180905153615945878', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('11', 'user0', '15.54', '2018-09-05 22:57:39', '0', '20180905153615945878', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('12', 'user6', '24.42', '2018-09-05 22:59:06', '0', '20180905153615954532', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('13', 'user0', '15.54', '2018-09-05 22:59:06', '0', '20180905153615954532', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('14', 'user6', '24.42', '2018-09-05 23:00:43', '0', '20180905153615964265', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('15', 'user0', '15.54', '2018-09-05 23:00:43', '0', '20180905153615964265', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('16', 'user6', '24.42', '2018-09-06 09:30:11', '0', '20180906153619741129', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('17', 'user0', '15.54', '2018-09-06 09:30:11', '0', '20180906153619741129', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('18', 'user0', '22.20', '2018-09-06 21:37:14', '0', '20180906153624103480', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('19', 'user18', '944.40', '2018-09-07 17:59:13', '0', '20180907153631435238', '18888.00');
INSERT INTO `lkt_users_commission` VALUES ('20', 'user0', '0.00', '2018-09-07 17:59:13', '0', '20180907153631435238', '18888.00');
INSERT INTO `lkt_users_commission` VALUES ('21', 'user23', '11.10', '2018-09-07 19:29:27', '0', '20180907153631976755', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('22', 'user35', '0.00', '2018-09-07 19:29:27', '0', '20180907153631976755', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('23', 'user0', '0.00', '2018-09-07 19:29:27', '0', '20180907153631976755', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('24', 'user23', '11.10', '2018-09-07 21:19:39', '0', '20180907153632637864', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('25', 'user35', '0.00', '2018-09-07 21:19:39', '0', '20180907153632637864', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('26', 'user0', '0.00', '2018-09-07 21:19:39', '0', '20180907153632637864', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('27', 'user23', '11.10', '2018-09-08 09:38:46', '0', '20180908153637072689', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('28', 'user35', '0.00', '2018-09-08 09:38:46', '0', '20180908153637072689', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('29', 'user0', '0.00', '2018-09-08 09:38:46', '0', '20180908153637072689', '222.00');
INSERT INTO `lkt_users_commission` VALUES ('30', 'user46', '1322.16', '2018-09-08 11:48:36', '0', '20180908153637851676', '18888.00');
INSERT INTO `lkt_users_commission` VALUES ('31', 'user23', '0.00', '2018-09-08 11:48:36', '0', '20180908153637851676', '18888.00');
INSERT INTO `lkt_users_commission` VALUES ('32', 'user35', '0.00', '2018-09-08 11:48:36', '0', '20180908153637851676', '18888.00');
INSERT INTO `lkt_users_commission` VALUES ('34', '4', '200.00', '2018-09-08 21:14:39', '0', '20180908153641247817', '2000.00');
INSERT INTO `lkt_users_commission` VALUES ('35', '0', '0.00', '2018-09-08 21:14:39', '0', '20180908153641247817', '2000.00');
INSERT INTO `lkt_users_commission` VALUES ('36', '17', '6.16', '2018-09-09 14:27:55', '0', '20180909153647447526', '88.00');
INSERT INTO `lkt_users_commission` VALUES ('37', '2', '0.00', '2018-09-09 14:27:55', '0', '20180909153647447526', '88.00');
INSERT INTO `lkt_users_commission` VALUES ('38', '0', '0.00', '2018-09-09 14:27:55', '0', '20180909153647447526', '88.00');
INSERT INTO `lkt_users_commission` VALUES ('39', '17', '6.16', '2018-09-09 15:58:22', '0', '20180909153647990157', '88.00');
INSERT INTO `lkt_users_commission` VALUES ('40', '2', '0.00', '2018-09-09 15:58:22', '0', '20180909153647990157', '88.00');
INSERT INTO `lkt_users_commission` VALUES ('41', '0', '0.00', '2018-09-09 15:58:22', '0', '20180909153647990157', '88.00');
INSERT INTO `lkt_users_commission` VALUES ('42', '17', '6.16', '2018-09-09 17:35:35', '0', '20180909153648573555', '88.00');
INSERT INTO `lkt_users_commission` VALUES ('43', '2', '0.00', '2018-09-09 17:35:35', '0', '20180909153648573555', '88.00');
INSERT INTO `lkt_users_commission` VALUES ('44', '0', '0.00', '2018-09-09 17:35:35', '0', '20180909153648573555', '88.00');

-- ----------------------------
-- Table structure for lkt_user_address
-- ----------------------------
DROP TABLE IF EXISTS `lkt_user_address`;
CREATE TABLE `lkt_user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `name` varchar(10) NOT NULL COMMENT '收货人',
  `tel` char(15) NOT NULL COMMENT '联系方式',
  `sheng` int(11) NOT NULL DEFAULT '0' COMMENT '省id',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '市id',
  `quyu` int(11) NOT NULL DEFAULT '0' COMMENT '区域id',
  `address` varchar(255) NOT NULL COMMENT '收货地址（不加省市区）',
  `address_xq` varchar(255) NOT NULL COMMENT '省市区+详细地址',
  `code` int(11) NOT NULL DEFAULT '0' COMMENT '邮政编号',
  `uid` varchar(32) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `is_default` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否默认地址 1默认',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户收货地址表';

-- ----------------------------
-- Records of lkt_user_address
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_user_bank_card
-- ----------------------------
DROP TABLE IF EXISTS `lkt_user_bank_card`;
CREATE TABLE `lkt_user_bank_card` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(15) NOT NULL COMMENT '用户ID',
  `Cardholder` varchar(30) DEFAULT NULL COMMENT '持卡人',
  `id_card` varchar(30) DEFAULT NULL COMMENT '身份证',
  `Bank_name` varchar(30) DEFAULT NULL COMMENT '银行名称',
  `Bank_card_number` varchar(30) DEFAULT NULL COMMENT '银行卡号',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `is_default` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认地址 1默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='用户银行卡列表';

-- ----------------------------
-- Records of lkt_user_bank_card
-- ----------------------------
INSERT INTO `lkt_user_bank_card` VALUES ('26', 'user7', '萨法', '430525145255051222', '建设银行', '6217000830000123038', '18373124330', '2018-07-02 11:27:49', '1');

-- ----------------------------
-- Table structure for lkt_user_collection
-- ----------------------------
DROP TABLE IF EXISTS `lkt_user_collection`;
CREATE TABLE `lkt_user_collection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(32) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `p_id` int(11) DEFAULT NULL COMMENT '产品id',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏表';

-- ----------------------------
-- Records of lkt_user_collection
-- ----------------------------
INSERT INTO `lkt_user_collection` VALUES ('5', 'user68', '21', '2018-05-22 20:27:32');
INSERT INTO `lkt_user_collection` VALUES ('18', 'user40', '25', '2018-05-29 11:09:19');
INSERT INTO `lkt_user_collection` VALUES ('26', 'user68', '16', '2018-05-30 09:57:19');
INSERT INTO `lkt_user_collection` VALUES ('27', 'user68', '25', '2018-05-30 09:57:20');
INSERT INTO `lkt_user_collection` VALUES ('28', 'user68', '15', '2018-05-30 10:44:56');
INSERT INTO `lkt_user_collection` VALUES ('29', 'user68', '5', '2018-05-30 10:45:13');
INSERT INTO `lkt_user_collection` VALUES ('30', 'user68', '11', '2018-05-30 10:45:18');
INSERT INTO `lkt_user_collection` VALUES ('31', 'user68', '19', '2018-05-30 10:45:25');
INSERT INTO `lkt_user_collection` VALUES ('32', 'user68', '10', '2018-05-30 10:45:35');
INSERT INTO `lkt_user_collection` VALUES ('53', 'user67', '22', '2018-06-12 10:35:30');
INSERT INTO `lkt_user_collection` VALUES ('54', 'user67', '0', '2018-06-12 15:36:38');
INSERT INTO `lkt_user_collection` VALUES ('55', 'user81', '11', '2018-06-13 09:45:04');
INSERT INTO `lkt_user_collection` VALUES ('56', 'user67', '19', '2018-06-13 16:11:17');
INSERT INTO `lkt_user_collection` VALUES ('61', 'user67', '18', '2018-06-14 11:09:17');
INSERT INTO `lkt_user_collection` VALUES ('62', 'user67', '21', '2018-06-14 11:10:15');
INSERT INTO `lkt_user_collection` VALUES ('63', 'user67', '23', '2018-06-14 11:12:43');
INSERT INTO `lkt_user_collection` VALUES ('64', 'user67', '24', '2018-06-14 11:13:17');
INSERT INTO `lkt_user_collection` VALUES ('109', 'user67', '9', '2018-06-21 16:27:01');
INSERT INTO `lkt_user_collection` VALUES ('110', 'user67', '7', '2018-06-21 16:27:10');
INSERT INTO `lkt_user_collection` VALUES ('116', 'user7', '15', '2018-06-22 16:52:23');
INSERT INTO `lkt_user_collection` VALUES ('126', 'user7', '11', '2018-06-25 18:13:24');
INSERT INTO `lkt_user_collection` VALUES ('127', 'user7', '9', '2018-06-25 18:13:24');
INSERT INTO `lkt_user_collection` VALUES ('128', 'user7', '26', '2018-06-25 18:13:24');
INSERT INTO `lkt_user_collection` VALUES ('129', 'user127', '23', '2018-06-26 10:06:17');
INSERT INTO `lkt_user_collection` VALUES ('130', 'user127', '2', '2018-06-26 10:06:28');
INSERT INTO `lkt_user_collection` VALUES ('131', 'user127', '40', '2018-06-26 10:08:26');
INSERT INTO `lkt_user_collection` VALUES ('134', 'user7', '29', '2018-06-26 14:49:19');
INSERT INTO `lkt_user_collection` VALUES ('135', 'user33', '18', '2018-06-26 21:18:57');
INSERT INTO `lkt_user_collection` VALUES ('138', 'user67', '4', '2018-06-28 17:53:56');
INSERT INTO `lkt_user_collection` VALUES ('140', 'user33', '29', '2018-06-29 00:25:56');
INSERT INTO `lkt_user_collection` VALUES ('144', 'user7', '10', '2018-06-29 16:35:46');
INSERT INTO `lkt_user_collection` VALUES ('145', 'user7', '28', '2018-06-29 16:35:54');
INSERT INTO `lkt_user_collection` VALUES ('146', 'user7', '7', '2018-06-29 16:36:50');
INSERT INTO `lkt_user_collection` VALUES ('147', 'user37', '15', '2018-06-29 17:04:10');
INSERT INTO `lkt_user_collection` VALUES ('149', 'user33', '33', '2018-06-29 17:22:25');
INSERT INTO `lkt_user_collection` VALUES ('153', 'user33', '11', '2018-07-05 00:21:41');
INSERT INTO `lkt_user_collection` VALUES ('156', 'user33', '19', '2018-07-05 00:25:33');
INSERT INTO `lkt_user_collection` VALUES ('158', 'user33', '9', '2018-07-05 00:28:02');
INSERT INTO `lkt_user_collection` VALUES ('160', 'user33', '15', '2018-07-05 08:43:40');
INSERT INTO `lkt_user_collection` VALUES ('161', 'user33', '10', '2018-07-05 09:07:41');
INSERT INTO `lkt_user_collection` VALUES ('162', 'user29', '11', '2018-07-05 09:31:38');
INSERT INTO `lkt_user_collection` VALUES ('163', 'user29', '15', '2018-07-05 09:32:00');
INSERT INTO `lkt_user_collection` VALUES ('165', 'user77', '11', '2018-07-05 13:39:22');
INSERT INTO `lkt_user_collection` VALUES ('166', 'user33', '39', '2018-07-09 13:35:31');
INSERT INTO `lkt_user_collection` VALUES ('168', 'user33', '28', '2018-07-10 11:00:04');
INSERT INTO `lkt_user_collection` VALUES ('169', 'user33', '30', '2018-07-10 12:59:09');
INSERT INTO `lkt_user_collection` VALUES ('172', 'user33', '27', '2018-07-13 09:34:36');
INSERT INTO `lkt_user_collection` VALUES ('175', 'user33', '51', '2018-07-13 09:36:37');
INSERT INTO `lkt_user_collection` VALUES ('176', 'user144', '50', '2018-07-16 10:29:31');
INSERT INTO `lkt_user_collection` VALUES ('177', 'user144', '27', '2018-07-16 10:40:52');
INSERT INTO `lkt_user_collection` VALUES ('178', 'user144', '39', '2018-07-16 11:02:58');
INSERT INTO `lkt_user_collection` VALUES ('179', 'user144', '25', '2018-07-16 11:13:20');
INSERT INTO `lkt_user_collection` VALUES ('182', 'user37', '27', '2018-07-19 09:54:36');
INSERT INTO `lkt_user_collection` VALUES ('186', 'user33', '38', '2018-07-19 10:05:40');
INSERT INTO `lkt_user_collection` VALUES ('187', 'user33', '25', '2018-07-19 10:32:35');
INSERT INTO `lkt_user_collection` VALUES ('188', 'user34', '27', '2018-07-19 15:55:46');
INSERT INTO `lkt_user_collection` VALUES ('190', 'user37', '25', '2018-07-20 10:15:24');
INSERT INTO `lkt_user_collection` VALUES ('194', 'user67', '25', '2018-07-20 11:23:47');
INSERT INTO `lkt_user_collection` VALUES ('195', 'user33', '26', '2018-07-20 14:56:52');
INSERT INTO `lkt_user_collection` VALUES ('200', 'user67', '27', '2018-07-25 14:49:30');
INSERT INTO `lkt_user_collection` VALUES ('203', 'user67', '50', '2018-07-25 14:52:28');
INSERT INTO `lkt_user_collection` VALUES ('204', 'user67', '39', '2018-07-25 14:54:05');
INSERT INTO `lkt_user_collection` VALUES ('205', 'user67', '48', '2018-07-25 14:54:51');
INSERT INTO `lkt_user_collection` VALUES ('210', 'user33', '49', '2018-07-25 17:48:03');
INSERT INTO `lkt_user_collection` VALUES ('214', 'user37', '49', '2018-07-26 10:11:47');
INSERT INTO `lkt_user_collection` VALUES ('217', 'user7', '51', '2018-07-26 14:26:24');
INSERT INTO `lkt_user_collection` VALUES ('218', 'user7', '48', '2018-07-26 14:26:30');
INSERT INTO `lkt_user_collection` VALUES ('223', 'user7', '0', '2018-07-30 11:02:41');
INSERT INTO `lkt_user_collection` VALUES ('228', 'user93', '27', '2018-07-30 14:05:00');
INSERT INTO `lkt_user_collection` VALUES ('248', 'user164', '51', '2018-07-30 17:43:59');
INSERT INTO `lkt_user_collection` VALUES ('257', 'user145', '38', '2018-07-31 16:12:37');
INSERT INTO `lkt_user_collection` VALUES ('258', 'user145', '49', '2018-07-31 16:12:37');
INSERT INTO `lkt_user_collection` VALUES ('259', 'user145', '51', '2018-07-31 16:30:54');
INSERT INTO `lkt_user_collection` VALUES ('260', 'user313', '51', '2018-08-01 16:09:28');
INSERT INTO `lkt_user_collection` VALUES ('262', 'user328', '50', '2018-08-01 20:50:59');
INSERT INTO `lkt_user_collection` VALUES ('263', 'user328', '37', '2018-08-01 20:53:30');
INSERT INTO `lkt_user_collection` VALUES ('264', 'user330', '39', '2018-08-01 21:15:21');
INSERT INTO `lkt_user_collection` VALUES ('269', 'user34', '51', '2018-08-02 16:32:45');
INSERT INTO `lkt_user_collection` VALUES ('270', 'user34', '50', '2018-08-02 16:33:49');
INSERT INTO `lkt_user_collection` VALUES ('271', 'user164', '50', '2018-08-03 16:25:23');
INSERT INTO `lkt_user_collection` VALUES ('272', 'user404', '48', '2018-08-03 17:12:53');
INSERT INTO `lkt_user_collection` VALUES ('274', 'user164', '48', '2018-08-06 14:46:39');
INSERT INTO `lkt_user_collection` VALUES ('275', 'user164', '47', '2018-08-06 14:48:40');
INSERT INTO `lkt_user_collection` VALUES ('277', 'user479', '48', '2018-08-07 22:13:33');
INSERT INTO `lkt_user_collection` VALUES ('278', 'user479', '3', '2018-08-07 23:27:35');
INSERT INTO `lkt_user_collection` VALUES ('279', 'user484', '26', '2018-08-08 14:16:15');
INSERT INTO `lkt_user_collection` VALUES ('280', 'user495', '50', '2018-08-09 14:02:55');
INSERT INTO `lkt_user_collection` VALUES ('285', 'user499', '50', '2018-08-11 18:04:47');
INSERT INTO `lkt_user_collection` VALUES ('288', 'user33', '50', '2018-08-14 11:08:22');
INSERT INTO `lkt_user_collection` VALUES ('290', 'user18', '56', '2018-09-03 23:30:15');
INSERT INTO `lkt_user_collection` VALUES ('291', 'user6', '63', '2018-09-05 10:55:09');
INSERT INTO `lkt_user_collection` VALUES ('292', 'user46', '61', '2018-09-08 09:53:55');

-- ----------------------------
-- Table structure for lkt_user_footprint
-- ----------------------------
DROP TABLE IF EXISTS `lkt_user_footprint`;
CREATE TABLE `lkt_user_footprint` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(15) NOT NULL COMMENT '用户ID',
  `p_id` int(11) DEFAULT NULL COMMENT '产品id',
  `app_type` varchar(50) DEFAULT 'mini_program' COMMENT '平台类型',
  `add_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='足迹表';

-- ----------------------------
-- Records of lkt_user_footprint
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_user_fromid
-- ----------------------------
DROP TABLE IF EXISTS `lkt_user_fromid`;
CREATE TABLE `lkt_user_fromid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open_id` char(40) NOT NULL DEFAULT '' COMMENT '用户openid',
  `fromid` char(50) NOT NULL DEFAULT '' COMMENT '用户fromid',
  `lifetime` datetime DEFAULT NULL COMMENT '生命周期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8 COMMENT='用户fromid';

-- ----------------------------
-- Records of lkt_user_fromid
-- ----------------------------

-- ----------------------------
-- Table structure for lkt_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `lkt_withdraw`;
CREATE TABLE `lkt_withdraw` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(20) NOT NULL DEFAULT '' COMMENT '用户id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `wx_id` varchar(50) DEFAULT NULL COMMENT '微信id',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `Bank_id` int(11) NOT NULL COMMENT '银行卡id',
  `money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '提现金额',
  `z_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '剩余金额',
  `s_charge` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0：审核中 1：审核通过 2：拒绝',
  `add_date` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='提现列表';

-- ----------------------------
-- Records of lkt_withdraw
-- ----------------------------
INSERT INTO `lkt_withdraw` VALUES ('1', '', '简单点', 'oFF694qGPOHZ6txqnbKL9Xx0CwUo', '15581612334', '0', '95.00', '0.00', '5.00', '0', '2018-09-09 16:27:48');

-- ----------------------------
-- Procedure structure for showTime
-- ----------------------------
DROP PROCEDURE IF EXISTS `showTime`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `showTime`()
B:BEGIN
DECLARE sfbl float;
DECLARE userid varchar(50);
DECLARE zmoney float;
DECLARE smoney float;
DECLARE slt int;
DECLARE srt int;
DECLARE cn int DEFAULT 0;
DECLARE done INT DEFAULT FALSE;
DECLARE cur_account CURSOR FOR select user_id,z_money,lt,rt  from ntb_user where  z_money>0;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
declare exit handler for sqlexception ROLLBACK; 
select count(id) cn into cn from ntb_money_point where type in (0,1) and TO_DAYS(add_date) = TO_DAYS(NOW());
IF cn>0 THEN
  LEAVE B; 
END IF;


START TRANSACTION;  
 
SELECT douhao into sfbl from ntb_cn where name='ldds6' ;
update ntb_user set e_money = e_money+z_money*sfbl,e_money_lj=e_money_lj+z_money*sfbl where z_money>0;
 -- 打开游标
    OPEN  cur_account;     
    -- 遍历
    read_loop: LOOP
            -- 取值 取多个字段
            FETCH  NEXT from cur_account INTO userid,zmoney,slt,srt;
            IF done THEN
                LEAVE read_loop;
             END IF;
 			set smoney = zmoney*sfbl;
        -- 你自己想做的操作
        insert into ntb_money_point (userid,money,s_money,type,isf) values (userid,smoney,smoney,0,1);
        -- 级差 start
        
         BEGIN 
          	DECLARE uuid varchar(50);
			DECLARE pdmoney DECIMAL DEFAULT 0;
			DECLARE stui int DEFAULT 0;
			DECLARE sbili float DEFAULT 0;
			DECLARE oldbili float DEFAULT 0;
			DECLARE oldlevel int  DEFAULT 0;
			DECLARE jj int DEFAULT 0;
			DECLARE fh DECIMAL(12,5) DEFAULT 0;
			DECLARE token INT DEFAULT FALSE;
			
         	DECLARE rs_cursor_item CURSOR FOR  select user_id,pd_money,tui from ntb_user WHERE lt<slt and rt>srt  order by id desc ;
			#游标结束条件
			DECLARE CONTINUE HANDLER FOR NOT FOUND SET token = TRUE;
			
			
        	OPEN rs_cursor_item;
        	
        	inner_read_loop: LOOP
            -- 取值 取多个字段
            FETCH  NEXT from rs_cursor_item INTO uuid,pdmoney,stui;

            IF token THEN
                LEAVE inner_read_loop;
             END IF;
             
             
             	 
 			     IF stui = 2 THEN
           		 	SET sbili = 0.01;
           		 END IF; 
           		 
           		 IF stui = 3 THEN
           		 	SET sbili = 0.02;
           		 END IF; 
           		 
           		 IF stui = 4 THEN
           		 	SET sbili = 0.04;
           		 END IF; 
           		 
           		 IF (jj=0) AND (stui=1) THEN
           		 	SET fh = smoney*0.01;
           		 	
           		 	IF fh>0 THEN
           				insert into ntb_money_point (userid,money,s_money,type,isf,fromuser) values (uuid,fh,fh,1,1,userid);
           				update ntb_user set e_money = e_money+fh,e_money_lj=e_money_lj+fh where user_id= uuid;
           			END IF;
           		END IF;
           		
           		IF (stui>=2) AND (stui>oldlevel) AND (sbili>oldbili) AND (pdmoney>0) THEN
           			SET fh = smoney*(sbili-oldbili);
           			
           			IF fh>0 THEN
           				insert into ntb_money_point (userid,money,s_money,type,isf,fromuser) values (uuid,fh,fh,1,1,userid);
           				update ntb_user set e_money = e_money+fh,e_money_lj=e_money_lj+fh where user_id=uuid;
           			END IF;
           			
           			SET oldbili = sbili;
					SET oldlevel = stui;
					
						
           		END IF;
           			
				SET jj = jj+1;
				
			END LOOP;
	 		CLOSE rs_cursor_item;
	 		
	 		
     		END;
       
        -- 级差 end
        
        
    END LOOP;
 
 
    CLOSE cur_account;
    
    
COMMIT;
   
    
END;
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test
-- ----------------------------
DROP PROCEDURE IF EXISTS `test`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test`()
B:BEGIN
DECLARE sfbl float;
DECLARE userid varchar(50);
DECLARE zmoney float;
DECLARE smoney float;
DECLARE slt int;
DECLARE srt int;
DECLARE cn int DEFAULT 0;
DECLARE done INT DEFAULT FALSE;
DECLARE cur_account CURSOR FOR select user_id,z_money,lt,rt  from ntb_user where  z_money>0 and id<100;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
declare exit handler for sqlexception ROLLBACK; 
select count(id) cn into cn from ntb_money_point where type in (0,1) and TO_DAYS(add_date) = TO_DAYS(NOW());
IF cn>0 THEN
  LEAVE B; 
END IF;


START TRANSACTION;  
 
SELECT douhao into sfbl from ntb_cn where name='ldds6' ;
update ntb_user set e_money = e_money+z_money*sfbl,e_money_lj=e_money_lj+z_money*sfbl where z_money>0;
 -- 打开游标
    OPEN  cur_account;     
    -- 遍历
    read_loop: LOOP
            -- 取值 取多个字段
            FETCH  NEXT from cur_account INTO userid,zmoney,slt,srt;
            IF done THEN
                LEAVE read_loop;
             END IF;
 			set smoney = zmoney*sfbl;
        -- 你自己想做的操作
        insert into ntb_money_point (userid,money,s_money,type,isf) values (userid,smoney,smoney,0,1);
        -- 级差 start
        
         BEGIN 
          	DECLARE uuid varchar(50);
			DECLARE pdmoney DECIMAL DEFAULT 0;
			DECLARE stui int DEFAULT 0;
			DECLARE sbili float DEFAULT 0;
			DECLARE oldbili float DEFAULT 0;
			DECLARE oldlevel int  DEFAULT 0;
			DECLARE jj int DEFAULT 0;
			DECLARE fh DECIMAL(12,5) DEFAULT 0;
			DECLARE token INT DEFAULT FALSE;
			
         	DECLARE rs_cursor_item CURSOR FOR  select user_id,pd_money,tui from ntb_user WHERE lt<slt and rt>srt  order by id desc ;
			#游标结束条件
			DECLARE CONTINUE HANDLER FOR NOT FOUND SET token = TRUE;
			
			
        	OPEN rs_cursor_item;
        	
        	inner_read_loop: LOOP
            -- 取值 取多个字段
            FETCH  NEXT from rs_cursor_item INTO uuid,pdmoney,stui;

            IF token THEN
                LEAVE inner_read_loop;
             END IF;
             
             
             	 
 			     IF stui = 2 THEN
           		 	SET sbili = 0.01;
           		 END IF; 
           		 
           		 IF stui = 3 THEN
           		 	SET sbili = 0.02;
           		 END IF; 
           		 
           		 IF stui = 4 THEN
           		 	SET sbili = 0.04;
           		 END IF; 
           		 
           		 IF (jj=0) AND (stui=1) THEN
           		 	SET fh = smoney*0.01;
           		 	
           		 	IF fh>0 THEN
           				insert into ntb_money_point (userid,money,s_money,type,isf,fromuser) values (uuid,fh,fh,1,1,userid);
           				update ntb_user set e_money = e_money+fh,e_money_lj=e_money_lj+fh where user_id= uuid;
           			END IF;
           		END IF;
           		
           		IF (stui>=2) AND (stui>oldlevel) AND (sbili>oldbili) AND (pdmoney>0) THEN
           			SET fh = smoney*(sbili-oldbili);
           			
           			IF fh>0 THEN
           				insert into ntb_money_point (userid,money,s_money,type,isf,fromuser) values (uuid,fh,fh,1,1,userid);
           				update ntb_user set e_money = e_money+fh,e_money_lj=e_money_lj+fh where user_id=uuid;
           			END IF;
           			
           			SET oldbili = sbili;
					SET oldlevel = stui;
					
						
           		END IF;
           			
				SET jj = jj+1;
				
			END LOOP;
	 		CLOSE rs_cursor_item;
	 		
	 		
     		END;
       
        -- 级差 end
        
        
    END LOOP;
 
 
    CLOSE cur_account;
    
    
COMMIT;
   
    
END;
;;
DELIMITER ;
