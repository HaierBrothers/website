package com.bms.controller;

import com.bms.util.OSSClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @author zhangguodong
 * @date 18/6/30 下午12:23
 */
@RequestMapping("upload")
@Controller
public class UploadController {
    @Autowired
    private OSSClientUtil ossClientUtil;

    @RequestMapping("upload")
    @ResponseBody
    public Map<String,String> upload(HttpServletRequest request){
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
        return ossClientUtil.uploadImg2Oss(multipartHttpServletRequest.getFile("file"));
    }
}
