package com.bms.mapper;


import com.bms.base.CommonMapper;
import com.bms.entity.EventDay;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface EventDayMapper extends CommonMapper<EventDay> {
    int insertOrUpdate(EventDay eventDay);

    List<EventDay> getEventsDayByMonth(@Param("monthId") Long monthId);
}