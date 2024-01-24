package com.tera.question.model.service;

import java.sql.Connection;
import java.util.List;

import static com.tera.common.jdbc.JDBCTemplate.getConnection;
import static com.tera.common.jdbc.JDBCTemplate.close;

import com.tera.common.jdbc.JDBCTemplate;
import com.tera.common.util.PageInfo;
import com.tera.question.model.dao.FaqDao;
import com.tera.question.model.vo.Faq;

public class FaqService {

	public List<Faq> findAll(PageInfo pageInfo) {
		
		
		// 커넥션 생성
		
		Connection connection = getConnection();
		
		// dao 호출 
		
		List<Faq> list = new FaqDao().findAll(connection, pageInfo);
		// 호출한 dao에 커넥션을 전달해준다.
	
		
		
		close(connection);
		
		return list;
	}

	public int getFaqCount() {
		int count = 0;
		
		Connection connection = getConnection();
			
		count = new FaqDao().getFaqCount(connection);
		
		close(connection);		
		return count;
	}

	
	
	public int getCategoryCount(String category) {
		int count = 0;
		
		Connection connection = getConnection();

		count = new FaqDao().getCategoryCount(connection, category);
		
		close(connection);
		
		return count;
	}
	
	
	
	
	public List<Faq> findCategory(String category, PageInfo pageInfo) {
		
		Connection connection = getConnection();
		
		List<Faq> list = new FaqDao().findCategory(connection, category, pageInfo);
		
		close(connection);
		
		return list;
	}
	
	
	
	
	
	
	
	
}
