
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `businfo`
-- ----------------------------
DROP TABLE IF EXISTS `businfo`;
CREATE TABLE `businfo` (
  `bus_id` int(11) NOT NULL auto_increment COMMENT '主键、自增',
  `bus_number` varchar(100) default NULL COMMENT '车牌号',
  `bus_color` varchar(100) default NULL COMMENT '车辆颜色',
  `seat_count` int(11) default NULL COMMENT '座位数',
  `bus_fullname` varchar(100) default NULL COMMENT '车辆全称',
  `bus_shortname` varchar(100) default NULL COMMENT '车辆简称',
  PRIMARY KEY  ( `bus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
