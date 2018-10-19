package com.ealen.util;

import java.util.List;
import java.util.Map;

/**
 * Created by EalenXie on 2018/6/4 14:20
 * 自定义枚举单例对象 StringUtil
 */
public enum StringUtils {
    ;

    //是否为空
    public static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    //去空格
    public static String trim(String str) {
        return str == null ? null : str.trim();
    }

    //获取Map参数值
    public static String getMapString(Map<String, String> map) {
        StringBuilder result = new StringBuilder();
        for (Map.Entry entry : map.entrySet()) {
            result.append(entry.getValue()).append(" ");
        }
        return result.toString();
    }

    //获取List参数值
    public static String getListString(List<String> list) {
        StringBuilder result = new StringBuilder();
        for (String s : list) {
            result.append(s).append(" ");
        }
        return result.toString();
    }

}
