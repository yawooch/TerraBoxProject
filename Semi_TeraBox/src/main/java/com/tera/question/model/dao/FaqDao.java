package com.tera.question.model.dao;

import static com.tera.common.jdbc.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tera.question.model.vo.Faq;

public class FaqDao {

	public List<Faq> findAll(Connection connection) {
		List<Faq> list = new ArrayList<>();  //받아줘야하는게 리스트 타입인데 그중에 많이 사용하는게 어레이리스트 !
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		// 쿼리생성
		String query = "SELECT * FROM FAQ";
		
		try {
			pstmt = connection.prepareStatement(query);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Faq faq = new Faq();
						
				// faq 하나 하나가 한 행이 된다.
				
				faq.setFaqNo(rs.getString("FAQ_NO"));
				faq.setFaqTitle(rs.getString("FAQ_TITLE"));
				faq.setFaqContent(rs.getString("FAQ_CONTENT"));
				faq.setFaqCategory(rs.getString("FAQ_CATEGORY"));
				faq.setMemberId(rs.getString("MEMBER_ID"));
				System.out.println(faq);
				
				
				// list<Faq>로 받는다.
				list.add(faq);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {		
			//pstmt, rs 사용하고 클로즈까지.
			close(rs);
			close(pstmt);
		}
		
		return list;
	}
	
	
	
}
