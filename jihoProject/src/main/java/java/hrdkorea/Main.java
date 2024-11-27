package java.hrdkorea;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Main {

	public static void main(String[] args) throws ParseException {
		// 현재날짜-simpleDateFormat으로 포맷정한 후 출력
		Date date=new Date();
		System.out.println(date);
		SimpleDateFormat sdf
		=new SimpleDateFormat("yyyy-MM-dd");
		String myformat=sdf.format(date);
		System.out.println(myformat);
		
		//내가 원하는 날짜(문자열날짜)
		// yyyyMMdd ->yyyy-MM-dd(20240501 ->2024-05-01)
		/* 
		String mywantdate="2024050111:20:20";
		 SimpleDateFormat sdf2
			=new SimpleDateFormat("yyyyMMddhh:mm:ss");
		 SimpleDateFormat sdf3
			=new SimpleDateFormat("yyyy-MM-dd");
		 Date date2=sdf2.parse(mywantdate);
		 String date3=sdf3.format(date2);
		 System.out.println(date3);
		 */
		 String mywantdate="2015-12-02 00:00:00";
		 SimpleDateFormat sdf2
			=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		 SimpleDateFormat sdf3
			=new SimpleDateFormat("yyyy-MM-dd");
		 Date date2=sdf2.parse(mywantdate);
		 String date3=sdf3.format(date2);
		 System.out.println(date3);
		 
		System.out.println(
		new SimpleDateFormat("yyyy-MM-dd").format(
		new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(
				"2015-12-02 00:00:00"))
		);
		 
	}

}
