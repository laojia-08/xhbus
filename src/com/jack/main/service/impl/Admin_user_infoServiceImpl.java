package com.jack.main.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.core.code.util.Page;
import com.jack.main.domain.Admin_user_info;
import com.jack.main.persistence.Admin_user_infoMapper;
import com.jack.main.service.Admin_user_infoService;

@Service("admin_user_infoService")
public class Admin_user_infoServiceImpl implements Admin_user_infoService {

	@Resource
	private Admin_user_infoMapper admin_user_infoMapper;
	
	public Admin_user_info searchById(Integer user_id){
		return admin_user_infoMapper.selectByPrimaryKey(user_id);
	}
	
	@Transactional
	public int insert(Admin_user_info admin_user_info) {
		return admin_user_infoMapper.insert(admin_user_info);
	}
	
	@Transactional
	public int update(Admin_user_info admin_user_info) {
		return admin_user_infoMapper.updateByPrimaryKey(admin_user_info);
	}
	
	@Transactional
	public int delete(Integer user_id){
		return admin_user_infoMapper.deleteByPrimaryKey(user_id);
	}
	
	public Page search(Page pager) {
		if(pager == null){
		  pager = new Page();
		}
		List<Admin_user_info> items = admin_user_infoMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

}