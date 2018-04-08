package cn.fostudio.spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class SpringTrialMain {
	// 应用内容定义
	private static ApplicationContext context;

	public void Sysout() {
		// 用户主路径
		String path = System.getProperty("user.dir");
		// 获取conf路径
		context = new FileSystemXmlApplicationContext(path + "//conf//Beans.xml");
		// 得到xml中的zj配置
		Role zj = (Role) context.getBean("role");

		System.out.println(zj.getName());
		System.out.println(zj.getHeight());
		System.out.println("he is high? " + (zj.getIsHigh() ? "yes" : "no"));
	}
}