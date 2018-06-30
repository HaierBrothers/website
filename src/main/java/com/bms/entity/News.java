package com.bms.entity;

import tk.mybatis.mapper.annotation.KeySql;
import tk.mybatis.mapper.code.IdentityDialect;

import javax.persistence.*;
import java.util.Date;

@Table(name = "news",schema = "club")
public class News {
    @Id
    @KeySql(dialect = IdentityDialect.MYSQL, useGeneratedKeys = true)
    private Long sid;

    /**
     * 新闻排序
     */
    @Column(name = "news_sort")
    private Integer newsSort;

    /**
     * 图片地址
     */
    @Column(name = "pic_url")
    private String picUrl;

    /**
     * 标题
     */
    @Column(name = "title_cn")
    private String titleCn;

    /**
     * 内容
     */
    @Column(name = "content_cn")
    private String contentCn;

    /**
     * full_article 链接
     */
    @Column(name = "full_article")
    private String fullArticle;

    /**
     * website 链接
     */
    private String website;

    @Column(name = "update_time")
    private Date updateTime;

    /**
     * 外文
     */
    @Column(name = "title_en")
    private String titleEn;

    /**
     * 外文
     */
    @Column(name = "content_en")
    private String contentEn;

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
     * 获取新闻排序
     *
     * @return news_sort - 新闻排序
     */
    public Integer getNewsSort() {
        return newsSort;
    }

    /**
     * 设置新闻排序
     *
     * @param newsSort 新闻排序
     */
    public void setNewsSort(Integer newsSort) {
        this.newsSort = newsSort;
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

    /**
     * 获取标题
     *
     * @return title_cn - 标题
     */
    public String getTitleCn() {
        return titleCn;
    }

    /**
     * 设置标题
     *
     * @param titleCn 标题
     */
    public void setTitleCn(String titleCn) {
        this.titleCn = titleCn;
    }

    /**
     * 获取内容
     *
     * @return content_cn - 内容
     */
    public String getContentCn() {
        return contentCn;
    }

    /**
     * 设置内容
     *
     * @param contentCn 内容
     */
    public void setContentCn(String contentCn) {
        this.contentCn = contentCn;
    }

    /**
     * 获取full_article 链接
     *
     * @return full_article - full_article 链接
     */
    public String getFullArticle() {
        return fullArticle;
    }

    /**
     * 设置full_article 链接
     *
     * @param fullArticle full_article 链接
     */
    public void setFullArticle(String fullArticle) {
        this.fullArticle = fullArticle;
    }

    /**
     * 获取website 链接
     *
     * @return website - website 链接
     */
    public String getWebsite() {
        return website;
    }

    /**
     * 设置website 链接
     *
     * @param website website 链接
     */
    public void setWebsite(String website) {
        this.website = website;
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
     * 获取外文
     *
     * @return title_en - 外文
     */
    public String getTitleEn() {
        return titleEn;
    }

    /**
     * 设置外文
     *
     * @param titleEn 外文
     */
    public void setTitleEn(String titleEn) {
        this.titleEn = titleEn;
    }

    /**
     * 获取外文
     *
     * @return content_en - 外文
     */
    public String getContentEn() {
        return contentEn;
    }

    /**
     * 设置外文
     *
     * @param contentEn 外文
     */
    public void setContentEn(String contentEn) {
        this.contentEn = contentEn;
    }
}