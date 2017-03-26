package com.jack.main.domain;

import java.io.Serializable;
import java.util.Date;

public class BusInfo implements Serializable {
	
	private Integer bus_id;//主键、自增
	  
	private String bus_number;//车牌号
	  
	private String bus_color;//车辆颜色
	  
	private Integer seat_count;//座位数
	  
	private String bus_fullname;//车辆全称
	  
	private String bus_shortname;//车辆简称
	  
	public Integer getBus_id() {
		 return bus_id;
	}
	
	public void setBus_id(Integer bus_id) {
		 this.bus_id = bus_id;
	}
	
	public String getBus_number() {
		 return bus_number;
	}
	
	public void setBus_number(String bus_number) {
		 this.bus_number = bus_number;
	}
	
	public String getBus_color() {
		 return bus_color;
	}
	
	public void setBus_color(String bus_color) {
		 this.bus_color = bus_color;
	}
	
	public Integer getSeat_count() {
		 return seat_count;
	}
	
	public void setSeat_count(Integer seat_count) {
		 this.seat_count = seat_count;
	}
	
	public String getBus_fullname() {
		 return bus_fullname;
	}
	
	public void setBus_fullname(String bus_fullname) {
		 this.bus_fullname = bus_fullname;
	}
	
	public String getBus_shortname() {
		 return bus_shortname;
	}
	
	public void setBus_shortname(String bus_shortname) {
		 this.bus_shortname = bus_shortname;
	}
	
}