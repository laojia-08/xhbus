
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `driver_info`
-- ----------------------------
DROP TABLE IF EXISTS `driver_info`;
CREATE TABLE `driver_info` (
  `dirver_id` int(11) NOT NULL auto_increment COMMENT '主键',
  `dirver_name` varchar(100) default NULL COMMENT '姓名',
  `dirver_sex` int(11) default NULL COMMENT '性别，1男，2女',
  `dirver_birthday` timestamp NULL default CURRENT_TIMESTAMP COMMENT '出生日期',
  `dirver_age` int(11) default NULL COMMENT '年龄',
  `dirver_telephone` varchar(100) default NULL COMMENT '手机号码',
  `dirver_wechat` varchar(100) default NULL COMMENT '微信号',
  PRIMARY KEY  ( `dirver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
