package com.mission.plan.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Plan {

	private int plan_no;
	private Date plan_enrollDate;
	private Date plan_startDate;
	private Date plan_endDate;
	private Date plan_updateDate;
	private String plan_title;
	private String plan_content;
	private String plan_select;
	
	
}
