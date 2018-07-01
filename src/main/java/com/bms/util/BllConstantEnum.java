package com.bms.util;

public enum BllConstantEnum {

    /** * 操作成功 */
    RESCODE_0(0, "操作成功"),
    /** * 请求参数错误 */
    RESCODE_1(1009031,"号码预装能力接口：请求参数错误"),
    /** * 非法签名 */
    RESCODE_2(2,"非法签名"),
    /** * 系统编码无效 */
    RESCODE_3(1009032,"流量包能力平台：系统编码无效"),
    /** * 系统应用密钥未配置 */
    RESCODE_6(6,"系统应用密钥未配置"),
    RESCODE_7(1009033,"流量包能力平台：销售品未配置"),
    RESCODE_8(1009034,"流量包能力平台：订购产品未在白名单内"),
    /** * 服务器异常 */
    RESCODE_10(1009035,"号码预装能力接口：服务器异常!"),



    RESCODE_31(1022003,"号码预装能力接口：合作商订单号已存在"),
    RESCODE_32(1022102,"号码预装能力接口：主号号码格式错误"),
    RESCODE_33(1022006,"号码预装能力接口：一证五号校验未通过"),
    RESCODE_34(1022007,"号码预装能力接口：号码预占失败"),
    RESCODE_35(1022104,"号码预装能力接口：预装号格卡类型格式错误"),
    RESCODE_36(1022102,"号码预装能力接口：入参参数不合法"),
    RESCODE_37(1022006,"号码预装能力接口：一证五号校验未通过"),
    RESCODE_38(1022103,"号码预装能力接口：主号号码非空，预装手机号码为空"),
    RESCODE_39(1022101,"号码预装能力接口：预装手机号格式错误"),
    RESCODE_40(1022010,"号码预装能力接口：主号付费类型查询失败"),
    RESCODE_41(1022009,"号码预装能力接口：主号码未激活"),
    RESCODE_42(1022008,"号码预装能力接口：主号状态查询失败"),
    RESCODE_43(1022005,"号码预装能力接口：查询市编码与合作商所属省份不匹配"),
    RESCODE_44(1022004,"号码预装能力接口：未查到订单信息"),
    RESCODE_45(1022002,"号码预装能力接口：正式单下发失败"),
    RESCODE_46(1022001,"号码预装能力接口：校验单下发失败"),
    RESCODE_47(1022105,"号码预装能力接口：付费类型不是有效值"),
    RESCODE_48(1022106,"号码预装能力接口：主套餐NBR不能为空"),
    RESCODE_49(1022107,"号码预装能力接口：入网人信息不完整或格式错误"),
    RESCODE_50(1022108,"号码预装能力接口：收货人信息不完整或格式错误"),
    RESCODE_51(1022109,"号码预装能力接口：号码实占失败"),
    RESCODE_52(1022110,"号码预装能力接口：在途单未完成"),
    RESCODE_53(912, "证件姓名和证件号码不一致"),
    RESCODE_54(1022110, "第3方系统业务失败");
    /**
     * "获取自电商UERID信息失败!"
     "获取自电商邀请码信息失败!",
     "该系统渠道未配置销售品",
     */
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
        return BllConstantEnum.RESCODE_1;
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
