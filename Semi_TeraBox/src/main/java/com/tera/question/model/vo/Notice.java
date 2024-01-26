package com.tera.question.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Notice {
	private String noticeNo;
	
	private String noticeTitle;
	
	private String noticeContent;
	
	private String noticeType;
	
	private Date noticeRegDate;
	
	private String cinemaId;
	
	private String cinemaArea;
}
