package com.bms.entity;

import tk.mybatis.mapper.annotation.KeySql;
import tk.mybatis.mapper.code.IdentityDialect;

import javax.persistence.*;
import java.util.Date;

@Table(name = "banner",schema = "club")
public class Banner {
    @Id
    @KeySql(dialect = IdentityDialect.MYSQL, useGeneratedKeys = true)
    private Long sid;

    /**
     * banner图地址
     */
    @Column(name = "pic_url")
    private String picUrl;

    /**
     * 排序
     */
    @Column(name = "pic_sort")
    private Integer picSort;

    @Column(name = "create_time")
    private Date createTime;

    @Column(name = "update_time")
    private Date updateTime;

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
     * 获取banner图地址
     *
     * @return pic_url - banner图地址
     */
    public String getPicUrl() {
        return picUrl;
    }

    /**
     * 设置banner图地址
     *
     * @param picUrl banner图地址
     */
    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    /**
     * 获取排序
     *
     * @return pic_sort - 排序
     */
    public Integer getPicSort() {
        return picSort;
    }

    /**
     * 设置排序
     *
     * @param picSort 排序
     */
    public void setPicSort(Integer picSort) {
        this.picSort = picSort;
    }

    /**
     * @return create_time
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * @param createTime
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * @return update_time
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * @param updateTime
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}