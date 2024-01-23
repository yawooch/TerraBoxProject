package com.tera.member.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor //모든인자가들어가는 생성자
@NoArgsConstructor  //인자가없는생성자

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
	
	private Date joindate;
	
	
	
}
