package com.bms.util;

import java.io.Serializable;

public class RestModel implements Serializable{
    private long code;
    private String errorDescription = "";

    private Object dataObject = "";

    public long getCode() {
        return this.code;
    }

    public static RestModel getRestModel(long code, String desc) {
        RestModel m = new RestModel();
        m.setCode(code);
        m.setErrorDescription(desc);
        return m;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public String getErrorDescription() {
        return this.errorDescription;
    }

    public void setErrorDescription(String errorDescription) {
        this.errorDescription = errorDescription;
    }

    public static RestModel getResModel(long code, String desc, Object data) {
        RestModel rm = new RestModel();
        rm.setCode(code);
        rm.setErrorDescription(desc);
        rm.setDataObject(data);
        return rm;
    }

    public static String strToJson(String key, String val) {
        return "{\"" + key + "\":\"" + val + "\"}";
    }

    public Object getDataObject() {
        return this.dataObject;
    }

    public void setDataObject(Object dataObject) {
        this.dataObject = dataObject;
    }

    public String toString() {
        return "{\"code\":" + this.code + ",\"errorDescription\":\"" + this.errorDescription + "\",\"dataObject\":\""
                + this.dataObject + "\"}";
    }

    public String toSingleValue() {
        return "{\"code\":" + this.code + ",\"errorDescription\":\"" + this.errorDescription + "\",\"dataObject\":"
                + this.dataObject + "}";
    }




    /**
     * 匹配错误码
     */
    public static boolean isCode(RestModel restModel, BllConstantEnum bllConstantEnum) {
        if(restModel == null ) {
            return false;
        }
        if(bllConstantEnum.getCode() == restModel.getCode()) {
            return true;
        }
        return false;
    }

    /**
     * 判断Model是否是成功
     */
    public static boolean isSuccess(RestModel restModel) {
        if(restModel !=null && restModel.getCode() == 0) {
            return true;
        }else {
            return false;
        }
    }

    /**
     * 判断Model是否是成功
     */
    public static boolean isFail(RestModel restModel) {
        if(restModel !=null && restModel.getCode() == 0) {
            return false;
        }else {
            return true;
        }
    }
    /**
     * 获取成功Model
     */
    public static RestModel getRestModelByOk(){
        return getRestModel(BllConstantEnum.RESCODE_0, null);
    }
    /**
     * 获取成功Model
     */
    public static RestModel getRestModelByOk(Object data){
        return getRestModel(BllConstantEnum.RESCODE_0, data);
    }
    /**
     * 根据枚举生成RestModel
     */
    public static RestModel getRestModel(BllConstantEnum bllEnum, Object data) {
        return RestModel
                .getResModel(bllEnum.getCode(), bllEnum.getDesc(), data);
    }

    /**
     *
     * 根据枚举和[新描述]生成RestModel
     */
    public static RestModel getRestModel(BllConstantEnum bllEnum, String desc,
                                         Object data) {
        RestModel rm = new RestModel();
        rm.setCode(bllEnum.getCode());
        rm.setErrorDescription(desc);
        rm.setDataObject(data);
        return rm;
    }
    /**
     *
     * 根据枚举和[新描述]生成RestModel
     */
    public static RestModel getRestModelByAppendDesc(BllConstantEnum bllEnum, String desc,
                                                     Object data) {
        RestModel rm = new RestModel();
        rm.setCode(bllEnum.getCode());
        rm.setErrorDescription(bllEnum.getDesc()+desc);
        rm.setDataObject(data);
        return rm;
    }
}