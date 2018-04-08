package cn.fostudio.temp;

import java.util.Calendar;

public class TempTrial {
	public static void main(String[] args) {
		Calendar c = Calendar.getInstance();
		System.out.println(c.getTime());
		int day= c.get(Calendar.DAY_OF_MONTH);
		System.out.println(day);
	}
}