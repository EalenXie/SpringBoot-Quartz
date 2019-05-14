package com.ealen.util;

import java.util.List;

/**
 * Created by EalenXie on 2018/6/4 14:20
 * 自定义枚举单例对象 StringUtil
 */
public enum StringUtil {
    ;

    //获取List参数值
    public static String getListString(List<String> list) {
        StringBuilder result = new StringBuilder();
        for (String s : list) {
            result.append(s).append(" ");
        }
        return result.toString();
    }

}
