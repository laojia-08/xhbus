package com.jack.main.persistence;

import java.util.List;
import com.core.code.util.Page;
import org.apache.ibatis.annotations.Param;
import com.jack.main.domain.Station_info;

public interface Station_infoMapper {
	
    int deleteByPrimaryKey(@Param(value = "station_id") Integer station_id);

    int insert(Station_info station_info);

    Station_info selectByPrimaryKey(@Param(value = "station_id") Integer station_id);

    int updateByPrimaryKey(Station_info station_info);

	List<Station_info> search(Page pager);
	
}