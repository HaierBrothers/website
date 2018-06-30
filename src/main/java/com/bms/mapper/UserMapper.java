package com.bms.mapper;

import com.bms.base.CommonMapper;
import com.bms.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper extends CommonMapper<User> {
}