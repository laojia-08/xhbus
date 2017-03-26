package com.jack.main.service;
import com.core.code.util.Page;
import com.jack.main.domain.Station_info;

public interface Station_infoService {

	Station_info searchById(Integer station_id);
	
	Page search(Page pager);
	
	int insert(Station_info station_info);

	int update(Station_info station_info);
	
	int delete(Integer station_id);
	
}