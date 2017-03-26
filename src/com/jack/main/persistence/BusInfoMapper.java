package com.jack.main.persistence;

import java.util.List;
import com.core.code.util.Page;
import org.apache.ibatis.annotations.Param;
import com.jack.main.domain.BusInfo;

public interface BusInfoMapper {
	
    int deleteByPrimaryKey(@Param(value="bus_id")Integer bus_id);

    int insert(BusInfo busInfo);

    BusInfo selectByPrimaryKey(@Param(value="bus_id")Integer bus_id);

    int updateByPrimaryKey(BusInfo busInfo);

	List<BusInfo> search(Page pager);
	
}