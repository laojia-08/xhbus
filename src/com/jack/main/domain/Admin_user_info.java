package com.jack.main.domain;

import java.io.Serializable;
import java.util.Date;

public class Admin_user_info implements Serializable {
	
	private Integer user_id;//主键
	  
	private String user_loginname;//登录名
	  
	private String user_password;//密码
	  
	private String user_realname;//用户姓名
	  
	private String user_telephone;//联系方式
	  
	private String user_email;//用户邮箱
	  
	private Integer user_sex;//性别，1男，2女
	  
	public Integer getUser_id() {
		 return user_id;
	}
	
	public void setUser_id(Integer user_id) {
		 this.user_id = user_id;
	}
	
	public String getUser_loginname() {
		 return user_loginname;
	}
	
	public void setUser_loginname(String user_loginname) {
		 this.user_loginname = user_loginname;
	}
	
	public String getUser_password() {
		 return user_password;
	}
	
	public void setUser_password(String user_password) {
		 this.user_password = user_password;
	}
	
	public String getUser_realname() {
		 return user_realname;
	}
	
	public void setUser_realname(String user_realname) {
		 this.user_realname = user_realname;
	}
	
	public String getUser_telephone() {
		 return user_telephone;
	}
	
	public void setUser_telephone(String user_telephone) {
		 this.user_telephone = user_telephone;
	}
	
	public String getUser_email() {
		 return user_email;
	}
	
	public void setUser_email(String user_email) {
		 this.user_email = user_email;
	}
	
	public Integer getUser_sex() {
		 return user_sex;
	}
	
	public void setUser_sex(Integer user_sex) {
		 this.user_sex = user_sex;
	}
	
}