package com.mission.plan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mission.plan.dao.PlanDao;
import com.mission.plan.vo.Plan;

@Service
public class PlanServiceImpl implements PlanService {

	@Autowired
	private PlanDao planDao;

	@Override
	public int planInsert(Plan plan) {
		// TODO Auto-generated method stub
		return planDao.planInsert(plan);
	}
	
	
	
}
