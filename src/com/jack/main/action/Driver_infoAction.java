package com.jack.main.action;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import com.core.code.action.BaseAction;
import com.core.code.util.Page;
import com.jack.main.domain.Driver_info;
import com.jack.main.service.Driver_infoService;

@SuppressWarnings("serial")
@Controller
public class Driver_infoAction extends BaseAction {

	private Driver_info driver_info;
	
	private Page pager;
	
	private int result;
	
	private String backurl;
	
	@Resource
	private Driver_infoService driver_infoService;

	public String index(){
		pager = driver_infoService.search(pager);
		return "index";
	}
	
	public String add(){
		result = driver_infoService.insert(driver_info);
		backurl = "driver_info/add.jsp";
		return "result-jsp";
	}
	
	public String delete(){
		result = driver_infoService.delete(driver_info.getDirver_id());
		return "result-json";
	}
	
	public String intoUpdate(){
		driver_info = driver_infoService.searchById(driver_info.getDirver_id());
		return "intoUpdate";
	}
	
	public String update(){
		result = driver_infoService.update(driver_info);
		backurl = "front/driver_info_intoUpdate.action?driver_info.dirver_id="+driver_info.getDirver_id();
		return "result-jsp";
	}
	
	public Driver_info getDriver_info(){
		return driver_info;
	}
	public void setDriver_info(Driver_info driver_info){
		this.driver_info = driver_info;
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