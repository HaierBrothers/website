package com.bms.mapper;


import com.bms.base.CommonMapper;
import com.bms.entity.EventMonth;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface EventMonthMapper extends CommonMapper<EventMonth> {
    int insertOrUpdate(EventMonth eventMonth);

    List<EventMonth> getEventsMonths();
}