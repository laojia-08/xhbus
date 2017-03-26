
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_user_info`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_info`;
CREATE TABLE `admin_user_info` (
  `user_id` int(11) NOT NULL auto_increment COMMENT '主键',
  `user_loginname` varchar(100) default NULL COMMENT '登录名',
  `user_password` varchar(100) default NULL COMMENT '密码',
  `user_realname` varchar(100) default NULL COMMENT '用户姓名',
  `user_telephone` varchar(100) default NULL COMMENT '联系方式',
  `user_email` varchar(100) default NULL COMMENT '用户邮箱',
  `user_sex` int(11) default NULL COMMENT '性别，1男，2女',
  PRIMARY KEY  ( `user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
