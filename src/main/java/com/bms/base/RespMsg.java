package com.bms.base;

/**
 */
public class RespMsg<T> {


    public static String MSG_SUCCESS = "Success";
    public static String HINT_SUCCESS = "成功";
    public static String MSG_FAIL= "fail";
    public static String HINT_FAIL = "失败";

    public int code = 0;

    public String msg = null;

    public T data = null;

    public RespMsg() {
        this.code = RespStatus.OK.code();
    }

    public RespMsg(RespStatus respStatus) {
        this.code = respStatus.code();
        this.msg = respStatus.message();
    }

    public void setRespStatus(RespStatus respStatus) {
        this.code = respStatus.code();
        this.msg = respStatus.message();
    }

    public Boolean isOK() {
        return this.code == RespStatus.OK.code();
    }

    public RespMsg(RespStatus respStatus, String msg) {
        this(respStatus.code(), msg);
    }

    public RespMsg(int code) {
        this(code, null);
    }


    public RespMsg(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }
    public RespMsg(int code, String msg, T data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }


    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }




    public static RespMsg buildSuccessRespMsg(Object module){
        return new RespMsg(RespStatus.OK.code(),MSG_SUCCESS,module);
    }


    public static RespMsg buildFailedRespMsg(int failCode){
        return new RespMsg(failCode,MSG_FAIL,null);
    }

    public static RespMsg buildFailedRespMsg(int failCode,Object module){
        return new RespMsg(failCode, MSG_FAIL, module);
    }
}
