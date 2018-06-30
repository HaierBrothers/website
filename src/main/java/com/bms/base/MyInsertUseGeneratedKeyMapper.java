package com.bms.base;

import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Options;
import tk.mybatis.mapper.provider.SpecialProvider;

@tk.mybatis.mapper.annotation.RegisterMapper
public interface MyInsertUseGeneratedKeyMapper<T> {


    @Options(useGeneratedKeys = true, keyProperty = "sid")
    @InsertProvider(type = SpecialProvider.class, method = "dynamicSQL")
    int insertUseGeneratedKeys(T record);
}
