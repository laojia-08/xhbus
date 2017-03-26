package com.jack.main.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.core.code.util.Page;
import com.jack.main.domain.Line_info;
import com.jack.main.persistence.Line_infoMapper;
import com.jack.main.service.Line_infoService;

@Service("line_infoService")
public class Line_infoServiceImpl implements Line_infoService {

	@Resource
	private Line_infoMapper line_infoMapper;
	
	public Line_info searchById(Integer line_id){
		return line_infoMapper.selectByPrimaryKey(line_id);
	}
	
	@Transactional
	public int insert(Line_info line_info) {
		return line_infoMapper.insert(line_info);
	}
	
	@Transactional
	public int update(Line_info line_info) {
		return line_infoMapper.updateByPrimaryKey(line_info);
	}
	
	@Transactional
	public int delete(Integer line_id){
		return line_infoMapper.deleteByPrimaryKey(line_id);
	}
	
	public Page search(Page pager) {
		if(pager == null){
		  pager = new Page();
		}
		List<Line_info> items = line_infoMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

}