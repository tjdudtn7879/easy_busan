package com.boot.ezbusan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityController {
	@RequestMapping("/community")
	public String list(){
		return "community";
	}
}
