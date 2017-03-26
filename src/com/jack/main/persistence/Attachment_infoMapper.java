package com.jack.main.persistence;

import java.util.List;
import com.core.code.util.Page;
import org.apache.ibatis.annotations.Param;
import com.jack.main.domain.Attachment_info;

public interface Attachment_infoMapper {
	
    int deleteByPrimaryKey(@Param(value = "attachment_id") Integer attachment_id);

    int insert(Attachment_info attachment_info);

    Attachment_info selectByPrimaryKey(@Param(value = "attachment_id") Integer attachment_id);

    int updateByPrimaryKey(Attachment_info attachment_info);

	List<Attachment_info> search(Page pager);
	
}