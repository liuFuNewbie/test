package com.myit.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentNoteAction {
	@RequestMapping("/studentNote.action")
	public String add(){
		System.out.println("StudentNoteAction==>Add");
		return "studentNoteAction";
	}
}
