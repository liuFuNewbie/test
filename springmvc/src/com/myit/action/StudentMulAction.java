package com.myit.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.myit.entity.Student;

public class StudentMulAction extends MultiActionController {
	public ModelAndView add(HttpServletRequest request,
			HttpServletResponse response, Student student) {
		System.out.println(student);
		student.setStuName("add");
		return new ModelAndView("studentPage","student",student);
	}
}
