package com.jack.main.action;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import com.core.code.action.BaseAction;
import com.core.code.util.Page;
import com.jack.main.domain.BusInfo;
import com.jack.main.service.BusInfoService;

@SuppressWarnings("serial")
@Controller
public class BusInfoAction extends BaseAction {

	private BusInfo busInfo;
	
	private Page pager;
	
	private int result;
	
	private String backurl;
	
	@Resource
	private BusInfoService busInfoService;

	public String index(){
		pager = busInfoService.search(pager);
		return "index";
	}
	
	public String add(){
		result = busInfoService.insert(busInfo);
		backurl = "busInfo/add.jsp";
		return "result-jsp";
	}
	
	public String delete(){
		result = busInfoService.delete(busInfo.getBus_id());
		return "result-json";
	}
	
	public String intoUpdate(){
		busInfo = busInfoService.searchById(busInfo.getBus_id());
		return "intoUpdate";
	}
	
	public String update(){
		result = busInfoService.update(busInfo);
		backurl = "front/busInfo_intoUpdate.action?busInfo.bus_id="+busInfo.getBus_id();
		return "result-jsp";
	}
	
	public BusInfo getBusInfo(){
		return busInfo;
	}
	public void setBusInfo(BusInfo busInfo){
		this.busInfo = busInfo;
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