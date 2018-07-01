package com.bms.base;

/**
 */
public enum RespStatus {
    /**
     * 成功和失败
     */
    OK(1, "成功"),

    INTERNAL_SERVER_ERROR(500, "服务器异常");




    private int code;

    public void setMessage(String message) {
        this.message = message;
    }

    private String message;

    RespStatus(int code, String message) {
        this.code = code;
        this.message = message;
    }

    /**
     * Return the integer value of this status code.
     */
    public int code() {
        return this.code;
    }

    /**
     * Return the string value of this status message.
     */
    public String message() {
        return this.message;
    }

    public static RespStatus getEnumByKey(int key) {
        RespStatus[] enums = RespStatus.values();
        for (RespStatus em : enums) {
            if (em.code()== key) {
                return em;
            }
        }
        return null;
    }

}
