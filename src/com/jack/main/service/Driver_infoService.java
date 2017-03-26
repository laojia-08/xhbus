package com.jack.main.service;
import com.core.code.util.Page;
import com.jack.main.domain.Driver_info;

public interface Driver_infoService {

	Driver_info searchById(Integer dirver_id);
	
	Page search(Page pager);
	
	int insert(Driver_info driver_info);

	int update(Driver_info driver_info);
	
	int delete(Integer dirver_id);
	
}