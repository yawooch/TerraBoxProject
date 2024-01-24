package com.tera.member.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	
	
	private String id;
	private String password;
	private String name;
	private String birth;
	private String phone;
	private String email;
	private String ssn;
	private String mkt;
	private String bnfts;
	private String manager;
	private Date dttm;
}
