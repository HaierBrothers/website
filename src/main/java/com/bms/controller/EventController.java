package com.bms.controller;

import com.bms.base.RespMsg;
import com.bms.base.RespStatus;
import com.bms.controller.base.BaseController;
import com.bms.controller.req.AddEventDayReq;
import com.bms.entity.Banner;
import com.bms.entity.EventDay;
import com.bms.entity.EventMonth;
import com.bms.entity.EventPageModel;
import com.bms.mapper.EventDayMapper;
import com.bms.mapper.EventMonthMapper;
import com.bms.util.BllConstantEnum;
import com.bms.util.RestModel;
import com.sun.org.apache.bcel.internal.generic.IF_ACMPEQ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.*;
import tk.mybatis.mapper.entity.Example;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.util.stream.Collectors;

@RequestMapping("event")
@Controller
public class EventController extends BaseController{

    @Autowired
    private EventMonthMapper eventMonthMapper;
    @Autowired
    private EventDayMapper eventDayMapper;

    @RequestMapping("addMonth")
    @ResponseBody
    public RespMsg addMonth(@RequestParam String month){
        try {
            EventMonth eventMonth = new EventMonth();
            eventMonth.setMonth(month);
            eventMonthMapper.insertUseGeneratedKeys(eventMonth);
            //返回月份主键，前端进行存储，保存的时候再传递回来
            return RespMsg.buildSuccessRespMsg(eventMonth.getSid());
        }catch (Exception e){
            e.printStackTrace();
            return RespMsg.buildFailedRespMsg(RespStatus.INTERNAL_SERVER_ERROR.code());
        }
    }

    /**如果传递了sid修改，如果没有新增**/
    @PostMapping("updateEventDay")
    @ResponseBody
    public RespMsg updateEventDay(@RequestBody AddEventDayReq addEventDayReq){
        try {
            EventDay eventDay = new EventDay();
            eventDay.setSid(addEventDayReq.getSid());
            eventDay.setColor(addEventDayReq.getColor());
            eventDay.setCol(addEventDayReq.getCol());
            eventDay.setDay(addEventDayReq.getDay());
            eventDay.setMonthId(addEventDayReq.getMonthId());
            eventDay.setPicUrl(addEventDayReq.getPicUrl());
            eventDay.setStatus(0);
            eventDay.setType(addEventDayReq.getType());
            eventDay.setTime(addEventDayReq.getTime());
            eventDay.setContentCn(addEventDayReq.getContentCn());
            eventDay.setContentEn(addEventDayReq.getContentEn());
            eventDay.setTitleCn(addEventDayReq.getTitleCn());
            eventDay.setTitleEn(addEventDayReq.getTitleEn());
            eventDay.setRow(addEventDayReq.getRow());
            if(null != eventDay.getSid()){
                eventDayMapper.updateByPrimaryKey(eventDay);
            }else{
                eventDayMapper.insertUseGeneratedKeys(eventDay);
            }
            //主键返回给前端，调用修改的时候传递过来
            return RespMsg.buildSuccessRespMsg(eventDay.getSid());


        }catch (Exception e){
            e.printStackTrace();
            return RespMsg.buildFailedRespMsg(RespStatus.INTERNAL_SERVER_ERROR.code());
        }
    }


    @RequestMapping("delEventDay")
    @ResponseBody
    public RespMsg delEventDay(Long sid){
        try {
            EventDay eventDay = new EventDay();
            eventDay.setSid(sid);
            eventDay.setStatus(1);
            eventDayMapper.updateByPrimaryKeySelective(eventDay);
            return RespMsg.buildSuccessRespMsg(eventDay.getSid());

        }catch (Exception e){
            e.printStackTrace();
            return RespMsg.buildFailedRespMsg(RespStatus.INTERNAL_SERVER_ERROR.code());
        }
    }

    @RequestMapping("getEvents")
    @ResponseBody
    public RestModel getEvents(HttpServletRequest request, HttpServletResponse response){
        setResponse(response);
        List<EventMonth> eventMonthList = eventMonthMapper.getEventsMonths();
        if(CollectionUtils.isEmpty(eventMonthList)){
            return RestModel.getRestModel(BllConstantEnum.RESCODE_10,"获取月份失败");
        }
        List<EventPageModel> eventDayList = new LinkedList<>();
        for (EventMonth month:eventMonthList) {
            List<EventDay> eventDayLists = eventDayMapper.getEventsDayByMonth(month.getSid());
            if(CollectionUtils.isEmpty(eventDayLists)){
                continue;
            }
            EventPageModel model = new EventPageModel();
            model.setYear(month.getYear());
            model.setMonth(month.getMonth());
            LinkedHashMap<String,List<EventDay>> dayMaps = new LinkedHashMap<>();
            for (EventDay eventDay:eventDayLists ) {
                if(!CollectionUtils.isEmpty(dayMaps) && dayMaps.containsKey(eventDay.getDay())){
                    List<EventDay> tempDays =  dayMaps.get(eventDay.getDay());
                    tempDays.add(eventDay);
                }else{
                    List<EventDay>  days = new ArrayList<>();
                    days.add(eventDay);
                    dayMaps.put(eventDay.getDay(),days);
                }
            }
            model.setEventDayList(dayMaps);

            eventDayList.add(model);
        }

        return RestModel.getRestModel(BllConstantEnum.RESCODE_0,"操作成功",eventDayList);

    }



}
