package cybersoft.javabackend.java14.crm.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConverter {

	public static java.sql.Date convertStringToDateInSql(String date) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date newDate = null;
		try {
			newDate = formatter.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		java.sql.Date dateSql = new java.sql.Date(newDate.getTime());
		return dateSql;
	}
}
