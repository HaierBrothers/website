package com.bms.base;

import tk.mybatis.mapper.additional.insert.InsertListMapper;
import tk.mybatis.mapper.common.*;

/**
 * 统一Dao层接口
 *
 * @auther xinch
 * @create 2018/6/30 7:04
 */
public interface CommonMapper<T> extends BaseMapper<T>,
        ExampleMapper<T>,
        ConditionMapper<T>,
        RowBoundsMapper<T>,
        IdsMapper<T>,
        InsertListMapper<T>,
        MyInsertUseGeneratedKeyMapper<T>,
        Marker{
}
