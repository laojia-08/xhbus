package com.jack.main.domain;

import java.io.Serializable;
import java.util.Date;

public class Station_info implements Serializable {
	
	private Integer station_id;//主键
	  
	private String station_fullname;//站点全称
	  
	private String station_shortname;//站点简称
	  
	private String station_x;//经度坐标
	  
	private String station_y;//纬度坐标
	  
	private String station_description;//站点描述
	  
	public Integer getStation_id() {
		 return station_id;
	}
	
	public void setStation_id(Integer station_id) {
		 this.station_id = station_id;
	}
	
	public String getStation_fullname() {
		 return station_fullname;
	}
	
	public void setStation_fullname(String station_fullname) {
		 this.station_fullname = station_fullname;
	}
	
	public String getStation_shortname() {
		 return station_shortname;
	}
	
	public void setStation_shortname(String station_shortname) {
		 this.station_shortname = station_shortname;
	}
	
	public String getStation_x() {
		 return station_x;
	}
	
	public void setStation_x(String station_x) {
		 this.station_x = station_x;
	}
	
	public String getStation_y() {
		 return station_y;
	}
	
	public void setStation_y(String station_y) {
		 this.station_y = station_y;
	}
	
	public String getStation_description() {
		 return station_description;
	}
	
	public void setStation_description(String station_description) {
		 this.station_description = station_description;
	}
	
}