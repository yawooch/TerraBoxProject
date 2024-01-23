package com.tera.member.model.dao;


import static com.tera.common.jdbc.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tera.member.model.vo.Member;

public class MemberDao {

	//주어진 아이디로 회원정보를 가져온다.
	public Member findMemberById(Connection connection, String userId) {
        Member member          = null;
        PreparedStatement psmt = null;
        ResultSet rs           = null;
        String query           = "SELECT * FROM MEMBER WHERE MEMBER_ID=?";

        try
        {
            psmt = connection.prepareStatement(query);
            psmt.setString(1, userId);
            rs = psmt.executeQuery();
            if(rs.next()){
                member = new Member();
                
                member.setMemberId(rs.getString("MEMBER_ID"));
                member.setPassword(rs.getString("PASSWORD"));
                member.setMemberName(rs.getString("MEMBER_NAME"));
                member.setBirth(rs.getString("BIRTH"));
                member.setMemPhone(rs.getString("MEM_PHONE"));
                member.setMemEmail(rs.getString("MEM_EMAIL"));
                member.setMemSsn(rs.getString("MEM_SSN"));
                member.setMktAgreeYn(rs.getString("MKT_AGREE_YN"));
                member.setBnftsMedia(rs.getString("BNFTS_MEDIA"));
                member.setManagerYn(rs.getString("MANAGER_YN"));
                member.setJoinDttm(rs.getDate("JOIN_DTTM"));
            }
        }
        catch (SQLException e){e.printStackTrace();}
        finally 
        {
            close(rs);
            close(psmt);
        }
		return member;
	}

	public int insertMember(Connection connection, Member member) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO MEMBER VALUES (?,?,'김서하',NULL,NULL,?,NULL,'Y',NULL,DEFAULT,SYSDATE)";
		try {
			pstmt = connection.prepareStatement(query);
			
			pstmt.setString(1,member.getMemberId());
			pstmt.setString(2,member.getPassword());
			pstmt.setString(3, member.getMemEmail());
			
			result = pstmt.executeUpdate(); //업데이트된 행의 갯수
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}


}
