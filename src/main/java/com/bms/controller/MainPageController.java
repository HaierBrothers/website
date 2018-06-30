package com.bms.controller;

import com.bms.entity.Banner;
import com.bms.entity.News;
import com.bms.service.BannerService;
import com.bms.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.*;
import java.util.stream.Collectors;

/**
 * @author zhangguodong
 * @date 18/6/30 上午11:08
 */
@Controller
@RequestMapping("mainPage")
public class MainPageController {
    @Autowired
    private BannerService bannerService;


    @Autowired
    private NewsService newsService;
    @RequestMapping("list")
    public String list(){
        List<Banner> bannerList = bannerService.getAllBanner();
        if(!CollectionUtils.isEmpty(bannerList)){
            bannerList = bannerList.stream().sorted(Comparator.comparing(Banner::getPicSort)).collect(Collectors.toList());
        }
        return "";
    }

    @RequestMapping("submitBanner")
    @ResponseBody
    public Map<String,String> submitBanner(Integer sort,String url){
        Map<String,String> result = new HashMap<>();
        try {
            Banner banner = new Banner();
            banner.setPicSort(sort);
            banner.setPicUrl(url);
            boolean isSuccess = bannerService.insertOrUpdate(banner);
            result.put("type",isSuccess?"success":"error");
        }catch (Exception e){
            result.put("type","error");
        }
        return result;
    }

    @RequestMapping("submitNews")
    @ResponseBody
    public Map<String,String> submitNews(Integer sort,String titleEn,String titleCn,
                                         String contentEn,String contentCn,String bannerUrl,String fullArticle,String website ){
        Map<String,String> result = new HashMap<>();
        try {

            News news = new News();
            news.setContentCn(contentCn);
            news.setContentEn(contentEn);
            news.setFullArticle(fullArticle);
            news.setNewsSort(sort);
            news.setPicUrl(bannerUrl);
            news.setTitleCn(titleCn);
            news.setTitleEn(titleEn);
            news.setWebsite(website);
            boolean isSuccess = newsService.insertOrUpdate(news);
            result.put("type",isSuccess?"success":"error");
        }catch (Exception e){
            e.printStackTrace();
            result.put("type","error");
        }

        return result;

    }
}
