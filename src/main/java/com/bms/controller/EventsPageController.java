package com.bms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @auther xinch
 * @create 2018/7/1 3:54
 */
@Controller
public class EventsPageController {

    /**
     *  页面跳转
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/toEvents",method = RequestMethod.GET)
    public String toLogin(HttpServletRequest request, HttpServletResponse response){
        return "events/events";
    }
}
