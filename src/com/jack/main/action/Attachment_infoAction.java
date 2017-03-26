package com.jack.main.action;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import com.core.code.action.BaseAction;
import com.core.code.util.Page;
import com.jack.main.domain.Attachment_info;
import com.jack.main.service.Attachment_infoService;

@SuppressWarnings("serial")
@Controller
public class Attachment_infoAction extends BaseAction {

	private Attachment_info attachment_info;
	
	private Page pager;
	
	private int result;
	
	private String backurl;
	
	@Resource
	private Attachment_infoService attachment_infoService;

	public String index(){
		pager = attachment_infoService.search(pager);
		return "index";
	}
	
	public String add(){
		result = attachment_infoService.insert(attachment_info);
		backurl = "attachment_info/add.jsp";
		return "result-jsp";
	}
	
	public String delete(){
		result = attachment_infoService.delete(attachment_info.getAttachment_id());
		return "result-json";
	}
	
	public String intoUpdate(){
		attachment_info = attachment_infoService.searchById(attachment_info.getAttachment_id());
		return "intoUpdate";
	}
	
	public String update(){
		result = attachment_infoService.update(attachment_info);
		backurl = "front/attachment_info_intoUpdate.action?attachment_info.attachment_id="+attachment_info.getAttachment_id();
		return "result-jsp";
	}
	
	public Attachment_info getAttachment_info(){
		return attachment_info;
	}
	public void setAttachment_info(Attachment_info attachment_info){
		this.attachment_info = attachment_info;
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