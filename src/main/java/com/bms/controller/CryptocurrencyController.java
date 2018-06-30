package com.bms.controller;

import com.bms.util.OSSClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @author zhangguodong
 * @date 18/6/30 上午11:55
 */
@RequestMapping("cryptocurrency")
@Controller
public class CryptocurrencyController {

    @Autowired
    private OSSClientUtil ossClientUtil;

    @RequestMapping("submitPage")
    public String submitPage(){
        return "";
    }

    @RequestMapping("uploadLogo")
    public Map<String,String> submit(HttpServletRequest request){
        Map<String,String> result = new HashMap<>();
        try {
            String logoUrl = uploadPic(request);
            result.put("type","success");
            result.put("logoUrl",logoUrl);
        }catch (Exception e){
            e.printStackTrace();
            result.put("type","error");
        }
        return result;
    }
    private String uploadPic(HttpServletRequest request){
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
        return ossClientUtil.uploadImg2Oss(multipartHttpServletRequest.getFile("logo"));
    }
}
