package com.myit.action;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.myit.entity.Student;

@Controller
@RequestMapping("/student")
@SessionAttributes({"other"})
public class StudentAnnotation {
	@RequestMapping(value="/add.action")
	public ModelAndView add(Student student){
		System.out.println("调用StudentAnnotation类的==》add方法");
		student.setStuName("张三");
		return new ModelAndView("studentAnnotation");
	}
	@RequestMapping("/update.action")
	public String update(Student student,ModelMap map){
		System.out.println(student);
		map.put("other", "student");
		return "redirect:studentAnnotation.jsp";
	}
}
