package com.bms.util;

public enum BllConstantEnum {

    /** * 操作成功 */
    RESCODE_0(0, "操作成功"),
    RESCODE_10(1009035,"服务器异常!"),
    ;

    /**
     * 枚举的值
     * */
    private int code;

    /**
     * 枚举的中文描述
     * */
    private String desc;


    public static String getDesc(int code) {
        for (BllConstantEnum b : BllConstantEnum.values()) {
            if (b.code == code) {
                return b.desc;
            }
        }
        return "";
    }


    /**
     * 匹配提示码 未匹配的返回错误码1
     * @param code
     * @return
     */
    public static BllConstantEnum getBllConstantEnum(int code) {
        for (BllConstantEnum b : BllConstantEnum.values()) {
            if (b.code == code) {
                return b;
            }
        }
        return BllConstantEnum.RESCODE_10;
    }


    private BllConstantEnum(int code, String desc) {
        this.code = code;
        this.desc = desc;
    }


    public int getCode() {
        return code;
    }


    public void setCode(int code) {
        this.code = code;
    }


    public String getDesc() {
        return desc;
    }


    public void setDesc(String desc) {
        this.desc = desc;
    }
}
