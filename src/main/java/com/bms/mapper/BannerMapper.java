package com.bms.mapper;


import com.bms.base.CommonMapper;
import com.bms.entity.Banner;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BannerMapper extends CommonMapper<Banner> {

    int insertOrUpdate(Banner banner);
}