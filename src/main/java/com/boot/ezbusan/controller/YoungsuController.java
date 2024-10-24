package com.boot.ezbusan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class YoungsuController {
	@RequestMapping("/youngsu")
	public String list(){
		return "youngsu";
	}
}
