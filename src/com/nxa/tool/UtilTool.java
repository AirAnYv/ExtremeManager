package com.nxa.tool;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UtilTool {
	public static String getGBK(String name) {
		String result = "";
		try {
			result = new String(name.getBytes("iso-8859-1"), "gbk");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return result;
	}

	public static long getDate(String date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM--dd HH-mm-ss.S");
		// 解析成时间
		Date utilDate = null;
		long day = 0;
		try {
			utilDate = sdf.parse(date);
			Date nowDate = new Date();
			day = (nowDate.getTime() - utilDate.getTime())
					/ (24 * 60 * 60 * 1000);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return day;
	}
}
