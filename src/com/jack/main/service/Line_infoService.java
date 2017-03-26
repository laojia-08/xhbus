package com.jack.main.service;
import com.core.code.util.Page;
import com.jack.main.domain.Line_info;

public interface Line_infoService {

	Line_info searchById(Integer line_id);
	
	Page search(Page pager);
	
	int insert(Line_info line_info);

	int update(Line_info line_info);
	
	int delete(Integer line_id);
	
}