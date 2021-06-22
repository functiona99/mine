package org.yoo.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/upload/*")
@AllArgsConstructor
public class UploadController {
	
	@GetMapping("/upload")
	public void upload(Model model) {
		model.addAttribute("upload", "upload");
	}
	
	@GetMapping("/view")
	public void view(Model model) {
		
	}
	
	
}
