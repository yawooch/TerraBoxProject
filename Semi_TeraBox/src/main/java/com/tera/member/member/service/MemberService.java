package com.tera.member.member.service;

import static com.tera.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;

import com.tera.member.member.dao.MemberDao;
import com.tera.member.model.vo.Member;

public class MemberService {

	/** 중복방지를 위해 메소드 생성 */
    public Member findMemberById(String userId) {
        
        Member member = null;
        
        Connection connection = getConnection();
        
        member = new MemberDao().findMemberById(connection, userId);
        
        close(connection);
        
        return member;
    }
    
	public Member login(String userId, String userPwd) {
        Member member = this.findMemberById(userId);
        
        if(member!=null && member.getPassword().equals(userPwd)){
            
            return member;
        }
        else {
            return null;
        }
	}

}
