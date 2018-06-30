package com.bms.entity;

import tk.mybatis.mapper.annotation.KeySql;
import tk.mybatis.mapper.code.IdentityDialect;

import javax.persistence.*;
import java.util.Date;

@Table(name = "user",schema = "club")
public class User {
    /**
     * 主键
     */
    @Id
    @KeySql(dialect = IdentityDialect.MYSQL, useGeneratedKeys = true)
    private Long sid;

    /**
     * 用户名字
     */
    @Column(name = "user_name")
    private String userName;

    /**
     * 密码
     */
    @Column(name = "pass_word")
    private String passWord;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private Date createTime;

    /**
     * 0可用，1不可用
     */
    @Column(name = "status")
    private Integer status;
    @Column(name = "account")
    private String account;

    /**
     * 获取主键
     *
     * @return sid - 主键
     */
    public Long getSid() {
        return sid;
    }

    /**
     * 设置主键
     *
     * @param sid 主键
     */
    public void setSid(Long sid) {
        this.sid = sid;
    }

    /**
     * 获取用户名字
     *
     * @return user_name - 用户名字
     */
    public String getUserName() {
        return userName;
    }

    /**
     * 设置用户名字
     *
     * @param userName 用户名字
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * 获取密码
     *
     * @return pass_word - 密码
     */
    public String getPassWord() {
        return passWord;
    }

    /**
     * 设置密码
     *
     * @param passWord 密码
     */
    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    /**
     * 获取创建时间
     *
     * @return create_time - 创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置创建时间
     *
     * @param createTime 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取0可用，1不可用
     *
     * @return status - 0可用，1不可用
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 设置0可用，1不可用
     *
     * @param status 0可用，1不可用
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }
}