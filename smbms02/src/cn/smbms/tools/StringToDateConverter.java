package cn.smbms.tools;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;
/**
 * 字符串类型转为日期类型
 * @author MDS
 *
 */
public class StringToDateConverter implements Converter<String, Date> {
	/**
	 * 日期格式
	 */
	private String pattern;

	public StringToDateConverter(String pattern) {
		this.pattern = pattern;
	}

	@Override
	public Date convert(String source) {
		try {
			return new SimpleDateFormat(pattern).parse(source);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

}
