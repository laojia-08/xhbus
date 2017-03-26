package com.jack.main.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.core.code.util.Page;
import com.jack.main.domain.BusInfo;
import com.jack.main.persistence.BusInfoMapper;
import com.jack.main.service.BusInfoService;

@Service("busInfoService")
public class BusInfoServiceImpl implements BusInfoService {

	@Resource
	private BusInfoMapper busInfoMapper;
	
	public BusInfo searchById(Integer bus_id){
		return busInfoMapper.selectByPrimaryKey(bus_id);
	}
	
	@Transactional
	public int insert(BusInfo busInfo) {
		return busInfoMapper.insert(busInfo);
	}
	
	@Transactional
	public int update(BusInfo busInfo) {
		return busInfoMapper.updateByPrimaryKey(busInfo);
	}
	
	@Transactional
	public int delete(Integer bus_id){
		return busInfoMapper.deleteByPrimaryKey(bus_id);
	}
	
	public Page search(Page pager) {
		if(pager == null){
		  pager = new Page();
		}
		List<BusInfo> items = busInfoMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

}