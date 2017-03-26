package com.jack.main.service;
import com.core.code.util.Page;
import com.jack.main.domain.BusInfo;

public interface BusInfoService {

	BusInfo searchById(Integer bus_id);
	
	Page search(Page pager);
	
	int insert(BusInfo busInfo);

	int update(BusInfo busInfo);
	
	int delete(Integer bus_id);
	
}