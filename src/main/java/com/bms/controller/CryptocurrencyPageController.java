package com.bms.controller;

import com.bms.entity.Cryptocurrency;
import com.bms.service.CryptocurrencyService;
import com.bms.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 上传列表
 *
 * @auther xinch
 * @create 2018/7/1 3:56
 */
@Controller
public class CryptocurrencyPageController {
    @Autowired
    private OSSClientUtil ossClientUtil;
    @Autowired
    private CryptocurrencyService cryptocurrencyService;
    /**
     *  页面跳转
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/toCryptocurrency",method = RequestMethod.GET)
    public String toLogin(HttpServletRequest request, HttpServletResponse response){
        return "cryptocurrency/cryptocurrency";
    }

    @RequestMapping(value = "/submitCryptocurrency",method = RequestMethod.POST,produces = "application/json; charset=utf-8")
    @ResponseBody
    public RestModel submitCryptocurrency(HttpServletRequest request, HttpServletResponse response){
        String logoName = request.getParameter("logoName");
        String tital = request.getParameter("tital");
        String contents = request.getParameter("contents");
        String logoNameEn = request.getParameter("logoNameEn");
        String titalEn = request.getParameter("titalEn");
        String contentsEn = request.getParameter("contentsEn");
        String outWebsiteLink = request.getParameter("outWebsiteLink");
        String listLogoPath = request.getParameter("listLogoPath");
        String popupLogoPath = request.getParameter("popupLogoPath");

        Cryptocurrency cryptocurrency = new Cryptocurrency();
        cryptocurrency.setContentCn(contents);
        cryptocurrency.setContentEn(contentsEn);
        cryptocurrency.setLogoNameCn(logoName);
        cryptocurrency.setLogoNameEn(logoNameEn);
        cryptocurrency.setTitleCn(tital);
        cryptocurrency.setTitleEn(titalEn);
        cryptocurrency.setLogoUrl(listLogoPath);
        cryptocurrency.setDialogLogoUrl(popupLogoPath);
        cryptocurrency.setWebsite(outWebsiteLink);
        boolean isSuccess = cryptocurrencyService.insertOrUpdate(cryptocurrency);
        if(!isSuccess){
            return RestModel.getRestModel(BllConstantEnum.RESCODE_10,"保存记录失败");
        }
        return RestModel.getRestModel(BllConstantEnum.RESCODE_0,"操作成功");
    }
}
