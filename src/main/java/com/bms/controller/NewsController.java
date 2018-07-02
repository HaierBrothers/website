package com.bms.controller;

import com.bms.entity.News;
import com.bms.service.NewsService;
import com.bms.util.BllConstantEnum;
import com.bms.util.RestModel;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class NewsController {

    @Autowired
    private NewsService newsService;

    /**
     *  页面跳转
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/toMainpage",method = RequestMethod.GET)
    public String toLogin(HttpServletRequest request, HttpServletResponse response){
        return "mainpage/mainpage";
    }

    @RequestMapping(value = "/submitNews",method = RequestMethod.POST,produces = "application/json; charset=utf-8")
    @ResponseBody
    public RestModel submitNews(HttpServletRequest request){
        String newsSort = request.getParameter("newsSort");
        String titleCn = request.getParameter("titleCn");
        String titleEn = request.getParameter("titleEn");
        String contentCn = request.getParameter("contentCn");
        String contentEn = request.getParameter("contentEn");
        String picUrl = request.getParameter("picUrl");
        String fullArticle = request.getParameter("fullArticle");
        String website = request.getParameter("website");

        News news = new News();
        news.setTitleCn(titleCn);
        news.setTitleEn(titleEn);
        news.setContentCn(contentCn);
        news.setContentEn(contentEn);
        if(!StringUtils.isEmpty(newsSort)) news.setNewsSort(Integer.valueOf(newsSort));
        news.setPicUrl(picUrl);
        news.setFullArticle(fullArticle);
        news.setWebsite(website);
        boolean isSuccess = newsService.insertOrUpdate(news);
        if(!isSuccess){
            return RestModel.getRestModel(BllConstantEnum.RESCODE_10,"保存记录失败");
        }
        return RestModel.getRestModel(BllConstantEnum.RESCODE_0,"操作成功");
    }
}
