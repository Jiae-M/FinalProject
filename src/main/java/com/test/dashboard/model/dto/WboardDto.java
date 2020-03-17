package com.test.dashboard.model.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("wboardDto")
public class WboardDto {
	private int wbtodono;
	private int wno ;
	private int dno; // 고유넘버(모든사람이 공통으로 가짐)
	private int dgno ; 
	private String wbtodo ; //Y : 한일 N : 해야 할 일 , 전체할일은 
	private String wbtitle ;
	private String wbcontent ;
	private String wfno_list;
	private Date wbstartdate;
	private Date wbenddate ;
	private String wbcolor ;
	

}