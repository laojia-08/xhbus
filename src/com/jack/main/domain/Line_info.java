package com.jack.main.domain;

import java.io.Serializable;
import java.util.Date;

public class Line_info implements Serializable {
	
	private Integer line_id;//主键
	  
	private String line_fullname;//路线全称
	  
	private String line_shortname;//路线简称
	  
	private Integer bus_id;//关联车辆
	  
	private Integer station_id;//关联站点
	  
	private Integer station_order;//站点序号
	  
	private String line_stationtime;//计划到站时间，格式：HH:mm:ss
	  
	public Integer getLine_id() {
		 return line_id;
	}
	
	public void setLine_id(Integer line_id) {
		 this.line_id = line_id;
	}
	
	public String getLine_fullname() {
		 return line_fullname;
	}
	
	public void setLine_fullname(String line_fullname) {
		 this.line_fullname = line_fullname;
	}
	
	public String getLine_shortname() {
		 return line_shortname;
	}
	
	public void setLine_shortname(String line_shortname) {
		 this.line_shortname = line_shortname;
	}
	
	public Integer getBus_id() {
		 return bus_id;
	}
	
	public void setBus_id(Integer bus_id) {
		 this.bus_id = bus_id;
	}
	
	public Integer getStation_id() {
		 return station_id;
	}
	
	public void setStation_id(Integer station_id) {
		 this.station_id = station_id;
	}
	
	public Integer getStation_order() {
		 return station_order;
	}
	
	public void setStation_order(Integer station_order) {
		 this.station_order = station_order;
	}
	
	public String getLine_stationtime() {
		 return line_stationtime;
	}
	
	public void setLine_stationtime(String line_stationtime) {
		 this.line_stationtime = line_stationtime;
	}
	
}