package com.bms.controller;

import com.bms.base.RespMsg;
import com.bms.base.RespStatus;
import com.bms.util.OSSClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;

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
    public RespMsg upload(HttpServletRequest request){
        try {
            String logoUrl = uploadPic(request);
            return RespMsg.buildSuccessRespMsg(logoUrl);
        }catch (Exception e){
            e.printStackTrace();
            return RespMsg.buildFailedRespMsg(RespStatus.INTERNAL_SERVER_ERROR.code());
        }
    }

    private String uploadPic(HttpServletRequest request){
        //FIXME 文件上传之后访问路径未知
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
        return ossClientUtil.uploadImg2Oss(multipartHttpServletRequest.getFile("file"));
    }
}
