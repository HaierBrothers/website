package com.bms.util;

import org.apache.commons.lang.StringUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

/**
 * @auther xinch
 * @create 2018/7/1 15:32
 */
public class UUIDUtils {


    private static int LAST_NID = 1;
    private static long LAST_TIME = 0;


    public static String getUUID() {
        //return UUID.randomUUID().toString().replaceAll("\\-", "");
        return getLongId();
    }


    public synchronized static String getLongId(){
        long a = System.currentTimeMillis();
        if(a==LAST_TIME){
            LAST_NID++;
        }
        else{
            LAST_NID = 1;
            LAST_TIME = a;
        }

        return new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date(a))+ StringUtils.leftPad(Integer.toString(LAST_NID), 3, "0");
    }

    public static String getGUID() {
        return UUID.randomUUID().toString().replaceAll("\\-", "");
    }


    public static String getUUID2() {
        return getTimeUUID();
    }
    public synchronized static String getTimeUUID(){
        long a = System.currentTimeMillis();
        if(a==LAST_TIME){
            LAST_NID++;
        }
        else{
            LAST_NID = 1;
            LAST_TIME = a;
        }

        return new SimpleDateFormat("yyyyMMddHHmmss").format(new Date(a))+StringUtils.leftPad(Integer.toString(LAST_NID), 3, "0");
    }

    private static final String randonLStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

    private static final String randonStr = "abcdefghijklmnopqrstuvwxyz";

    private static final String randonNum = "0123456789";

    /**
     *  生成随机字符串
     * @param strLength
     * @param enFlag
     * @return
     */
    public static String getRandomStr(int strLength, boolean enFlag) {
        Random random = new Random();
        StringBuffer sb = new StringBuffer();
        if (enFlag) {
            String str = randonNum + randonLStr + randonStr;
            for (int i = 0; i < strLength; i++) {
                int number = random.nextInt(str.length());
                sb.append(str.charAt(number));
            }
            return sb.toString();
        } else {
            for (int i = 0; i < strLength; i++) {
                int number = random.nextInt(randonNum.length());
                sb.append(randonNum.charAt(number));
            }
            return sb.toString();
        }
    }
}
