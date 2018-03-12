package com.myit.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractCommandController;

import com.myit.entity.Student;

@SuppressWarnings("deprecation")
public class StudentAction extends AbstractCommandController {
	public StudentAction() {
		this.setCommandClass(Student.class);
	}

	@Override
	protected ModelAndView handle(HttpServletRequest request,
			HttpServletResponse response, Object command, BindException errors)
			throws Exception {
		System.out.println(command);
		Student student = (Student) command;
		student.setStuName("张三");
		return new ModelAndView("studentPage","student",student);
	}

}
