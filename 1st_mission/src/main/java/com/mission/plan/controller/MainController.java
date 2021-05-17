package com.mission.plan.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mission.plan.service.PlanService;
import com.mission.plan.vo.Plan;





@Controller
public class MainController {

	private final Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private PlanService planService;
	
	@RequestMapping(value = "/main")
	public String index() {
				
		return "index";
	}
	
	@RequestMapping(value = "/plan_enroll")
	public void planEnroll(Plan plan) {
				log.info("들어왔니 ? : {} ",plan);
				int result = planService.planInsert(plan);
		
	}
}
