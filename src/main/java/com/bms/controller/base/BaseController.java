package com.bms.controller.base;

import javax.servlet.http.HttpServletResponse;

public class BaseController {

    public static HttpServletResponse setResponse(HttpServletResponse response){
        //让浏览器用utf8来解析返回的数据
        response.setHeader("Content-type", "text/html;charset=UTF-8");
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        response.setHeader("Access-Control-Max-Age", "3600");
        response.setHeader("Access-Control-Allow-Headers", "x-requested-with");
        return response;
    }
}
