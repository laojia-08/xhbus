package com.jack.main.domain;

import java.io.Serializable;
import java.util.Date;

public class Driver_info implements Serializable {
	
	private Integer dirver_id;//主键
	  
	private String dirver_name;//姓名
	  
	private Integer dirver_sex;//性别，1男，2女
	  
	private Date dirver_birthday;//出生日期
	  
	private Integer dirver_age;//年龄
	  
	private String dirver_telephone;//手机号码
	  
	private String dirver_weChat;//微信号
	  
	public Integer getDirver_id() {
		 return dirver_id;
	}
	
	public void setDirver_id(Integer dirver_id) {
		 this.dirver_id = dirver_id;
	}
	
	public String getDirver_name() {
		 return dirver_name;
	}
	
	public void setDirver_name(String dirver_name) {
		 this.dirver_name = dirver_name;
	}
	
	public Integer getDirver_sex() {
		 return dirver_sex;
	}
	
	public void setDirver_sex(Integer dirver_sex) {
		 this.dirver_sex = dirver_sex;
	}
	
	public Date getDirver_birthday() {
		 return dirver_birthday;
	}
	
	public void setDirver_birthday(Date dirver_birthday) {
		 this.dirver_birthday = dirver_birthday;
	}
	
	public Integer getDirver_age() {
		 return dirver_age;
	}
	
	public void setDirver_age(Integer dirver_age) {
		 this.dirver_age = dirver_age;
	}
	
	public String getDirver_telephone() {
		 return dirver_telephone;
	}
	
	public void setDirver_telephone(String dirver_telephone) {
		 this.dirver_telephone = dirver_telephone;
	}
	
	public String getDirver_weChat() {
		 return dirver_weChat;
	}
	
	public void setDirver_weChat(String dirver_weChat) {
		 this.dirver_weChat = dirver_weChat;
	}
	
}