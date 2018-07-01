package com.bms.controller;

import com.bms.entity.Banner;
import com.bms.entity.Cryptocurrency;
import com.bms.service.BannerService;
import com.bms.util.BllConstantEnum;
import com.bms.util.RestModel;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * @auther xinch
 * @create 2018/7/1 19:48
 */
@Controller
public class BannerPageController {

    @Autowired
    private BannerService bannerService;

    @RequestMapping(value = "/submitBanner",method = RequestMethod.POST,produces = "application/json; charset=utf-8")
    @ResponseBody
    public RestModel submitBanner(HttpServletRequest request){
        String bannerUrl = request.getParameter("bannerUrl");
        String bannerSort = request.getParameter("bannerSort");

        Banner banner = new Banner();
        banner.setPicUrl(bannerUrl);
        if(!StringUtils.isEmpty(bannerSort))banner.setPicSort(Integer.valueOf(bannerSort));
        banner.setCreateTime(new Date());
        boolean isSuccess = bannerService.insertOrUpdate(banner);
        if(!isSuccess){
            return RestModel.getRestModel(BllConstantEnum.RESCODE_10,"保存记录失败");
        }
        return RestModel.getRestModel(BllConstantEnum.RESCODE_0,"操作成功");
    }
}
