package com.tera.member.model.service;

import static com.tera.common.jdbc.JDBCTemplate.commit;
import static com.tera.common.jdbc.JDBCTemplate.getConnection;
import static com.tera.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;

import com.tera.member.model.dao.MemberDao;
import com.tera.member.model.vo.Member;

public class MemberService {

	public int save(Member member) {
		int result = 0;
		
		Connection connection = getConnection();
		result = new MemberDao().insertMember(connection,member);
		
		if(result>0) {
			commit(connection);
		}else {
			rollback(connection);
		}
		
		return result;
	}

	public Member login(String userId, String userPwd) {
		// TODO Auto-generated method stub
		return null;
	}
}
