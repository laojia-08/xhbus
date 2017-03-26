package com.jack.main.service;
import com.core.code.util.Page;
import com.jack.main.domain.Attachment_info;

public interface Attachment_infoService {

	Attachment_info searchById(Integer attachment_id);
	
	Page search(Page pager);
	
	int insert(Attachment_info attachment_info);

	int update(Attachment_info attachment_info);
	
	int delete(Integer attachment_id);
	
}