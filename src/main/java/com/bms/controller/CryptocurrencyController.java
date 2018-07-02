package com.bms.controller;

import com.bms.base.RespMsg;
import com.bms.base.RespStatus;
import com.bms.controller.req.CryptocurrencyReq;
import com.bms.entity.Cryptocurrency;
import com.bms.service.CryptocurrencyService;
import com.bms.util.BllConstantEnum;
import com.bms.util.RestModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author zhangguodong
 * @date 18/6/30 上午11:55
 */
@RequestMapping("cryptocurrency")
@Controller
public class CryptocurrencyController {

    @Autowired
    private CryptocurrencyService cryptocurrencyService;
    @RequestMapping("submitPage")
    public String submitPage(){
        return "";
    }


    @RequestMapping("submit")
    @ResponseBody
    public RespMsg submit(@RequestBody CryptocurrencyReq cryptocurrencyReq){

        try {
            Cryptocurrency cryptocurrency = new Cryptocurrency();
            cryptocurrency.setContentCn(cryptocurrencyReq.getContentCn());
            cryptocurrency.setContentEn(cryptocurrencyReq.getContentEn());
            cryptocurrency.setLogoNameCn(cryptocurrencyReq.getLogoNameCn());
            cryptocurrency.setLogoNameEn(cryptocurrencyReq.getLogoNameEn());
            cryptocurrency.setLogoUrl(cryptocurrencyReq.getLogoUrl());
            cryptocurrency.setDialogLogoUrl(cryptocurrencyReq.getDialogLogoUrl());
            cryptocurrency.setTitleCn(cryptocurrencyReq.getTitleCn());
            cryptocurrency.setTitleEn(cryptocurrencyReq.getTitleEn());
            cryptocurrency.setWebsite(cryptocurrencyReq.getWebsite());

            cryptocurrencyService.insertOrUpdate(cryptocurrency);
            return RespMsg.buildSuccessRespMsg(null);


        }catch (Exception e){
            e.printStackTrace();
            return RespMsg.buildFailedRespMsg(RespStatus.INTERNAL_SERVER_ERROR.code());
        }
    }
    @RequestMapping("getHis")
    public @ResponseBody
    RestModel getHis(HttpServletRequest request){
        List<Cryptocurrency> list = cryptocurrencyService.getAll();

        if(!CollectionUtils.isEmpty(list)){
            list = list.stream().sorted(Comparator.comparing(Cryptocurrency::getUpdateTime)).collect(Collectors.toList());
        }
        return RestModel.getRestModel(BllConstantEnum.RESCODE_0,"操作成功",list);
    }
}
