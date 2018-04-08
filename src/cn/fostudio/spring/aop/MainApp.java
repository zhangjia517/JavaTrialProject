package cn.fostudio.spring.aop;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class MainApp {
	private static ApplicationContext context;

	public static void main(String[] args) {
		// �û���·��
		String path = System.getProperty("user.dir");
		// ��ȡconf·��
		context = new FileSystemXmlApplicationContext(path + "//conf//AOP.xml");
		Student student = (Student) context.getBean("student");
		student.getName();
		student.getAge();
		// student.printThrowException();
	}
}