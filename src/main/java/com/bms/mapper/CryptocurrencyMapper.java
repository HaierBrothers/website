package com.bms.mapper;

import com.bms.base.CommonMapper;
import com.bms.entity.Cryptocurrency;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CryptocurrencyMapper extends CommonMapper<Cryptocurrency> {
}