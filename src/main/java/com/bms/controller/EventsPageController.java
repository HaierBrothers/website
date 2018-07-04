package com.bms.controller;

import com.bms.entity.Cryptocurrency;
import com.bms.entity.EventDay;
import com.bms.entity.EventMonth;
import com.bms.mapper.EventDayMapper;
import com.bms.mapper.EventMonthMapper;
import com.bms.util.BllConstantEnum;
import com.bms.util.RestModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class EventsPageController {

    @Autowired
    private EventMonthMapper eventMonthMapper;
    /**
     *  页面跳转
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/toEvents",method = RequestMethod.GET)
    public String toEvents(HttpServletRequest request, HttpServletResponse response){
        EventMonth eventMonth = new EventMonth();
        eventMonth.setMonth("12");
        eventMonth.setYear("2017");
        List<EventMonth> monthList = eventMonthMapper.selectAll();
        if(!CollectionUtils.isEmpty(monthList)){
            request.setAttribute("eventMonth",monthList.get(monthList.size()-1));
        }else{
            request.setAttribute("eventMonth",eventMonth);
        }
        request.setAttribute("monthList",monthList);
        return "events/events";
    }

    @RequestMapping(value = "/toAddEvents",method = RequestMethod.GET)
    public String toAddEvents(HttpServletRequest request, HttpServletResponse response){
        return "events/addEventMounts";
    }

    @RequestMapping(value = "/submitEventsMonth",method = RequestMethod.POST,produces = "application/json; charset=utf-8")
    @ResponseBody
    public RestModel submitEventsMonth(HttpServletRequest request, HttpServletResponse response){
        String year = request.getParameter("year");
        String month = request.getParameter("month");

        EventMonth selectEventMonth = new EventMonth();
        selectEventMonth.setYear(year);
        selectEventMonth.setMonth(month);
        List<EventMonth> result = eventMonthMapper.select(selectEventMonth);
        if(!CollectionUtils.isEmpty(result)){
            return RestModel.getRestModel(BllConstantEnum.RESCODE_0,"操作成功",result.get(0).getSid());
        }
        EventMonth eventMonth = new EventMonth();
        eventMonth.setYear(year);
        eventMonth.setMonth(month);
        int isSuccess = eventMonthMapper.insertUseGeneratedKeys(eventMonth);
        if(isSuccess>0){
            return RestModel.getRestModel(BllConstantEnum.RESCODE_0,"操作成功",eventMonth.getSid());
        }
        return RestModel.getRestModel(BllConstantEnum.RESCODE_10,"保存记录失败");
    }

    @RequestMapping(value = "/toAddEventsDays",method = RequestMethod.GET)
    public String toAddEventsDays(HttpServletRequest request){
        String dayId = request.getParameter("dayId");
        String monthId = request.getParameter("monthId");
        if(!StringUtils.isEmpty(monthId)){
            EventMonth eventMonth = new EventMonth();
            eventMonth.setSid(Long.valueOf(monthId));
            eventMonth= eventMonthMapper.selectByPrimaryKey(eventMonth);
            request.setAttribute("month",eventMonth.getMonth());
            request.setAttribute("year",eventMonth.getYear());
        }
        if(!StringUtils.isEmpty(dayId)){
            EventDay eventDay = new EventDay();
            eventDay.setSid(Long.parseLong(dayId));
            request.setAttribute("eventDay",eventDayMapper.selectByPrimaryKey(eventDay));
        }
        request.setAttribute("dayId",dayId);
        request.setAttribute("monthId",monthId);
        return "events/addEventDay";
    }

    @Autowired
    private EventDayMapper eventDayMapper;

    @RequestMapping(value = "/submitEventsDays",method = RequestMethod.POST,produces = "application/json; charset=utf-8")
    @ResponseBody
    public RestModel submitEventsDays(HttpServletRequest request, HttpServletResponse response){
        String sid = request.getParameter("dayId");
        String monthId = request.getParameter("monthId");
        String day = request.getParameter("day");
        String time = request.getParameter("time");
        String type = request.getParameter("type");
        String titleCn = request.getParameter("titleCn");
        String titleEn = request.getParameter("titleEn");
        String contentCn = request.getParameter("contentCn");
        String contentEn = request.getParameter("contentEn");
        String color = request.getParameter("color");
        String picUrl = request.getParameter("picUrl");

        EventDay eventDay = new EventDay();
        eventDay.setMonthId(Long.valueOf(monthId));
        eventDay.setDay(day);
        eventDay.setTime(time);
        eventDay.setType(Integer.valueOf(type));
        eventDay.setStatus(0);
        eventDay.setTitleCn(titleCn);
        eventDay.setTitleEn(titleEn);
        eventDay.setContentCn(contentCn);
        eventDay.setContentEn(contentEn);
        eventDay.setColor(color);
        eventDay.setPicUrl(picUrl);
        int isSuccess = 0;
        if(!StringUtils.isEmpty(sid)){
            eventDay.setSid(Long.parseLong(sid));
            isSuccess = eventDayMapper.updateByPrimaryKey(eventDay);
        }else{
            isSuccess = eventDayMapper.insertUseGeneratedKeys(eventDay);
        }
        if(isSuccess>0){
            return RestModel.getRestModel(BllConstantEnum.RESCODE_0,"操作成功");
        }
        return RestModel.getRestModel(BllConstantEnum.RESCODE_10,"保存记录失败");
    }

    @RequestMapping("/toDay")
    public String toDay(HttpServletRequest request){
        String monthId = request.getParameter("monthId");
        try {
            if(!StringUtils.isEmpty(monthId)){
                EventDay eventDay = new EventDay();
                eventDay.setMonthId(Long.valueOf(monthId));
                eventDay.setStatus(0);
                List<EventDay> eventDayList = eventDayMapper.select(eventDay);
                request.setAttribute("eventDayList",eventDayList);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return "events/toEventDay";
    }
    @RequestMapping(value = "/cancelDay",method = RequestMethod.POST,produces = "application/json; charset=utf-8")
    @ResponseBody
    public RestModel cancelDay(HttpServletRequest request){
        String dayId = request.getParameter("dayId");
        try {
            EventDay eventDay = new EventDay();
            eventDay.setSid(Long.parseLong(dayId));
            eventDay.setStatus(1);
            eventDayMapper.updateByPrimaryKeySelective(eventDay);
            return RestModel.getRestModel(BllConstantEnum.RESCODE_0,"操作成功",dayId);
        }catch (Exception e){
            e.printStackTrace();
            return RestModel.getRestModel(BllConstantEnum.RESCODE_10,"保存记录失败");
        }

    }
}