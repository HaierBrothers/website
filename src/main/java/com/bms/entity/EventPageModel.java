package com.bms.entity;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class EventPageModel {

    private  String year;

    private String month;

    private LinkedHashMap<String,List<EventDay>> eventDayList;

    public LinkedHashMap<String, List<EventDay>> getEventDayList() {
        return eventDayList;
    }

    public void setEventDayList(LinkedHashMap<String, List<EventDay>> eventDayList) {
        this.eventDayList = eventDayList;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }
}
