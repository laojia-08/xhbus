
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `attachment_info`
-- ----------------------------
DROP TABLE IF EXISTS `attachment_info`;
CREATE TABLE `attachment_info` (
  `attachment_id` int(11) NOT NULL auto_increment COMMENT '主键',
  `attachment_fullname` varchar(100) default NULL COMMENT '附件全称',
  `attachment_address` varchar(100) default NULL COMMENT '附件地址',
  `attachment_type` varchar(100) default NULL COMMENT '附件类型',
  `attachment_moudle` varchar(100) default NULL COMMENT '所属模块',
  PRIMARY KEY  ( `attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
