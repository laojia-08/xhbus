package com.jack.main.persistence;

import java.util.List;
import com.core.code.util.Page;
import org.apache.ibatis.annotations.Param;
import com.jack.main.domain.Driver_info;

public interface Driver_infoMapper {
	
    int deleteByPrimaryKey(@Param(value = "dirver_id") Integer dirver_id);

    int insert(Driver_info driver_info);

    Driver_info selectByPrimaryKey(@Param(value = "dirver_id") Integer dirver_id);

    int updateByPrimaryKey(Driver_info driver_info);

	List<Driver_info> search(Page pager);
	
}