package com.tera.movie.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Movie {
	private int no;
	
	private String korName;
	private String engName;
	private String poster;
	private String intro;
	private String type;
	private String director;
	private String genre;
	private String grade;
	private Date openDate;
	private String actors;
	
}
