package com.bms.entity;

import tk.mybatis.mapper.annotation.KeySql;
import tk.mybatis.mapper.code.IdentityDialect;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "event_month",schema = "club")
public class EventMonth {
    @Id
    @KeySql(dialect = IdentityDialect.MYSQL, useGeneratedKeys = true)
    private Long sid;

    /**
     * 月份2018-06
     */
    private String month;

    /**
     * @return sid
     */
    public Long getSid() {
        return sid;
    }

    /**
     * @param sid
     */
    public void setSid(Long sid) {
        this.sid = sid;
    }

    /**
     * 获取月份2018-06
     *
     * @return month - 月份2018-06
     */
    public String getMonth() {
        return month;
    }

    /**
     * 设置月份2018-06
     *
     * @param month 月份2018-06
     */
    public void setMonth(String month) {
        this.month = month;
    }
}