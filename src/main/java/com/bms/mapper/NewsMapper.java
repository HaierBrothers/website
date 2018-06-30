package com.bms.mapper;


import com.bms.base.CommonMapper;
import com.bms.entity.News;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NewsMapper extends CommonMapper<News> {
    int insertOrUpdate(News news);
}