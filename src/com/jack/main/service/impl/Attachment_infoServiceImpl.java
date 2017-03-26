package com.jack.main.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.core.code.util.Page;
import com.jack.main.domain.Attachment_info;
import com.jack.main.persistence.Attachment_infoMapper;
import com.jack.main.service.Attachment_infoService;

@Service("attachment_infoService")
public class Attachment_infoServiceImpl implements Attachment_infoService {

	@Resource
	private Attachment_infoMapper attachment_infoMapper;
	
	public Attachment_info searchById(Integer attachment_id){
		return attachment_infoMapper.selectByPrimaryKey(attachment_id);
	}
	
	@Transactional
	public int insert(Attachment_info attachment_info) {
		return attachment_infoMapper.insert(attachment_info);
	}
	
	@Transactional
	public int update(Attachment_info attachment_info) {
		return attachment_infoMapper.updateByPrimaryKey(attachment_info);
	}
	
	@Transactional
	public int delete(Integer attachment_id){
		return attachment_infoMapper.deleteByPrimaryKey(attachment_id);
	}
	
	public Page search(Page pager) {
		if(pager == null){
		  pager = new Page();
		}
		List<Attachment_info> items = attachment_infoMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

}