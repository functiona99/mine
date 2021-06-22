package org.yoo.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequiredArgsConstructor
@Controller
@RequestMapping("/request/*")
@Log4j
public class ReqController {
	
	@GetMapping(value="/list")
	public void list(Model model) {
	log.info("request list");
	}
	
	@GetMapping(value="/get")
	public void get(Model model) {
	log.info("request get");
	}
	
	@GetMapping(value="/listt")
	public void get() {
		log.info("list test");
	}
}
