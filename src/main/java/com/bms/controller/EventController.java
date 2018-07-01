package com.bms.controller;

import com.bms.base.RespMsg;
import com.bms.base.RespStatus;
import com.bms.controller.req.AddEventDayReq;
import com.bms.entity.EventDay;
import com.bms.entity.EventMonth;
import com.bms.mapper.EventDayMapper;
import com.bms.mapper.EventMonthMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


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





}
