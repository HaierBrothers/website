package com.bms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;

/**
 * @author zhangguodong
 * @date 18/6/30 下午12:39
 */
@RequestMapping("event")
@Controller
public class EventController {

    @RequestMapping("addMonth")
    public Map<String,String> addMonth(){
        Map<String,String> result = new HashMap<>();
        try {

        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

}
