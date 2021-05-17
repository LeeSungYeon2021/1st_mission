package com.mission.plan.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mission.plan.vo.Plan;

@Mapper
public interface PlanDao {

	int planInsert(Plan plan);
}
