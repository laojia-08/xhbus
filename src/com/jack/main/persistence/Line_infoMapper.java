package com.jack.main.persistence;

import java.util.List;
import com.core.code.util.Page;
import org.apache.ibatis.annotations.Param;
import com.jack.main.domain.Line_info;

public interface Line_infoMapper {
	
    int deleteByPrimaryKey(@Param(value = "line_id") Integer line_id);

    int insert(Line_info line_info);

    Line_info selectByPrimaryKey(@Param(value = "line_id") Integer line_id);

    int updateByPrimaryKey(Line_info line_info);

	List<Line_info> search(Page pager);
	
}