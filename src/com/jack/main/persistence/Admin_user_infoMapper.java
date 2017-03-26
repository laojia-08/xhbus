package com.jack.main.persistence;

import java.util.List;
import com.core.code.util.Page;
import org.apache.ibatis.annotations.Param;
import com.jack.main.domain.Admin_user_info;

public interface Admin_user_infoMapper {
	
    int deleteByPrimaryKey(@Param(value = "user_id") Integer user_id);

    int insert(Admin_user_info admin_user_info);

    Admin_user_info selectByPrimaryKey(@Param(value = "user_id") Integer user_id);

    int updateByPrimaryKey(Admin_user_info admin_user_info);

	List<Admin_user_info> search(Page pager);
	
}