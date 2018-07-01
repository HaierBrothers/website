package com.bms.controller;

import com.bms.base.RespMsg;
import com.bms.base.RespStatus;
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
    public RespMsg submitBanner(Integer sort,String url){
        try {
            Banner banner = new Banner();
            banner.setPicSort(sort);
            banner.setPicUrl(url);
            bannerService.insertOrUpdate(banner);
        }catch (Exception e){
            return RespMsg.buildFailedRespMsg(RespStatus.INTERNAL_SERVER_ERROR.code());
        }
        return RespMsg.buildSuccessRespMsg(null);
    }

    @RequestMapping("submitNews")
    @ResponseBody
    public RespMsg submitNews(Integer sort,String titleEn,String titleCn,
                                         String contentEn,String contentCn,String bannerUrl,String fullArticle,String website ){
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
            newsService.insertOrUpdate(news);
        }catch (Exception e){
            e.printStackTrace();
            return RespMsg.buildFailedRespMsg(RespStatus.INTERNAL_SERVER_ERROR.code());
        }

        return RespMsg.buildSuccessRespMsg(null);

    }

    @RequestMapping("getAllBanner")
    @ResponseBody
    public RespMsg<Banner> getBanner(){
        List<Banner> bannerList = bannerService.getAllBanner();
        if(!CollectionUtils.isEmpty(bannerList)){
            bannerList.stream().sorted(Comparator.comparing(Banner::getPicSort)).collect(Collectors.toList());
        }
        return RespMsg.buildSuccessRespMsg(bannerList);
    }
}
