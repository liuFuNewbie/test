package com.accp.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.accp.service.ProjectinfoService;

public class DomeTest {
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationCotext-mybatis.xml");
		ProjectinfoService projectinfoService = (ProjectinfoService) ctx.getBean("projectinfoService");
		try {
			System.out.println(projectinfoService.getProjectinfoCount(-1));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
