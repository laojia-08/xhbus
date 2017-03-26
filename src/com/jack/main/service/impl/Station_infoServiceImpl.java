package com.jack.main.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.core.code.util.Page;
import com.jack.main.domain.Station_info;
import com.jack.main.persistence.Station_infoMapper;
import com.jack.main.service.Station_infoService;

@Service("station_infoService")
public class Station_infoServiceImpl implements Station_infoService {

	@Resource
	private Station_infoMapper station_infoMapper;
	
	public Station_info searchById(Integer station_id){
		return station_infoMapper.selectByPrimaryKey(station_id);
	}
	
	@Transactional
	public int insert(Station_info station_info) {
		return station_infoMapper.insert(station_info);
	}
	
	@Transactional
	public int update(Station_info station_info) {
		return station_infoMapper.updateByPrimaryKey(station_info);
	}
	
	@Transactional
	public int delete(Integer station_id){
		return station_infoMapper.deleteByPrimaryKey(station_id);
	}
	
	public Page search(Page pager) {
		if(pager == null){
		  pager = new Page();
		}
		List<Station_info> items = station_infoMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

}