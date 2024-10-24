package com.boot.ezbusan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QuestionController {
	
	@RequestMapping("/question")
	public String list(){
		return "question";
	}
}
