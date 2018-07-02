package com.bms.entity;

import tk.mybatis.mapper.annotation.KeySql;
import tk.mybatis.mapper.code.IdentityDialect;

import javax.persistence.*;

@Table(name = "event_day",schema = "club")
public class EventDay {
    @Id
    @KeySql(dialect = IdentityDialect.MYSQL, useGeneratedKeys = true)
    private Long sid;

    @Column(name = "month_id")
    private Long monthId;

    /**
     * 日期 02
     */
    private String day;

    /**
     * 时间 09
     */
    private String time;

    /**
     * 类型 小文本:1;大文本:2;小图:3;大图:4
     */
    private Integer type;

    /**
     * 1删除;0正常
     */
    private Integer status;

    /**
     * 标题
     */
    private String titleCn;

    private String titleEn;

    /**
     * 颜色 1:红色;2:绿色;3:蓝色  颜色值
     */
    private String color;

    /**
     * 图片地址
     */
    @Column(name = "pic_url")
    private String picUrl;

    /**
     *  内容
     */
    private String contentCn;
    private String contentEn;

    private Integer row;

    private Integer col;

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
     * @return month_id
     */
    public Long getMonthId() {
        return monthId;
    }

    /**
     * @param monthId
     */
    public void setMonthId(Long monthId) {
        this.monthId = monthId;
    }

    /**
     * 获取日期 02
     *
     * @return day - 日期 02
     */
    public String getDay() {
        return day;
    }

    /**
     * 设置日期 02
     *
     * @param day 日期 02
     */
    public void setDay(String day) {
        this.day = day;
    }

    /**
     * 获取时间 09
     *
     * @return time - 时间 09
     */
    public String getTime() {
        return time;
    }

    /**
     * 设置时间 09
     *
     * @param time 时间 09
     */
    public void setTime(String time) {
        this.time = time;
    }

    /**
     * 获取类型 小文本:1;大文本:2;小图:3;大图:4
     *
     * @return type - 类型 小文本:1;大文本:2;小图:3;大图:4
     */
    public Integer getType() {
        return type;
    }

    /**
     * 设置类型 小文本:1;大文本:2;小图:3;大图:4
     *
     * @param type 类型 小文本:1;大文本:2;小图:3;大图:4
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * 获取1删除;0正常
     *
     * @return status - 1删除;0正常
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 设置1删除;0正常
     *
     * @param status 1删除;0正常
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    /**
     * 获取图片地址
     *
     * @return pic_url - 图片地址
     */
    public String getPicUrl() {
        return picUrl;
    }

    /**
     * 设置图片地址
     *
     * @param picUrl 图片地址
     */
    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }


    public Integer getRow() {
        return row;
    }

    public void setRow(Integer row) {
        this.row = row;
    }

    public Integer getCol() {
        return col;
    }

    public void setCol(Integer col) {
        this.col = col;
    }

    public String getTitleCn() {
        return titleCn;
    }

    public void setTitleCn(String titleCn) {
        this.titleCn = titleCn;
    }

    public String getTitleEn() {
        return titleEn;
    }

    public void setTitleEn(String titleEn) {
        this.titleEn = titleEn;
    }

    public String getContentCn() {
        return contentCn;
    }

    public void setContentCn(String contentCn) {
        this.contentCn = contentCn;
    }

    public String getContentEn() {
        return contentEn;
    }

    public void setContentEn(String contentEn) {
        this.contentEn = contentEn;
    }
}