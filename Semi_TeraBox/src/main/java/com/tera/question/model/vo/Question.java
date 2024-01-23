package com.tera.question.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Question {

	private String questNo;
	private String questTitle;
	private String questContent;
	private String questPassNo;
	private String questPhone;
	private String questName;
	private String questDivsion;
	private String questEmail;
	private String questType;
	private String pictrFile;
	private int visitNum;
	private String rentalDate;
	private String rentalTime;
	private String memberId;
	private String lostCinemaId;
	private String cinemaId;
	private String answContent;
	private Date answRegDttm;
	private String answMemberId;

}
