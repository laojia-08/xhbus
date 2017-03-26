package com.jack.main.action;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import com.core.code.action.BaseAction;
import com.core.code.util.Page;
import com.jack.main.domain.Line_info;
import com.jack.main.service.Line_infoService;

@SuppressWarnings("serial")
@Controller
public class Line_infoAction extends BaseAction {

	private Line_info line_info;
	
	private Page pager;
	
	private int result;
	
	private String backurl;
	
	@Resource
	private Line_infoService line_infoService;

	public String index(){
		pager = line_infoService.search(pager);
		return "index";
	}
	
	public String add(){
		result = line_infoService.insert(line_info);
		backurl = "line_info/add.jsp";
		return "result-jsp";
	}
	
	public String delete(){
		result = line_infoService.delete(line_info.getLine_id());
		return "result-json";
	}
	
	public String intoUpdate(){
		line_info = line_infoService.searchById(line_info.getLine_id());
		return "intoUpdate";
	}
	
	public String update(){
		result = line_infoService.update(line_info);
		backurl = "front/line_info_intoUpdate.action?line_info.line_id="+line_info.getLine_id();
		return "result-jsp";
	}
	
	public Line_info getLine_info(){
		return line_info;
	}
	public void setLine_info(Line_info line_info){
		this.line_info = line_info;
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