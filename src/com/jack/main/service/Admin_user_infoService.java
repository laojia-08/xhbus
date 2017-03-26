package com.jack.main.service;
import com.core.code.util.Page;
import com.jack.main.domain.Admin_user_info;

public interface Admin_user_infoService {

	Admin_user_info searchById(Integer user_id);
	
	Page search(Page pager);
	
	int insert(Admin_user_info admin_user_info);

	int update(Admin_user_info admin_user_info);
	
	int delete(Integer user_id);
	
}