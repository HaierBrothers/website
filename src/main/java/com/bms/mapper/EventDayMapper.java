package com.bms.mapper;


import com.bms.base.CommonMapper;
import com.bms.entity.EventDay;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EventDayMapper extends CommonMapper<EventDay> {
    int insertOrUpdate(EventDay eventDay);

}