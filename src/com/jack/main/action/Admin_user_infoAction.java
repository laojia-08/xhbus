package com.jack.main.action;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import com.core.code.action.BaseAction;
import com.core.code.util.Page;
import com.jack.main.domain.Admin_user_info;
import com.jack.main.service.Admin_user_infoService;

@SuppressWarnings("serial")
@Controller
public class Admin_user_infoAction extends BaseAction {

	private Admin_user_info admin_user_info;
	
	private Page pager;
	
	private int result;
	
	private String backurl;
	
	@Resource
	private Admin_user_infoService admin_user_infoService;

	public String index(){
		pager = admin_user_infoService.search(pager);
		return "index";
	}
	
	public String add(){
		result = admin_user_infoService.insert(admin_user_info);
		backurl = "admin_user_info/add.jsp";
		return "result-jsp";
	}
	
	public String delete(){
		result = admin_user_infoService.delete(admin_user_info.getUser_id());
		return "result-json";
	}
	
	public String intoUpdate(){
		admin_user_info = admin_user_infoService.searchById(admin_user_info.getUser_id());
		return "intoUpdate";
	}
	
	public String update(){
		result = admin_user_infoService.update(admin_user_info);
		backurl = "front/admin_user_info_intoUpdate.action?admin_user_info.user_id="+admin_user_info.getUser_id();
		return "result-jsp";
	}
	
	public Admin_user_info getAdmin_user_info(){
		return admin_user_info;
	}
	public void setAdmin_user_info(Admin_user_info admin_user_info){
		this.admin_user_info = admin_user_info;
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