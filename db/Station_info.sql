
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `station_info`
-- ----------------------------
DROP TABLE IF EXISTS `station_info`;
CREATE TABLE `station_info` (
  `station_id` int(11) NOT NULL auto_increment COMMENT '主键',
  `station_fullname` varchar(100) default NULL COMMENT '站点全称',
  `station_shortname` varchar(100) default NULL COMMENT '站点简称',
  `station_x` varchar(100) default NULL COMMENT '经度坐标',
  `station_y` varchar(100) default NULL COMMENT '纬度坐标',
  `station_description` varchar(100) default NULL COMMENT '站点描述',
  PRIMARY KEY  ( `station_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
