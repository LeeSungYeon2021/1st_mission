package com.wemb.mission.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class MainController {

	@RequestMapping(value = "/main")
	public String index() {
				
		return "index";
	}
}
