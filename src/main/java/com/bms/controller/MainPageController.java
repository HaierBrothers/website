package com.bms.controller;

import com.bms.base.RespMsg;
import com.bms.base.RespStatus;
import com.bms.controller.base.BaseController;
import com.bms.entity.Banner;
import com.bms.entity.Cryptocurrency;
import com.bms.entity.News;
import com.bms.service.BannerService;
import com.bms.service.CryptocurrencyService;
import com.bms.service.NewsService;
import com.bms.util.BllConstantEnum;
import com.bms.util.RestModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.util.stream.Collectors;

@Controller
@RequestMapping("mainPage")
public class MainPageController extends BaseController {
    @Autowired
    private BannerService bannerService;
    @Autowired
    private CryptocurrencyService cryptocurrencyService;

    @Autowired
    private NewsService newsService;
    @RequestMapping("list")
    public String list(HttpServletRequest request){
        List<Banner> bannerList = bannerService.getAllBanner();
        if(!CollectionUtils.isEmpty(bannerList)){
            bannerList = bannerList.stream().sorted(Comparator.comparing(Banner::getPicSort)).collect(Collectors.toList());
        }
        request.setAttribute("bannerList",bannerList);
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
    public RestModel  getBanner(HttpServletResponse response){
        setResponse(response);
        List<Banner> bannerList = bannerService.getAllBanner();
        if(!CollectionUtils.isEmpty(bannerList)){
            bannerList.stream().sorted(Comparator.comparing(Banner::getPicSort)).collect(Collectors.toList());
        }
        return RestModel.getRestModel(BllConstantEnum.RESCODE_0,"操作成功",bannerList);

    }

    @RequestMapping("getAllNews")
    @ResponseBody
    public RestModel getAllNews(HttpServletResponse response){
        setResponse(response);
        List<News> newsList = newsService.getAllNews();
        if(!CollectionUtils.isEmpty(newsList)){
            newsList.stream().sorted(Comparator.comparing(News::getNewsSort)).collect(Collectors.toList());
        }
        return RestModel.getRestModel(BllConstantEnum.RESCODE_0,"操作成功",newsList);
    }

    @RequestMapping("getAllCryptocurrencys")
    @ResponseBody
    public RespMsg<News> getAllCryptocurrencys(){
        List<Cryptocurrency> cryptocurrencies = cryptocurrencyService.getAll();
        if(!CollectionUtils.isEmpty(cryptocurrencies)){
            cryptocurrencies.stream().sorted(Comparator.comparing(Cryptocurrency::getCreateTime)).collect(Collectors.toList());
        }
        return RespMsg.buildSuccessRespMsg(cryptocurrencies);
    }

}
