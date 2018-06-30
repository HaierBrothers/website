package com.bms.controller;

import com.bms.controller.req.AddEventDayReq;
import com.bms.entity.EventDay;
import com.bms.entity.EventMonth;
import com.bms.mapper.EventDayMapper;
import com.bms.mapper.EventMonthMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * @author zhangguodong
 * @date 18/6/30 下午12:39
 */
@RequestMapping("event")
@Controller
public class EventController {

    @Autowired
    private EventMonthMapper eventMonthMapper;
    @Autowired
    private EventDayMapper eventDayMapper;

    @RequestMapping("addMonth")
    @ResponseBody
    public Map<String,String> addMonth(@RequestParam String month){
        Map<String,String> result = new HashMap<>();
        try {

            EventMonth eventMonth = new EventMonth();
            eventMonth.setMonth(month);
            eventMonthMapper.insertUseGeneratedKeys(eventMonth);
            result.put("type","success");
            result.put("sid",eventMonth.getSid().toString());
        }catch (Exception e){
            e.printStackTrace();
            result.put("type","error");
        }
        return result;
    }

    @PostMapping("updateEventDay")
    @ResponseBody
    public Map<String,String> updateEventDay(@RequestBody AddEventDayReq addEventDayReq){
        Map<String,String> result = new HashMap<>();
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
            result.put("type","success");
            result.put("sid",eventDay.getSid().toString());

        }catch (Exception e){
            e.printStackTrace();
            result.put("type","error");
        }
        return result;
    }


    @RequestMapping("delEventDay")
    @ResponseBody
    public Map<String,String> delEventDay(Long sid){
        Map<String,String> result = new HashMap<>();
        try {
            EventDay eventDay = new EventDay();
            eventDay.setSid(sid);
            eventDay.setStatus(1);
            eventDayMapper.updateByPrimaryKeySelective(eventDay);
            result.put("type","success");
            result.put("sid",eventDay.getSid().toString());
        }catch (Exception e){
            e.printStackTrace();
            result.put("type","error");
        }
        return result;
    }





}
