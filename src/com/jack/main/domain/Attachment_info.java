package com.jack.main.domain;

import java.io.Serializable;
import java.util.Date;

public class Attachment_info implements Serializable {
	
	private Integer attachment_id;//主键
	  
	private String attachment_fullname;//附件全称
	  
	private String attachment_address;//附件地址
	  
	private String attachment_type;//附件类型
	  
	private String attachment_moudle;//所属模块
	  
	public Integer getAttachment_id() {
		 return attachment_id;
	}
	
	public void setAttachment_id(Integer attachment_id) {
		 this.attachment_id = attachment_id;
	}
	
	public String getAttachment_fullname() {
		 return attachment_fullname;
	}
	
	public void setAttachment_fullname(String attachment_fullname) {
		 this.attachment_fullname = attachment_fullname;
	}
	
	public String getAttachment_address() {
		 return attachment_address;
	}
	
	public void setAttachment_address(String attachment_address) {
		 this.attachment_address = attachment_address;
	}
	
	public String getAttachment_type() {
		 return attachment_type;
	}
	
	public void setAttachment_type(String attachment_type) {
		 this.attachment_type = attachment_type;
	}
	
	public String getAttachment_moudle() {
		 return attachment_moudle;
	}
	
	public void setAttachment_moudle(String attachment_moudle) {
		 this.attachment_moudle = attachment_moudle;
	}
	
}