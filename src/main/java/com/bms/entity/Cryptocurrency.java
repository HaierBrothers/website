package com.bms.entity;

import tk.mybatis.mapper.annotation.KeySql;
import tk.mybatis.mapper.code.IdentityDialect;

import javax.persistence.*;
import java.util.Date;

@Table(name = "cryptocurrency",schema = "club")
public class Cryptocurrency {
    @Id
    @KeySql(dialect = IdentityDialect.MYSQL, useGeneratedKeys = true)
    private Long sid;

    /**
     * logo名字中文
     */
    @Column(name = "logo_name_cn")
    private String logoNameCn;

    /**
     * logo名字外文
     */
    @Column(name = "logo_name_en")
    private String logoNameEn;

    /**
     * 图片地址
     */
    @Column(name = "logo_url")
    private String logoUrl;

    /**
     * 标题中文
     */
    @Column(name = "title_cn")
    private String titleCn;

    /**
     * 标题外文
     */
    @Column(name = "title_en")
    private String titleEn;

    /**
     * 站外链接
     */
    private String website;

    @Column(name = "create_time")
    private Date createTime;

    @Column(name = "update_time")
    private Date updateTime;

    /**
     * 内容中文
     */
    @Column(name = "content_cn")
    private String contentCn;

    /**
     * 标题外文
     */
    @Column(name = "content_en")
    private String contentEn;

    @Column(name = "dialog_logo_url")
    private String dialogLogoUrl;

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
     * 获取logo名字中文
     *
     * @return logo_name_cn - logo名字中文
     */
    public String getLogoNameCn() {
        return logoNameCn;
    }

    /**
     * 设置logo名字中文
     *
     * @param logoNameCn logo名字中文
     */
    public void setLogoNameCn(String logoNameCn) {
        this.logoNameCn = logoNameCn;
    }

    /**
     * 获取logo名字外文
     *
     * @return logo_name_en - logo名字外文
     */
    public String getLogoNameEn() {
        return logoNameEn;
    }

    /**
     * 设置logo名字外文
     *
     * @param logoNameEn logo名字外文
     */
    public void setLogoNameEn(String logoNameEn) {
        this.logoNameEn = logoNameEn;
    }

    /**
     * 获取标题中文
     *
     * @return title_cn - 标题中文
     */
    public String getTitleCn() {
        return titleCn;
    }

    /**
     * 设置标题中文
     *
     * @param titleCn 标题中文
     */
    public void setTitleCn(String titleCn) {
        this.titleCn = titleCn;
    }

    /**
     * 获取标题外文
     *
     * @return title_en - 标题外文
     */
    public String getTitleEn() {
        return titleEn;
    }

    /**
     * 设置标题外文
     *
     * @param titleEn 标题外文
     */
    public void setTitleEn(String titleEn) {
        this.titleEn = titleEn;
    }

    /**
     * 获取站外链接
     *
     * @return website - 站外链接
     */
    public String getWebsite() {
        return website;
    }

    /**
     * 设置站外链接
     *
     * @param website 站外链接
     */
    public void setWebsite(String website) {
        this.website = website;
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

    /**
     * 获取内容中文
     *
     * @return content_cn - 内容中文
     */
    public String getContentCn() {
        return contentCn;
    }

    /**
     * 设置内容中文
     *
     * @param contentCn 内容中文
     */
    public void setContentCn(String contentCn) {
        this.contentCn = contentCn;
    }

    /**
     * 获取标题外文
     *
     * @return content_en - 标题外文
     */
    public String getContentEn() {
        return contentEn;
    }

    /**
     * 设置标题外文
     *
     * @param contentEn 标题外文
     */
    public void setContentEn(String contentEn) {
        this.contentEn = contentEn;
    }

    public String getLogoUrl() {
        return logoUrl;
    }

    public void setLogoUrl(String logoUrl) {
        this.logoUrl = logoUrl;
    }

    public String getDialogLogoUrl() {
        return dialogLogoUrl;
    }

    public void setDialogLogoUrl(String dialogLogoUrl) {
        this.dialogLogoUrl = dialogLogoUrl;
    }
}