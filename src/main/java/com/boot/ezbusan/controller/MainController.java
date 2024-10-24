package com.boot.ezbusan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MainController {
	
	
	@RequestMapping("/main")
	public String list() {
		log.info("@# MainController list");
		
		return "main";
	}
	
	@RequestMapping("/result")
	public String result() {
        log.info("@# MainController result"); // 로그 추가
		return "result";
	}
}

