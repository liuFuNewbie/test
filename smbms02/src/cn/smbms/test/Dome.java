package cn.smbms.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Dome {
	public static void main(String[] args) throws ParseException {
		SimpleDateFormat dfs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		Date begin = dfs.parse("2004-01-02 11:31:40.100");
		Date end = dfs.parse("2004-01-02 11:31:40.101");
		long between = (end.getTime() - begin.getTime()) / 1000;// 除以1000是为了转换成秒
		System.out.println(between);
		long min = between / 60;
		System.out.println(min);
	}
	private boolean noValue;
	public boolean isNoValue() {
		return noValue;
	}
	public void setNoValue(boolean noValue) {
		this.noValue = noValue;
	}
}
