package com.jack.main.action;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import com.core.code.action.BaseAction;
import com.core.code.util.Page;
import com.jack.main.domain.Station_info;
import com.jack.main.service.Station_infoService;

@SuppressWarnings("serial")
@Controller
public class Station_infoAction extends BaseAction {

	private Station_info station_info;
	
	private Page pager;
	
	private int result;
	
	private String backurl;
	
	@Resource
	private Station_infoService station_infoService;

	public String index(){
		pager = station_infoService.search(pager);
		return "index";
	}
	
	public String add(){
		result = station_infoService.insert(station_info);
		backurl = "station_info/add.jsp";
		return "result-jsp";
	}
	
	public String delete(){
		result = station_infoService.delete(station_info.getStation_id());
		return "result-json";
	}
	
	public String intoUpdate(){
		station_info = station_infoService.searchById(station_info.getStation_id());
		return "intoUpdate";
	}
	
	public String update(){
		result = station_infoService.update(station_info);
		backurl = "front/station_info_intoUpdate.action?station_info.station_id="+station_info.getStation_id();
		return "result-jsp";
	}
	
	public Station_info getStation_info(){
		return station_info;
	}
	public void setStation_info(Station_info station_info){
		this.station_info = station_info;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public Page getPager() {
		return pager;
	}
	public void setPager(Page pager) {
		this.pager = pager;
	}
	public String getBackurl() {
		return backurl;
	}
	public void setBackurl(String backurl) {
		this.backurl = backurl;
	}
}