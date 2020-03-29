package com.naxian.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
    //日期转换格式
    public final static String PATTEREN = "yyyy.MM.dd";
    public final static String PATTEREN_ONE = "yyyy-MM-dd";
    public final static String PATTEREN_TWO = "yyyy-MM-dd-HH-mm-ss";


    /**
     * 字符串解析成日期
     * @param resoures
     * @param patteren
     * @return
     */
    public static Date stringToDate(String resoures, String patteren){
        DateFormat df =  new SimpleDateFormat(patteren);
        Date date = null;
        try {
             date = df.parse(resoures);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    /**
     * 日期转为字符串
     * @param date
     * @param patteren 日期转换格式
     * @return
     */
    public static String dateToString( Date date,String patteren) {
        DateFormat df =  new SimpleDateFormat(patteren);
        String dateStr = df.format(date);
        return dateStr;
    }

}
