
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `line_info`
-- ----------------------------
DROP TABLE IF EXISTS `line_info`;
CREATE TABLE `line_info` (
  `line_id` int(11) NOT NULL auto_increment COMMENT '主键',
  `line_fullname` varchar(100) default NULL COMMENT '路线全称',
  `line_shortname` varchar(100) default NULL COMMENT '路线简称',
  `bus_id` int(11) default NULL COMMENT '关联车辆',
  `station_id` int(11) default NULL COMMENT '关联站点',
  `station_order` int(11) default NULL COMMENT '站点序号',
  `line_stationtime` varchar(100) default NULL COMMENT '计划到站时间，格式：HH:mm:ss',
  PRIMARY KEY  ( `line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
