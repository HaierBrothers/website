package com.bms.controller;

import com.bms.entity.Cryptocurrency;
import com.bms.service.CryptocurrencyService;
import com.bms.util.OSSClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @author zhangguodong
 * @date 18/6/30 上午11:55
 */
@RequestMapping("cryptocurrency")
@Controller
public class CryptocurrencyController {

    @Autowired
    private OSSClientUtil ossClientUtil;

    @Autowired
    private CryptocurrencyService cryptocurrencyService;
    @RequestMapping("submitPage")
    public String submitPage(){
        return "";
    }


    @RequestMapping("submit")
    @ResponseBody
    public Map<String,String> submit(String logoNameCn,String logoNameEn ,String titleCn
            ,String titleEn,String contentCn,String contentEn,String website
            ,String logoUrl,String dialogLogoUrl){
        Map<String,String> result = new HashMap<>();

        try {
            Cryptocurrency cryptocurrency = new Cryptocurrency();
            cryptocurrency.setContentCn(contentCn);
            cryptocurrency.setContentEn(contentEn);
            cryptocurrency.setLogoNameCn(logoNameCn);
            cryptocurrency.setLogoNameEn(logoNameEn);
            cryptocurrency.setLogoUrl(logoUrl);
            cryptocurrency.setDialogLogoUrl(dialogLogoUrl);
            cryptocurrency.setTitleCn(titleCn);
            cryptocurrency.setTitleEn(titleEn);
            cryptocurrency.setWebsite(website);

            boolean isSuccess = cryptocurrencyService.insertOrUpdate(cryptocurrency);
            result.put("type",isSuccess?"success":"error");

        }catch (Exception e){
            e.printStackTrace();
            result.put("type","error");
        }
        return result;


    }
    @RequestMapping("getHis")
    public String getHis(HttpServletRequest request){
        List<Cryptocurrency> list = cryptocurrencyService.getAll();

        if(!CollectionUtils.isEmpty(list)){
            list = list.stream().sorted(Comparator.comparing(Cryptocurrency::getUpdateTime)).collect(Collectors.toList());
        }
        request.setAttribute("list",list);

        return "";
    }
}
