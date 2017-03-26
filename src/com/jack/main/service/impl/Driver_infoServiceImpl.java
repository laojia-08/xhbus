package com.jack.main.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.core.code.util.Page;
import com.jack.main.domain.Driver_info;
import com.jack.main.persistence.Driver_infoMapper;
import com.jack.main.service.Driver_infoService;

@Service("driver_infoService")
public class Driver_infoServiceImpl implements Driver_infoService {

	@Resource
	private Driver_infoMapper driver_infoMapper;
	
	public Driver_info searchById(Integer dirver_id){
		return driver_infoMapper.selectByPrimaryKey(dirver_id);
	}
	
	@Transactional
	public int insert(Driver_info driver_info) {
		return driver_infoMapper.insert(driver_info);
	}
	
	@Transactional
	public int update(Driver_info driver_info) {
		return driver_infoMapper.updateByPrimaryKey(driver_info);
	}
	
	@Transactional
	public int delete(Integer dirver_id){
		return driver_infoMapper.deleteByPrimaryKey(dirver_id);
	}
	
	public Page search(Page pager) {
		if(pager == null){
		  pager = new Page();
		}
		List<Driver_info> items = driver_infoMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

}