package com.bms.base;

import tk.mybatis.mapper.additional.insert.InsertListMapper;
import tk.mybatis.mapper.common.*;

public interface CommonMapper<T> extends BaseMapper<T>,
        ExampleMapper<T>,
        ConditionMapper<T>,
        RowBoundsMapper<T>,
        IdsMapper<T>,
        InsertListMapper<T>,
        MyInsertUseGeneratedKeyMapper<T>,
        Marker{
}
