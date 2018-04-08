package cn.fostudio.spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class SpringTrialMain {
	// Ӧ�����ݶ���
	private static ApplicationContext context;

	public void Sysout() {
		// �û���·��
		String path = System.getProperty("user.dir");
		// ��ȡconf·��
		context = new FileSystemXmlApplicationContext(path + "//conf//Beans.xml");
		// �õ�xml�е�zj����
		Role zj = (Role) context.getBean("role");

		System.out.println(zj.getName());
		System.out.println(zj.getHeight());
		System.out.println("he is high? " + (zj.getIsHigh() ? "yes" : "no"));
	}
}